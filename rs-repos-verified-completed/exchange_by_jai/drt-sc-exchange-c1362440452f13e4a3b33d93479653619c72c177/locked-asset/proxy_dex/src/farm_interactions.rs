dharitri_sc::imports!();

use crate::farm_with_locked_rewards_proxy;
use farm::base_functions::ClaimRewardsResultWrapper;

pub struct EnterFarmResultWrapper<M: ManagedTypeApi> {
    pub farm_token: DcdtTokenPayment<M>,
    pub reward_token: DcdtTokenPayment<M>,
}

pub struct ExitFarmResultWrapper<M: ManagedTypeApi> {
    pub farming_tokens: DcdtTokenPayment<M>,
    pub reward_tokens: DcdtTokenPayment<M>,
}

#[dharitri_sc::module]
pub trait FarmInteractionsModule {
    fn call_enter_farm(
        &self,
        user: ManagedAddress,
        farm_address: ManagedAddress,
        farming_token_id: TokenIdentifier,
        farming_token_amount: BigUint,
    ) -> EnterFarmResultWrapper<Self::Api> {
        let enter_farm_result = self
            .tx()
            .to(&farm_address)
            .typed(farm_with_locked_rewards_proxy::FarmProxy)
            .enter_farm_endpoint(OptionalValue::Some(user))
            .single_dcdt(&farming_token_id, 0, &farming_token_amount)
            .returns(ReturnsResult)
            .sync_call();

        let (output_farm_token_payment, rewards_payment) = enter_farm_result.into_tuple();

        EnterFarmResultWrapper {
            farm_token: output_farm_token_payment,
            reward_token: rewards_payment,
        }
    }

    fn call_exit_farm(
        &self,
        user: ManagedAddress,
        farm_address: ManagedAddress,
        farm_token: DcdtTokenPayment,
    ) -> ExitFarmResultWrapper<Self::Api> {
        let raw_result = self
            .tx()
            .to(&farm_address)
            .typed(farm_with_locked_rewards_proxy::FarmProxy)
            .exit_farm_endpoint(OptionalValue::Some(user))
            .payment(farm_token)
            .returns(ReturnsResult)
            .sync_call();

        let (farming_tokens, reward_tokens) = raw_result.into_tuple();

        ExitFarmResultWrapper {
            farming_tokens,
            reward_tokens,
        }
    }

    fn call_claim_rewards_farm(
        &self,
        user: ManagedAddress,
        farm_address: ManagedAddress,
        farm_token: DcdtTokenPayment,
    ) -> ClaimRewardsResultWrapper<Self::Api> {
        let raw_result = self
            .tx()
            .to(&farm_address)
            .typed(farm_with_locked_rewards_proxy::FarmProxy)
            .claim_rewards_endpoint(OptionalValue::Some(user))
            .payment(farm_token)
            .returns(ReturnsResult)
            .sync_call();

        let (new_farm_token, rewards) = raw_result.into_tuple();

        ClaimRewardsResultWrapper {
            new_farm_token,
            rewards,
        }
    }
}
