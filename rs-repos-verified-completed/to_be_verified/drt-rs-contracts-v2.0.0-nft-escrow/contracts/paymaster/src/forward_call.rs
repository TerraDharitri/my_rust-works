dharitri_sc::imports!();

pub type PaymentsVec<M> = ManagedVec<M, DcdtTokenPayment<M>>;

static ERR_CALLBACK_MSG: &[u8] = b"Error received in callback:";
pub const DCDT_TRANSFER_FUNC_NAME: &str = "DCDTTransfer";
#[dharitri_sc::module]
pub trait ForwardCall {
    fn forward_call(
        &self,
        dest: ManagedAddress,
        endpoint_name: ManagedBuffer,
        endpoint_args: MultiValueEncoded<ManagedBuffer>,
        payments: PaymentsVec<Self::Api>,
    ) {
        let original_caller = self.blockchain().get_caller();

        self.send()
            .contract_call::<()>(dest, endpoint_name)
            .with_raw_arguments(endpoint_args.to_arg_buffer())
            .with_multi_token_transfer(payments)
            .async_call()
            .with_callback(self.callbacks().transfer_callback(original_caller))
            .call_and_exit();
    }
    
    #[callback]
    fn transfer_callback(
        &self,
        original_caller: ManagedAddress,
        #[call_result] result: ManagedAsyncCallResult<MultiValueEncoded<ManagedBuffer>>,
    ) -> MultiValueEncoded<ManagedBuffer> {
        let initial_payments = self.call_value().all_dcdt_transfers();

        match result {
            ManagedAsyncCallResult::Ok(return_values) => return_values,
            ManagedAsyncCallResult::Err(err) => {
                if !initial_payments.is_empty() {
                    self.send()
                        .direct_multi(&original_caller, &initial_payments);
                }

                let mut err_result = MultiValueEncoded::new();
                err_result.push(ManagedBuffer::new_from_bytes(ERR_CALLBACK_MSG));
                err_result.push(err.err_msg.clone());

                sc_print!("{}", err.err_msg);

                err_result
            }
        }
    }
}
