use numbat_codec::{CodecFrom, TopEncodeMulti};

use crate::{
    api::{
        BlockchainApiImpl, CallTypeApi, DCDT_MULTI_TRANSFER_FUNC_NAME, DCDT_NFT_TRANSFER_FUNC_NAME,
        DCDT_TRANSFER_FUNC_NAME,
    },
    contract_base::{BlockchainWrapper, ExitCodecErrorHandler, SendRawWrapper},
    err_msg,
    io::{ArgErrorHandler, ArgId, ManagedResultArgLoader},
    types::{
        AsyncCall, BigUint, RewaOrDcdtTokenIdentifier, DcdtTokenPayment, ManagedAddress,
        ManagedArgBuffer, ManagedBuffer, ManagedVec, TokenIdentifier,
    },
};
use core::marker::PhantomData;

/// Using max u64 to represent maximum possible gas,
/// so that the value zero is not reserved and can be specified explicitly.
/// Leaving the gas limit unspecified will replace it with `api.get_gas_left()`.
const UNSPECIFIED_GAS_LIMIT: u64 = u64::MAX;

/// In case of `transfer_execute`, we leave by default a little gas for the calling transaction to finish.
const TRANSFER_EXECUTE_DEFAULT_LEFTOVER: u64 = 100_000;

/// Represents metadata for calling another contract.
/// Can transform into either an async call, transfer call or other types of calls.
#[must_use]
pub struct ContractCall<SA, OriginalResult>
where
    SA: CallTypeApi + 'static,
{
    _phantom: PhantomData<SA>,
    pub to: ManagedAddress<SA>,
    pub rewa_payment: BigUint<SA>,
    pub payments: ManagedVec<SA, DcdtTokenPayment<SA>>,
    pub endpoint_name: ManagedBuffer<SA>,
    pub extra_gas_for_callback: u64,
    pub explicit_gas_limit: u64,
    pub arg_buffer: ManagedArgBuffer<SA>,
    pub success_callback: &'static [u8],
    pub error_callback: &'static [u8],
    _return_type: PhantomData<OriginalResult>,
}

/// Syntactical sugar to help macros to generate code easier.
/// Unlike calling `ContractCall::<SA, OriginalResult>::new`, here types can be inferred from the context.
pub fn new_contract_call<SA, OriginalResult>(
    to: ManagedAddress<SA>,
    endpoint_name_slice: &'static [u8],
    payments: ManagedVec<SA, DcdtTokenPayment<SA>>,
) -> ContractCall<SA, OriginalResult>
where
    SA: CallTypeApi + 'static,
{
    let endpoint_name = ManagedBuffer::new_from_bytes(endpoint_name_slice);
    ContractCall::<SA, OriginalResult>::new_with_dcdt_payment(to, endpoint_name, payments)
}

#[allow(clippy::return_self_not_must_use)]
impl<SA, OriginalResult> ContractCall<SA, OriginalResult>
where
    SA: CallTypeApi + 'static,
{
    pub fn new(to: ManagedAddress<SA>, endpoint_name: ManagedBuffer<SA>) -> Self {
        let payments = ManagedVec::new();
        Self::new_with_dcdt_payment(to, endpoint_name, payments)
    }

    pub fn new_with_dcdt_payment(
        to: ManagedAddress<SA>,
        endpoint_name: ManagedBuffer<SA>,
        payments: ManagedVec<SA, DcdtTokenPayment<SA>>,
    ) -> Self {
        let arg_buffer = ManagedArgBuffer::new();
        let rewa_payment = BigUint::zero();
        let success_callback = b"";
        let error_callback = b"";
        ContractCall {
            _phantom: PhantomData,
            to,
            rewa_payment,
            payments,
            explicit_gas_limit: UNSPECIFIED_GAS_LIMIT,
            extra_gas_for_callback: UNSPECIFIED_GAS_LIMIT,
            endpoint_name,
            arg_buffer,
            _return_type: PhantomData,
            success_callback,
            error_callback,
        }
    }

    pub fn add_dcdt_token_transfer(
        mut self,
        payment_token: TokenIdentifier<SA>,
        payment_nonce: u64,
        payment_amount: BigUint<SA>,
    ) -> Self {
        self.payments.push(DcdtTokenPayment::new(
            payment_token,
            payment_nonce,
            payment_amount,
        ));
        self
    }

    pub fn with_rewa_or_single_dcdt_token_transfer(
        self,
        payment_token: RewaOrDcdtTokenIdentifier<SA>,
        payment_nonce: u64,
        payment_amount: BigUint<SA>,
    ) -> Self {
        if payment_token.is_rewa() {
            self.with_rewa_transfer(payment_amount)
        } else {
            self.add_dcdt_token_transfer(payment_token.unwrap_dcdt(), payment_nonce, payment_amount)
        }
    }

    pub fn with_rewa_transfer(mut self, rewa_amount: BigUint<SA>) -> Self {
        self.payments.clear();
        self.rewa_payment = rewa_amount;

        self
    }

    #[inline]
    pub fn with_multi_token_transfer(
        mut self,
        payments: ManagedVec<SA, DcdtTokenPayment<SA>>,
    ) -> Self {
        self.payments = payments;
        self
    }

    #[cfg(feature = "promises")]
    #[inline]
    pub fn with_success_callback(mut self, callback: &'static [u8]) -> Self {
        self.success_callback = callback;
        self
    }

    #[cfg(feature = "promises")]
    #[inline]
    pub fn with_error_callback(mut self, callback: &'static [u8]) -> Self {
        self.error_callback = callback;
        self
    }

    #[cfg(feature = "promises")]
    #[inline]
    pub fn with_extra_gas_for_callback(mut self, gas_limit: u64) -> Self {
        self.extra_gas_for_callback = gas_limit;
        self
    }

    #[inline]
    pub fn with_gas_limit(mut self, gas_limit: u64) -> Self {
        self.explicit_gas_limit = gas_limit;
        self
    }

    pub fn with_arguments_raw(mut self, raw_argument_buffer: ManagedArgBuffer<SA>) -> Self {
        self.arg_buffer = raw_argument_buffer;
        self
    }

    /// Provided for cases where we build the contract call by hand.
    pub fn push_arg_managed_buffer(&mut self, m_buffer: ManagedBuffer<SA>) {
        self.arg_buffer.push_arg_raw(m_buffer)
    }

    /// Provided for cases where we build the contract call by hand.
    /// Convenience method, also creates the new managed buffer from bytes.
    pub fn push_argument_raw_bytes(&mut self, bytes: &[u8]) {
        self.arg_buffer
            .push_arg_raw(ManagedBuffer::new_from_bytes(bytes));
    }

    pub fn push_endpoint_arg<T: TopEncodeMulti>(&mut self, endpoint_arg: &T) {
        let h = ExitCodecErrorHandler::<SA>::from(err_msg::CONTRACT_CALL_ENCODE_ERROR);
        let Ok(()) = endpoint_arg.multi_encode_or_handle_err(&mut self.arg_buffer, h);
    }

    fn no_payments(&self) -> ManagedVec<SA, DcdtTokenPayment<SA>> {
        ManagedVec::new()
    }

    /// If this is an DCDT call, it converts it to a regular call to DCDTTransfer.
    /// Async calls require this step, but not `transfer_dcdt_execute`.
    pub fn convert_to_dcdt_transfer_call(self) -> Self {
        match self.payments.len() {
            0 => self,
            1 => self.convert_to_single_transfer_dcdt_call(),
            _ => self.convert_to_multi_transfer_dcdt_call(),
        }
    }

    fn convert_to_single_transfer_dcdt_call(self) -> Self {
        if let Some(payment) = self.payments.try_get(0) {
            if payment.token_nonce == 0 {
                let no_payments = self.no_payments();

                // fungible DCDT
                let mut new_arg_buffer = ManagedArgBuffer::new();
                new_arg_buffer.push_arg(&payment.token_identifier);
                new_arg_buffer.push_arg(&payment.amount);
                if !self.endpoint_name.is_empty() {
                    new_arg_buffer.push_arg(&self.endpoint_name);
                }

                let zero = BigUint::zero();
                let endpoint_name = ManagedBuffer::new_from_bytes(DCDT_TRANSFER_FUNC_NAME);

                ContractCall {
                    _phantom: PhantomData,
                    to: self.to,
                    rewa_payment: zero,
                    payments: no_payments,
                    explicit_gas_limit: self.explicit_gas_limit,
                    extra_gas_for_callback: self.extra_gas_for_callback,
                    endpoint_name,
                    arg_buffer: new_arg_buffer.concat(self.arg_buffer),
                    _return_type: PhantomData,
                    success_callback: self.success_callback,
                    error_callback: self.error_callback,
                }
            } else {
                let payments = self.no_payments();

                // NFT
                // `DCDTNFTTransfer` takes 4 arguments:
                // arg0 - token identifier
                // arg1 - nonce
                // arg2 - quantity to transfer
                // arg3 - destination address
                let mut new_arg_buffer = ManagedArgBuffer::new();
                new_arg_buffer.push_arg(&payment.token_identifier);
                new_arg_buffer.push_arg(&payment.token_nonce);
                new_arg_buffer.push_arg(&payment.amount);
                new_arg_buffer.push_arg(&self.to);
                if !self.endpoint_name.is_empty() {
                    new_arg_buffer.push_arg(&self.endpoint_name);
                }

                // nft transfer is sent to self, sender = receiver
                let recipient_addr = BlockchainWrapper::<SA>::new().get_sc_address();
                let zero = BigUint::zero();
                let endpoint_name = ManagedBuffer::new_from_bytes(DCDT_NFT_TRANSFER_FUNC_NAME);

                ContractCall {
                    _phantom: PhantomData,
                    to: recipient_addr,
                    rewa_payment: zero,
                    payments,
                    explicit_gas_limit: self.explicit_gas_limit,
                    extra_gas_for_callback: self.extra_gas_for_callback,
                    endpoint_name,
                    arg_buffer: new_arg_buffer.concat(self.arg_buffer),
                    _return_type: PhantomData,
                    success_callback: self.success_callback,
                    error_callback: self.error_callback,
                }
            }
        } else {
            self
        }
    }

    fn convert_to_multi_transfer_dcdt_call(self) -> Self {
        let payments = self.no_payments();

        let mut new_arg_buffer = ManagedArgBuffer::new();
        new_arg_buffer.push_arg(self.to);
        new_arg_buffer.push_arg(self.payments.len());

        for payment in self.payments.into_iter() {
            new_arg_buffer.push_arg(payment.token_identifier);
            new_arg_buffer.push_arg(payment.token_nonce);
            new_arg_buffer.push_arg(payment.amount);
        }
        if !self.endpoint_name.is_empty() {
            new_arg_buffer.push_arg(self.endpoint_name);
        }

        // multi transfer is sent to self, sender = receiver
        let recipient_addr = BlockchainWrapper::<SA>::new().get_sc_address();
        let zero = BigUint::zero();
        let endpoint_name = ManagedBuffer::new_from_bytes(DCDT_MULTI_TRANSFER_FUNC_NAME);

        ContractCall {
            _phantom: PhantomData,
            to: recipient_addr,
            rewa_payment: zero,
            payments,
            explicit_gas_limit: self.explicit_gas_limit,
            extra_gas_for_callback: self.extra_gas_for_callback,
            endpoint_name,
            arg_buffer: new_arg_buffer.concat(self.arg_buffer),
            _return_type: PhantomData,
            success_callback: self.success_callback,
            error_callback: self.error_callback,
        }
    }

    pub fn resolve_gas_limit(&self) -> u64 {
        if self.explicit_gas_limit == UNSPECIFIED_GAS_LIMIT {
            SA::blockchain_api_impl().get_gas_left()
        } else {
            self.explicit_gas_limit
        }
    }

    pub fn async_call(mut self) -> AsyncCall<SA> {
        self = self.convert_to_dcdt_transfer_call();
        AsyncCall {
            _phantom: PhantomData,
            to: self.to,
            rewa_payment: self.rewa_payment,
            endpoint_name: self.endpoint_name,
            arg_buffer: self.arg_buffer,
            callback_call: None,
        }
    }

    #[cfg(feature = "promises")]
    pub fn register_promise(mut self) {
        self = self.convert_to_dcdt_transfer_call();
        SendRawWrapper::<SA>::new().create_async_call_raw(
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            self.success_callback,
            self.error_callback,
            self.explicit_gas_limit,
            self.extra_gas_for_callback,
            &self.arg_buffer,
        )
    }
}

impl<SA, OriginalResult> ContractCall<SA, OriginalResult>
where
    SA: CallTypeApi + 'static,
    OriginalResult: TopEncodeMulti,
{
    fn decode_result<RequestedResult>(
        raw_result: ManagedVec<SA, ManagedBuffer<SA>>,
    ) -> RequestedResult
    where
        RequestedResult: CodecFrom<OriginalResult>,
    {
        let mut loader = ManagedResultArgLoader::new(raw_result);
        let arg_id = ArgId::from(&b"sync result"[..]);
        let h = ArgErrorHandler::<SA>::from(arg_id);
        let Ok(result) = RequestedResult::multi_decode_or_handle_err(&mut loader, h);
        result
    }

    /// Executes immediately, synchronously, and returns contract call result.
    /// Only works if the target contract is in the same shard.
    pub fn execute_on_dest_context<RequestedResult>(mut self) -> RequestedResult
    where
        RequestedResult: CodecFrom<OriginalResult>,
    {
        self = self.convert_to_dcdt_transfer_call();
        let raw_result = SendRawWrapper::<SA>::new().execute_on_dest_context_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        SendRawWrapper::<SA>::new().clean_return_data();

        Self::decode_result(raw_result)
    }

    pub fn execute_on_dest_context_readonly<RequestedResult>(mut self) -> RequestedResult
    where
        RequestedResult: CodecFrom<OriginalResult>,
    {
        self = self.convert_to_dcdt_transfer_call();
        let raw_result = SendRawWrapper::<SA>::new().execute_on_dest_context_readonly_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        SendRawWrapper::<SA>::new().clean_return_data();

        Self::decode_result(raw_result)
    }
}

impl<SA, OriginalResult> ContractCall<SA, OriginalResult>
where
    SA: CallTypeApi + 'static,
{
    /// Executes immediately, synchronously.
    ///
    /// The result (if any) is ignored.
    ///
    /// Only works if the target contract is in the same shard.
    pub fn execute_on_dest_context_ignore_result(mut self) {
        self = self.convert_to_dcdt_transfer_call();
        let _ = SendRawWrapper::<SA>::new().execute_on_dest_context_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        SendRawWrapper::<SA>::new().clean_return_data();
    }

    pub fn execute_on_same_context(mut self) {
        self = self.convert_to_dcdt_transfer_call();
        let _ = SendRawWrapper::<SA>::new().execute_on_same_context_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        SendRawWrapper::<SA>::new().clean_return_data();
    }

    fn resolve_gas_limit_with_leftover(&self) -> u64 {
        if self.explicit_gas_limit == UNSPECIFIED_GAS_LIMIT {
            let mut gas_left = SA::blockchain_api_impl().get_gas_left();
            if gas_left > TRANSFER_EXECUTE_DEFAULT_LEFTOVER {
                gas_left -= TRANSFER_EXECUTE_DEFAULT_LEFTOVER;
            }
            gas_left
        } else {
            self.explicit_gas_limit
        }
    }

    /// Immediately launches a transfer-execute call.
    ///
    /// This is similar to an async call, but there is no callback
    /// and there can be more than one such call per transaction.
    pub fn transfer_execute(self) {
        match self.payments.len() {
            0 => self.no_payment_transfer_execute(),
            1 => self.single_transfer_execute(),
            _ => self.multi_transfer_execute(),
        }
    }

    fn no_payment_transfer_execute(&self) {
        let gas_limit = self.resolve_gas_limit_with_leftover();

        let _ = SendRawWrapper::<SA>::new().direct_rewa_execute(
            &self.to,
            &self.rewa_payment,
            gas_limit,
            &self.endpoint_name,
            &self.arg_buffer,
        );
    }

    fn single_transfer_execute(self) {
        let gas_limit = self.resolve_gas_limit_with_leftover();
        let payment = &self.payments.try_get(0).unwrap();

        if self.rewa_payment > 0 {
            let _ = SendRawWrapper::<SA>::new().direct_rewa_execute(
                &self.to,
                &self.rewa_payment,
                gas_limit,
                &self.endpoint_name,
                &self.arg_buffer,
            );
        } else if payment.token_nonce == 0 {
            // fungible DCDT
            let _ = SendRawWrapper::<SA>::new().transfer_dcdt_execute(
                &self.to,
                &payment.token_identifier,
                &payment.amount,
                gas_limit,
                &self.endpoint_name,
                &self.arg_buffer,
            );
        } else {
            // non-fungible/semi-fungible DCDT
            let _ = SendRawWrapper::<SA>::new().transfer_dcdt_nft_execute(
                &self.to,
                &payment.token_identifier,
                payment.token_nonce,
                &payment.amount,
                gas_limit,
                &self.endpoint_name,
                &self.arg_buffer,
            );
        }
    }

    fn multi_transfer_execute(self) {
        let gas_limit = self.resolve_gas_limit_with_leftover();
        let _ = SendRawWrapper::<SA>::new().multi_dcdt_transfer_execute(
            &self.to,
            &self.payments,
            gas_limit,
            &self.endpoint_name,
            &self.arg_buffer,
        );
    }
}
