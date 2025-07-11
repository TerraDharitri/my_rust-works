dharitri_sc::imports!();

use crate::contexts::storage_cache::{FarmContracTraitBounds, StorageCache};
use crate::farm_base_impl::base_traits_impl::FarmStakingWrapper;
use crate::farm_base_impl::exit_farm::InternalExitFarmResult;
use crate::tokens::token_attributes::LocalFarmToken;
use common_structs::{Epoch, PaymentsVec};
use farm::ExitFarmWithPartialPosResultType;
use fixed_supply_token::FixedSupplyToken;
use mergeable::Mergeable;

use crate::tokens::token_attributes::{StakingFarmTokenAttributes, UnbondSftAttributes};

pub struct UnstakeCommonNoTokenMintResultType<'a, C, T>
where
    C: FarmContracTraitBounds,
    T: Clone + TopEncode + TopDecode + NestedEncode + NestedDecode,
{
    pub base_rewards_payment: DcdtTokenPayment<C::Api>,
    pub original_attributes: StakingFarmTokenAttributes<C::Api>,
    pub exit_result: InternalExitFarmResult<'a, C, T>,
}

pub struct MultiUnstakeResultType<M: ManagedTypeApi> {
    pub base_rewards_payment: DcdtTokenPayment<M>,
    pub farming_tokens_payment: DcdtTokenPayment<M>,
    pub original_attributes: StakingFarmTokenAttributes<M>,
}

pub struct CreateUnbondTokenResult<M: ManagedTypeApi> {
    pub unbond_token: DcdtTokenPayment<M>,
    pub attributes: UnbondSftAttributes<M>,
}

#[dharitri_sc::module]
pub trait UnstakeFarmModule:
    crate::custom_rewards::CustomRewardsModule
    + crate::tokens::unbond_token::UnbondTokenModule
    + crate::rewards::RewardsModule
    + crate::config::ConfigModule
    + crate::events::EventsModule
    + token_send::TokenSendModule
    + crate::tokens::farm_token::FarmTokenModule
    + crate::tokens::request_id::RequestIdModule
    + permissions_module::PermissionsModule
    + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
    + crate::farm_base_impl::base_farm_validation::BaseFarmValidationModule
    + crate::farm_base_impl::exit_farm::BaseExitFarmModule
    + utils::UtilsModule
    + crate::tiered_rewards::read_config::ReadConfigModule
    + crate::tiered_rewards::total_tokens::TokenPerTierModule
    + crate::tiered_rewards::call_config::CallConfigModule
    + super::close_guild::CloseGuildModule
{
    #[payable("*")]
    #[endpoint(unstakeFarm)]
    fn unstake_farm(&self) -> ExitFarmWithPartialPosResultType<Self::Api> {
        let caller = self.blockchain().get_caller();
        let payments = self.get_non_empty_payments();
        let unstake_result = self.multi_unstake(&caller, &payments);

        self.require_over_min_stake(&caller);

        let unbond_token_amount = unstake_result.farming_tokens_payment.amount;
        self.call_decrease_total_staked_tokens(unbond_token_amount.clone());

        let min_unbond_epochs = self.get_min_unbond_epochs_user();
        let create_unbond_token_result = self.create_and_send_unbond_tokens(
            &caller,
            unbond_token_amount,
            Some(unstake_result.original_attributes.clone()),
            min_unbond_epochs,
        );

        self.emit_exit_farm_event(
            &caller,
            unstake_result.original_attributes,
            create_unbond_token_result.unbond_token.clone(),
            unstake_result.base_rewards_payment.clone(),
            StorageCache::new(self),
        );

        (
            create_unbond_token_result.unbond_token,
            unstake_result.base_rewards_payment,
        )
            .into()
    }

    fn unstake_farm_common_no_unbond_token_mint(
        &self,
        original_caller: ManagedAddress,
        payment: DcdtTokenPayment,
    ) -> UnstakeCommonNoTokenMintResultType<Self, StakingFarmTokenAttributes<Self::Api>> {
        let exit_result =
            self.exit_farm_base::<FarmStakingWrapper<Self>>(original_caller.clone(), payment);

        let original_attributes = exit_result.original_token_attributes.clone();
        let base_tokens_removed = original_attributes.get_initial_farming_tokens();
        self.remove_total_base_staked_tokens(&base_tokens_removed);
        self.remove_tokens(&original_caller, &original_attributes.get_total_supply());

        let reward_token_id = self.reward_token_id().get();
        let base_rewards_payment =
            DcdtTokenPayment::new(reward_token_id, 0, exit_result.rewards.clone());

        UnstakeCommonNoTokenMintResultType {
            base_rewards_payment,
            original_attributes,
            exit_result,
        }
    }

    fn multi_unstake(
        &self,
        caller: &ManagedAddress,
        payments: &PaymentsVec<Self::Api>,
    ) -> MultiUnstakeResultType<Self::Api> {
        let mut total_rewards = BigUint::zero();
        let mut total_farming_tokens = BigUint::zero();
        let mut opt_original_attributes = Option::<StakingFarmTokenAttributes<Self::Api>>::None;
        for payment in payments {
            let unstake_result =
                self.unstake_farm_common_no_unbond_token_mint(caller.clone(), payment);
            total_rewards += unstake_result.base_rewards_payment.amount;
            total_farming_tokens += unstake_result.exit_result.farming_token_payment.amount;

            match &mut opt_original_attributes {
                Some(attr) => attr.merge_with(unstake_result.original_attributes),
                None => opt_original_attributes = Some(unstake_result.original_attributes),
            }
        }

        let reward_token_id = self.reward_token_id().get();
        let reward_payment = DcdtTokenPayment::new(reward_token_id, 0, total_rewards);
        self.send_payment_non_zero(caller, &reward_payment);

        let farming_token_id = self.farming_token_id().get();
        let farming_tokens_payment =
            DcdtTokenPayment::new(farming_token_id, 0, total_farming_tokens);

        MultiUnstakeResultType {
            base_rewards_payment: reward_payment,
            farming_tokens_payment,
            original_attributes: unsafe { opt_original_attributes.unwrap_unchecked() },
        }
    }

    fn create_and_send_unbond_tokens(
        &self,
        to: &ManagedAddress,
        amount: BigUint,
        opt_original_attributes: Option<StakingFarmTokenAttributes<Self::Api>>,
        unbond_epochs: Epoch,
    ) -> CreateUnbondTokenResult<Self::Api> {
        let current_epoch = self.blockchain().get_block_epoch();
        let attributes = UnbondSftAttributes {
            unlock_epoch: current_epoch + unbond_epochs,
            opt_original_attributes,
            supply: amount.clone(),
        };
        let unbond_token = self
            .unbond_token()
            .nft_create_and_send(to, amount, &attributes);

        CreateUnbondTokenResult {
            unbond_token,
            attributes,
        }
    }
}
