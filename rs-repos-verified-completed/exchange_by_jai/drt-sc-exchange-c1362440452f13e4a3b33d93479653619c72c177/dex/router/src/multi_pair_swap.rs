dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use super::factory;
use crate::config;
use crate::pair_proxy;

type SwapOperationType<M> =
    MultiValue4<ManagedAddress<M>, ManagedBuffer<M>, TokenIdentifier<M>, BigUint<M>>;

pub const SWAP_TOKENS_FIXED_INPUT_FUNC_NAME: &[u8] = b"swapTokensFixedInput";
pub const SWAP_TOKENS_FIXED_OUTPUT_FUNC_NAME: &[u8] = b"swapTokensFixedOutput";

#[dharitri_sc::module]
pub trait MultiPairSwap:
    config::ConfigModule
    + crate::read_pair_storage::ReadPairStorageModule
    + factory::FactoryModule
    + token_send::TokenSendModule
{
    #[payable("*")]
    #[endpoint(multiPairSwap)]
    fn multi_pair_swap(
        &self,
        swap_operations: MultiValueEncoded<SwapOperationType<Self::Api>>,
    ) -> ManagedVec<DcdtTokenPayment> {
        require!(self.is_active(), "Not active");

        let (token_id, nonce, amount) = self.call_value().single_dcdt().into_tuple();
        require!(nonce == 0, "Invalid nonce. Should be zero");
        require!(amount > 0u64, "Invalid amount. Should not be zero");
        require!(
            !swap_operations.is_empty(),
            "Invalid swap operations chain. Should not be empty"
        );

        let swap_fixed_input_endpoint = ManagedBuffer::from(SWAP_TOKENS_FIXED_INPUT_FUNC_NAME);
        let swap_fixed_output_endpoint = ManagedBuffer::from(SWAP_TOKENS_FIXED_OUTPUT_FUNC_NAME);

        let caller = self.blockchain().get_caller();
        let mut payments = ManagedVec::new();
        let mut last_payment = DcdtTokenPayment::new(token_id, nonce, amount);

        for entry in swap_operations.into_iter() {
            let (pair_address, function, token_wanted, amount_wanted) = entry.into_tuple();
            self.check_is_pair_sc(&pair_address);

            if function == swap_fixed_input_endpoint {
                last_payment = self.actual_swap_fixed_input(
                    pair_address,
                    last_payment.token_identifier,
                    last_payment.amount,
                    token_wanted,
                    amount_wanted,
                );
            } else if function == swap_fixed_output_endpoint {
                let (payment, residuum) = self.actual_swap_fixed_output(
                    pair_address,
                    last_payment.token_identifier,
                    last_payment.amount,
                    token_wanted,
                    amount_wanted,
                );

                last_payment = payment;
                payments.push(residuum);
            } else {
                sc_panic!("Invalid function to call");
            }
        }

        payments.push(last_payment);
        self.tx().to(&caller).payment(&payments).transfer();

        payments
    }

    fn actual_swap_fixed_input(
        &self,
        pair_address: ManagedAddress,
        token_in: TokenIdentifier,
        amount_in: BigUint,
        token_out: TokenIdentifier,
        amount_out_min: BigUint,
    ) -> DcdtTokenPayment<Self::Api> {
        self.tx()
            .to(&pair_address)
            .typed(pair_proxy::PairProxy)
            .swap_tokens_fixed_input(token_out, amount_out_min)
            .single_dcdt(&token_in, 0, &amount_in)
            .returns(ReturnsResult)
            .sync_call()
    }

    fn actual_swap_fixed_output(
        &self,
        pair_address: ManagedAddress,
        token_in: TokenIdentifier,
        amount_in_max: BigUint,
        token_out: TokenIdentifier,
        amount_out: BigUint,
    ) -> (DcdtTokenPayment<Self::Api>, DcdtTokenPayment<Self::Api>) {
        self.tx()
            .to(&pair_address)
            .typed(pair_proxy::PairProxy)
            .swap_tokens_fixed_output(token_out, amount_out)
            .single_dcdt(&token_in, 0, &amount_in_max)
            .returns(ReturnsResult)
            .sync_call()
            .into_tuple()
    }
}
