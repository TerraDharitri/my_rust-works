dharitri_sc::imports!();

use common_structs::PaymentsVec;
use farm_staking::unbond_farm::ProxyTrait as _;
use farm_staking_proxy::proxy_actions::claim::ProxyTrait as _;
use farm_staking_proxy::proxy_actions::stake::ProxyTrait as _;
use farm_staking_proxy::proxy_actions::unstake::ProxyTrait as _;
use farm_staking_proxy::result_types::{ClaimDualYieldResult, StakeProxyResult, UnstakeResult};
use locked_token_wrapper::wrapped_token;

use crate::common::structs::{MetastakingState, WrappedMetastakingTokenAttributes};

#[dharitri_sc::module]
pub trait MetastakingActionsModule:
    read_external_storage::ReadExternalStorageModule
    + crate::external_sc_interactions::energy_dao_config::EnergyDAOConfigModule
    + crate::external_sc_interactions::locked_token_actions::LockedTokenModule
    + utils::UtilsModule
    + permissions_module::PermissionsModule
    + energy_query::EnergyQueryModule
    + lkmoa_transfer::energy_transfer::EnergyTransferModule
    + legacy_token_decode_module::LegacyTokenDecodeModule
    + wrapped_token::WrappedTokenModule
    + simple_lock::token_attributes::TokenAttributesModule
    + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
{
    fn call_enter_metastaking(
        &self,
        metastaking_address: ManagedAddress,
        lp_farm_tokens: PaymentsVec<Self::Api>,
    ) -> StakeProxyResult<Self::Api> {
        self.metastaking_proxy(metastaking_address)
            .stake_farm_tokens(OptionalValue::<ManagedAddress>::None)
            .with_multi_token_transfer(lp_farm_tokens)
            .execute_on_dest_context()
    }

    fn call_exit_metastaking(
        &self,
        metastaking_address: ManagedAddress,
        full_dual_yield_position: DcdtTokenPayment,
    ) -> UnstakeResult<Self::Api> {
        self.metastaking_proxy(metastaking_address)
            .unstake_farm_tokens(
                BigUint::from(1u64), // pair_first_token_min_amount
                BigUint::from(1u64), // pair_second_token_min_amount
                OptionalValue::<ManagedAddress>::None,
            )
            .with_dcdt_transfer(full_dual_yield_position)
            .execute_on_dest_context()
    }

    fn call_unbond_metastaking(
        &self,
        metastaking_address: ManagedAddress,
        unbond_position: DcdtTokenPayment,
    ) -> DcdtTokenPayment<Self::Api> {
        let staking_farm_address = self.get_staking_farm_address(metastaking_address);
        self.farm_staking_proxy(staking_farm_address)
            .unbond_farm()
            .with_dcdt_transfer(unbond_position)
            .execute_on_dest_context()
    }

    fn call_metastaking_claim(
        &self,
        metastaking_address: ManagedAddress,
        dual_yield_token: DcdtTokenPayment,
    ) -> ClaimDualYieldResult<Self::Api> {
        self.metastaking_proxy(metastaking_address)
            .claim_dual_yield_endpoint(OptionalValue::<ManagedAddress>::None)
            .with_dcdt_transfer(dual_yield_token)
            .execute_on_dest_context()
    }

    fn update_metastaking_after_claim(
        &self,
        initial_metastaking_state: &MetastakingState<Self::Api>,
        metastaking_state_mapper: &mut SingleValueMapper<MetastakingState<Self::Api>>,
        metastaking_token_supply_increase: &BigUint,
        new_dual_yield_token: &DcdtTokenPayment,
        lp_farm_rewards: DcdtTokenPayment,
        staking_rewards: DcdtTokenPayment,
        division_safety_constant: &BigUint,
    ) {
        let mut metastaking_state = metastaking_state_mapper.get();
        metastaking_state.dual_yield_amount = new_dual_yield_token.amount.clone();
        metastaking_state.dual_yield_token_nonce = new_dual_yield_token.token_nonce;

        if lp_farm_rewards.amount == 0 && staking_rewards.amount == 0 {
            metastaking_state.metastaking_token_supply += metastaking_token_supply_increase;
            metastaking_state_mapper.set(metastaking_state);
            return;
        }

        let (lp_farm_rps_increase, staking_rps_increase) = self.compute_metastaking_rps_increase(
            &lp_farm_rewards.amount,
            &staking_rewards.amount,
            &metastaking_state.metastaking_token_supply,
            division_safety_constant,
        );
        let new_lp_farm_rewards = if initial_metastaking_state.lp_farm_reward_reserve > 0 {
            let mut reward_payments = ManagedVec::new();
            let current_farm_rewards = DcdtTokenPayment::new(
                lp_farm_rewards.token_identifier.clone(),
                initial_metastaking_state.lp_farm_reward_token_nonce,
                initial_metastaking_state.lp_farm_reward_reserve.clone(),
            );
            reward_payments.push(lp_farm_rewards);
            reward_payments.push(current_farm_rewards);
            self.merge_locked_tokens(reward_payments)
        } else {
            lp_farm_rewards
        };

        // lp_farm_reward_reserve increases by merging the new rewards with the old position
        metastaking_state.lp_farm_reward_reserve = new_lp_farm_rewards.amount;
        metastaking_state.lp_farm_reward_token_nonce = new_lp_farm_rewards.token_nonce;
        metastaking_state.staking_reward_reserve += staking_rewards.amount;
        metastaking_state.lp_farm_rps += lp_farm_rps_increase;
        metastaking_state.staking_rps += staking_rps_increase;
        metastaking_state.metastaking_token_supply += metastaking_token_supply_increase;

        metastaking_state_mapper.set(metastaking_state);
    }

    fn compute_metastaking_rps_increase(
        &self,
        lp_farm_reward: &BigUint,
        staking_reward: &BigUint,
        metastaking_token_supply: &BigUint,
        division_safety_constant: &BigUint,
    ) -> (BigUint, BigUint) {
        if metastaking_token_supply == &0u64 {
            return (BigUint::zero(), BigUint::zero());
        }

        let user_lp_farm_reward =
            (lp_farm_reward * division_safety_constant) / metastaking_token_supply;
        let user_staking_reward =
            (staking_reward * division_safety_constant) / metastaking_token_supply;
        (user_lp_farm_reward, user_staking_reward)
    }

    fn compute_user_metastaking_rewards(
        &self,
        metastaking_state_mapper: &mut SingleValueMapper<MetastakingState<Self::Api>>,
        payment: &DcdtTokenPayment,
        division_safety_constant: &BigUint,
    ) -> (BigUint, BigUint) {
        if payment.amount == 0 {
            return (BigUint::zero(), BigUint::zero());
        }
        let metastaking_state = metastaking_state_mapper.get();
        let token_attributes: WrappedMetastakingTokenAttributes<Self::Api> =
            self.get_token_attributes(&payment.token_identifier, payment.token_nonce);
        let lp_farm_token_rps = token_attributes.lp_farm_token_rps;
        let staking_token_rps = token_attributes.staking_token_rps;

        let user_lp_farm_reward = if metastaking_state.lp_farm_rps > lp_farm_token_rps {
            let rps_diff = &metastaking_state.lp_farm_rps - &lp_farm_token_rps;
            &payment.amount * &rps_diff / division_safety_constant
        } else {
            BigUint::zero()
        };
        let user_staking_reward = if metastaking_state.staking_rps > staking_token_rps {
            let rps_diff = &metastaking_state.staking_rps - &staking_token_rps;
            &payment.amount * &rps_diff / division_safety_constant
        } else {
            BigUint::zero()
        };

        (user_lp_farm_reward, user_staking_reward)
    }

    #[proxy]
    fn metastaking_proxy(&self, sc_address: ManagedAddress)
        -> farm_staking_proxy::Proxy<Self::Api>;

    #[proxy]
    fn farm_staking_proxy(&self, sc_address: ManagedAddress) -> farm_staking::Proxy<Self::Api>;
}
