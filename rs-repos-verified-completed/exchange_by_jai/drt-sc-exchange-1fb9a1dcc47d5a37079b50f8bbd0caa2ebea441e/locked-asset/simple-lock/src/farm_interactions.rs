use common_structs::{RawResultWrapper, RawResultsType};

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

type EnterFarmResultType<BigUint> =
    MultiValue2<DcdtTokenPayment<BigUint>, DcdtTokenPayment<BigUint>>;
type ExitFarmResultType<BigUint> =
    MultiValue3<DcdtTokenPayment<BigUint>, DcdtTokenPayment<BigUint>, DcdtTokenPayment<BigUint>>;
type ClaimRewardsResultType<BigUint> =
    MultiValue2<DcdtTokenPayment<BigUint>, DcdtTokenPayment<BigUint>>;

const ENTER_FARM_RESULTS_LEN: usize = 2;
const EXIT_FARM_RESULTS_LEN: usize = 2;
const CLAIM_REWARDS_RESULTS_LEN: usize = 2;

pub struct EnterFarmResultWrapper<M: ManagedTypeApi> {
    pub farm_tokens: DcdtTokenPayment<M>,
    pub reward_tokens: DcdtTokenPayment<M>,
}

pub struct ExitFarmResultWrapper<M: ManagedTypeApi> {
    pub initial_farming_tokens: DcdtTokenPayment<M>,
    pub reward_tokens: DcdtTokenPayment<M>,
}

pub struct FarmClaimRewardsResultWrapper<M: ManagedTypeApi> {
    pub new_farm_tokens: DcdtTokenPayment<M>,
    pub reward_tokens: DcdtTokenPayment<M>,
}

pub struct FarmCompoundRewardsResultWrapper<M: ManagedTypeApi> {
    pub new_farm_tokens: DcdtTokenPayment<M>,
}

mod farm_proxy {
    dharitri_sc::imports!();
    use super::{ClaimRewardsResultType, EnterFarmResultType, ExitFarmResultType};

    #[dharitri_sc::proxy]
    pub trait FarmProxy {
        #[payable("*")]
        #[endpoint(enterFarm)]
        fn enter_farm(
            &self,
            opt_orig_caller: OptionalValue<ManagedAddress>,
        ) -> EnterFarmResultType<Self::Api>;

        #[payable("*")]
        #[endpoint(exitFarm)]
        fn exit_farm(
            &self,
            opt_orig_caller: OptionalValue<ManagedAddress>,
        ) -> ExitFarmResultType<Self::Api>;

        #[payable("*")]
        #[endpoint(claimRewards)]
        fn claim_rewards(
            &self,
            opt_orig_caller: OptionalValue<ManagedAddress>,
        ) -> ClaimRewardsResultType<Self::Api>;
    }
}

#[dharitri_sc::module]
pub trait FarmInteractionsModule {
    fn call_farm_enter(
        &self,
        farm_address: ManagedAddress,
        farming_token: TokenIdentifier,
        farming_token_amount: BigUint,
        additional_farm_tokens: ManagedVec<DcdtTokenPayment<Self::Api>>,
        caller: ManagedAddress,
    ) -> EnterFarmResultWrapper<Self::Api> {
        let mut contract_call = self
            .farm_proxy(farm_address)
            .enter_farm(caller)
            .with_dcdt_transfer(DcdtTokenPayment::new(
                farming_token,
                0,
                farming_token_amount,
            ));

        for farm_token in &additional_farm_tokens {
            contract_call = contract_call.with_dcdt_transfer(farm_token);
        }

        let raw_results: RawResultsType<Self::Api> = contract_call.execute_on_dest_context();
        let mut results_wrapper = RawResultWrapper::new(raw_results);
        results_wrapper.trim_results_front(ENTER_FARM_RESULTS_LEN);

        let new_farm_tokens = results_wrapper.decode_next_result();
        let reward_tokens = results_wrapper.decode_next_result();

        EnterFarmResultWrapper {
            farm_tokens: new_farm_tokens,
            reward_tokens,
        }
    }

    fn call_farm_exit(
        &self,
        farm_address: ManagedAddress,
        farm_token: TokenIdentifier,
        farm_token_nonce: u64,
        farm_token_amount: BigUint,
        caller: ManagedAddress,
    ) -> ExitFarmResultWrapper<Self::Api> {
        let raw_results: RawResultsType<Self::Api> = self
            .farm_proxy(farm_address)
            .exit_farm(caller)
            .with_dcdt_transfer(DcdtTokenPayment::new(
                farm_token,
                farm_token_nonce,
                farm_token_amount,
            ))
            .execute_on_dest_context();

        let mut results_wrapper = RawResultWrapper::new(raw_results);
        results_wrapper.trim_results_front(EXIT_FARM_RESULTS_LEN);

        let initial_farming_tokens = results_wrapper.decode_next_result();
        let reward_tokens = results_wrapper.decode_next_result();

        ExitFarmResultWrapper {
            initial_farming_tokens,
            reward_tokens,
        }
    }

    fn call_farm_claim_rewards(
        &self,
        farm_address: ManagedAddress,
        farm_token: TokenIdentifier,
        farm_token_nonce: u64,
        farm_token_amount: BigUint,
        caller: ManagedAddress,
    ) -> FarmClaimRewardsResultWrapper<Self::Api> {
        let raw_results: RawResultsType<Self::Api> = self
            .farm_proxy(farm_address)
            .claim_rewards(caller)
            .with_dcdt_transfer(DcdtTokenPayment::new(
                farm_token,
                farm_token_nonce,
                farm_token_amount,
            ))
            .execute_on_dest_context();

        let mut results_wrapper = RawResultWrapper::new(raw_results);
        results_wrapper.trim_results_front(CLAIM_REWARDS_RESULTS_LEN);

        let new_farm_tokens = results_wrapper.decode_next_result();
        let reward_tokens = results_wrapper.decode_next_result();

        FarmClaimRewardsResultWrapper {
            new_farm_tokens,
            reward_tokens,
        }
    }

    #[proxy]
    fn farm_proxy(&self, sc_address: ManagedAddress) -> farm_proxy::Proxy<Self::Api>;
}
