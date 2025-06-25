dharitri_sc::imports!();

use common_structs::PaymentsVec;
use farm::{
    base_functions::{ExitFarmResultType, ExitFarmResultWrapper},
    EnterFarmResultType,
};

pub struct EnterFarmResultWrapper<M: ManagedTypeApi> {
    pub new_farm_token: DcdtTokenPayment<M>,
    pub rewards: DcdtTokenPayment<M>,
}

#[dharitri_sc::module]
pub trait FarmActionsModule {
    fn call_enter_farm(
        &self,
        farm_address: ManagedAddress,
        user: ManagedAddress,
        tokens: PaymentsVec<Self::Api>,
    ) -> EnterFarmResultWrapper<Self::Api> {
        let raw_results: EnterFarmResultType<Self::Api> = self
            .farm_proxy(farm_address)
            .enter_farm_endpoint(OptionalValue::Some(user))
            .with_multi_token_transfer(tokens)
            .execute_on_dest_context();

        let (new_farm_token, rewards) = raw_results.into_tuple();
        EnterFarmResultWrapper {
            new_farm_token,
            rewards,
        }
    }

    fn call_exit_farm(
        &self,
        farm_address: ManagedAddress,
        user: ManagedAddress,
        farm_tokens: DcdtTokenPayment,
    ) -> ExitFarmResultWrapper<Self::Api> {
        let raw_results: ExitFarmResultType<Self::Api> = self
            .farm_proxy(farm_address)
            .exit_farm_endpoint(OptionalValue::Some(user))
            .with_dcdt_transfer(farm_tokens)
            .execute_on_dest_context();
        let (farming_tokens, rewards) = raw_results.into_tuple();

        ExitFarmResultWrapper {
            farming_tokens,
            rewards,
        }
    }
    #[proxy]
    fn farm_proxy(&self, sc_address: ManagedAddress) -> farm_with_locked_rewards::Proxy<Self::Api>;
}
