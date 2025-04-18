use crate::{
    api::{SendApi, DCDT_MULTI_TRANSFER_STRING, DCDT_NFT_TRANSFER_STRING, DCDT_TRANSFER_STRING},
    types::{
        AsyncCall, BigUint, DcdtTokenPayment, ManagedAddress, ManagedArgBuffer, ManagedBuffer,
        ManagedVec, TokenIdentifier,
    },
    ArgId, ContractCallArg, DynArg, ManagedResultArgLoader,
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
pub struct ContractCall<SA, R>
where
    SA: SendApi + 'static,
{
    api: SA,
    to: ManagedAddress<SA>,
    rewa_payment: BigUint<SA>,
    payments: ManagedVec<SA, DcdtTokenPayment<SA>>,
    endpoint_name: ManagedBuffer<SA>,
    explicit_gas_limit: u64,
    arg_buffer: ManagedArgBuffer<SA>,
    _return_type: PhantomData<R>,
}

/// Syntactical sugar to help macros to generate code easier.
/// Unlike calling `ContractCall::<SA, R>::new`, here types can be inferred from the context.
pub fn new_contract_call<SA, R>(
    api: SA,
    to: ManagedAddress<SA>,
    endpoint_name_slice: &'static [u8],
) -> ContractCall<SA, R>
where
    SA: SendApi + 'static,
{
    let endpoint_name = ManagedBuffer::new_from_bytes(api.clone(), endpoint_name_slice);
    ContractCall::<SA, R>::new(api, to, endpoint_name)
}

impl<SA, R> ContractCall<SA, R>
where
    SA: SendApi + 'static,
{
    pub fn new(api: SA, to: ManagedAddress<SA>, endpoint_name: ManagedBuffer<SA>) -> Self {
        let arg_buffer = ManagedArgBuffer::new_empty(api.clone());
        let rewa_payment = BigUint::zero(api.clone());
        let payments = ManagedVec::new(api.clone());
        ContractCall {
            api,
            to,
            rewa_payment,
            payments,
            explicit_gas_limit: UNSPECIFIED_GAS_LIMIT,
            endpoint_name,
            arg_buffer,
            _return_type: PhantomData,
        }
    }

    pub fn add_token_transfer(
        mut self,
        payment_token: TokenIdentifier<SA>,
        payment_nonce: u64,
        payment_amount: BigUint<SA>,
    ) -> Self {
        self.payments.push(DcdtTokenPayment::from(
            payment_token,
            payment_nonce,
            payment_amount,
        ));
        self
    }

    pub fn with_rewa_transfer(mut self, rewa_amount: BigUint<SA>) -> Self {
        self.payments
            .overwrite_with_single_item(DcdtTokenPayment::from(
                TokenIdentifier::rewa(self.api.clone()),
                0,
                rewa_amount,
            ));
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
            .push_arg_raw(ManagedBuffer::new_from_bytes(self.api.clone(), bytes));
    }

    pub fn push_endpoint_arg<D: ContractCallArg>(&mut self, endpoint_arg: D) {
        endpoint_arg.push_dyn_arg(&mut self.arg_buffer);
    }

    fn no_payments(&self) -> ManagedVec<SA, DcdtTokenPayment<SA>> {
        ManagedVec::new(self.api.clone())
    }

    /// If this is an DCDT call, it converts it to a regular call to DCDTTransfer.
    /// Async calls require this step, but not `transfer_dcdt_execute`.
    fn convert_to_dcdt_transfer_call(self) -> Self {
        match self.payments.len() {
            0 => self,
            1 => self.convert_to_single_transfer_dcdt_call(),
            _ => self.convert_to_multi_transfer_dcdt_call(),
        }
    }

    fn convert_to_single_transfer_dcdt_call(mut self) -> Self {
        if let Some(payment) = self.payments.get(0) {
            if payment.token_identifier.is_rewa() {
                self.rewa_payment = payment.amount;
                self.payments.clear();
                self
            } else if payment.token_nonce == 0 {
                let no_payments = self.no_payments();

                // fungible DCDT
                let mut new_arg_buffer = ManagedArgBuffer::new_empty(self.api.clone());
                new_arg_buffer.push_arg(&payment.token_identifier);
                new_arg_buffer.push_arg(&payment.amount);
                new_arg_buffer.push_arg(&self.endpoint_name);

                let zero = BigUint::zero(self.api.clone());
                let endpoint_name =
                    ManagedBuffer::new_from_bytes(self.api.clone(), DCDT_TRANSFER_STRING);

                ContractCall {
                    api: self.api.clone(),
                    to: self.to,
                    rewa_payment: zero,
                    payments: no_payments,
                    explicit_gas_limit: self.explicit_gas_limit,
                    endpoint_name,
                    arg_buffer: new_arg_buffer.concat(self.arg_buffer),
                    _return_type: PhantomData,
                }
            } else {
                let payments = self.no_payments();

                // NFT
                // `DCDTNFTTransfer` takes 4 arguments:
                // arg0 - token identifier
                // arg1 - nonce
                // arg2 - quantity to transfer
                // arg3 - destination address
                let mut new_arg_buffer = ManagedArgBuffer::new_empty(self.api.clone());
                new_arg_buffer.push_arg(&payment.token_identifier);
                new_arg_buffer.push_arg(&payment.token_nonce);
                new_arg_buffer.push_arg(&payment.amount);
                new_arg_buffer.push_arg(&self.to);
                new_arg_buffer.push_arg(&self.endpoint_name);

                // nft transfer is sent to self, sender = receiver
                let recipient_addr = self.api.get_sc_address();
                let zero = BigUint::zero(self.api.clone());
                let endpoint_name =
                    ManagedBuffer::new_from_bytes(self.api.clone(), DCDT_NFT_TRANSFER_STRING);

                ContractCall {
                    api: self.api,
                    to: recipient_addr,
                    rewa_payment: zero,
                    payments,
                    explicit_gas_limit: self.explicit_gas_limit,
                    endpoint_name,
                    arg_buffer: new_arg_buffer.concat(self.arg_buffer),
                    _return_type: PhantomData,
                }
            }
        } else {
            self
        }
    }

    fn convert_to_multi_transfer_dcdt_call(self) -> Self {
        let payments = self.no_payments();

        let mut new_arg_buffer = ManagedArgBuffer::new_empty(self.api.clone());
        new_arg_buffer.push_arg(self.to);
        new_arg_buffer.push_arg(self.payments.len());

        for payment in self.payments.into_iter() {
            // TODO: check that `!token_identifier.is_rewa()` or let Andes throw the error?
            new_arg_buffer.push_arg(payment.token_identifier);
            new_arg_buffer.push_arg(payment.token_nonce);
            new_arg_buffer.push_arg(payment.amount);
        }
        new_arg_buffer.push_arg(self.endpoint_name);

        // multi transfer is sent to self, sender = receiver
        let recipient_addr = self.api.get_sc_address();
        let zero = BigUint::zero(self.api.clone());
        let endpoint_name =
            ManagedBuffer::new_from_bytes(self.api.clone(), DCDT_MULTI_TRANSFER_STRING);

        ContractCall {
            api: self.api,
            to: recipient_addr,
            rewa_payment: zero,
            payments,
            explicit_gas_limit: self.explicit_gas_limit,
            endpoint_name,
            arg_buffer: new_arg_buffer.concat(self.arg_buffer),
            _return_type: PhantomData,
        }
    }

    fn resolve_gas_limit(&self) -> u64 {
        if self.explicit_gas_limit == UNSPECIFIED_GAS_LIMIT {
            self.api.get_gas_left()
        } else {
            self.explicit_gas_limit
        }
    }

    pub fn async_call(mut self) -> AsyncCall<SA> {
        self = self.convert_to_dcdt_transfer_call();
        AsyncCall {
            api: self.api,
            to: self.to,
            rewa_payment: self.rewa_payment,
            endpoint_name: self.endpoint_name,
            arg_buffer: self.arg_buffer,
            callback_call: None,
        }
    }
}

impl<SA, R> ContractCall<SA, R>
where
    SA: SendApi + 'static,
    R: DynArg,
{
    /// Executes immediately, synchronously, and returns contract call result.
    /// Only works if the target contract is in the same shard.
    pub fn execute_on_dest_context(mut self) -> R {
        self = self.convert_to_dcdt_transfer_call();
        let raw_result = self.api.execute_on_dest_context_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        let mut loader = ManagedResultArgLoader::new(raw_result);
        R::dyn_load(&mut loader, ArgId::from(&b"sync result"[..]))
    }

    /// Executes immediately, synchronously, and returns contract call result.
    /// Only works if the target contract is in the same shard.
    /// This is a workaround to handle nested sync calls.
    /// Please do not use this method unless there is absolutely no other option.
    /// Will be eliminated after some future Andes hook redesign.
    /// `range_closure` takes the number of results before, the number of results after,
    /// and is expected to return the start index (inclusive) and end index (exclusive).
    pub fn execute_on_dest_context_custom_range<F>(mut self, range_closure: F) -> R
    where
        F: FnOnce(usize, usize) -> (usize, usize),
    {
        self = self.convert_to_dcdt_transfer_call();
        let raw_result = self.api.execute_on_dest_context_raw_custom_result_range(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
            range_closure,
        );

        let mut loader = ManagedResultArgLoader::new(raw_result);
        R::dyn_load(&mut loader, ArgId::from(&b"sync result"[..]))
    }

    pub fn execute_on_dest_context_readonly(mut self) -> R {
        self = self.convert_to_dcdt_transfer_call();
        let raw_result = self.api.execute_on_dest_context_readonly_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        let mut loader = ManagedResultArgLoader::new(raw_result);
        R::dyn_load(&mut loader, ArgId::from(&b"sync result"[..]))
    }
}

impl<SA, R> ContractCall<SA, R>
where
    SA: SendApi + 'static,
{
    /// Executes immediately, synchronously.
    /// The result (if any) is ignored.
    /// Only works if the target contract is in the same shard.
    pub fn execute_on_dest_context_ignore_result(mut self) {
        self = self.convert_to_dcdt_transfer_call();
        let _ = self.api.execute_on_dest_context_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
        );
    }

    pub fn execute_on_same_context(mut self) {
        self = self.convert_to_dcdt_transfer_call();
        let _ = self.api.execute_on_same_context_raw(
            self.resolve_gas_limit(),
            &self.to,
            &self.rewa_payment,
            &self.endpoint_name,
            &self.arg_buffer,
        );
    }

    fn resolve_gas_limit_with_leftover(&self) -> u64 {
        if self.explicit_gas_limit == UNSPECIFIED_GAS_LIMIT {
            let mut gas_left = self.api.get_gas_left();
            if gas_left > TRANSFER_EXECUTE_DEFAULT_LEFTOVER {
                gas_left -= TRANSFER_EXECUTE_DEFAULT_LEFTOVER;
            }
            gas_left
        } else {
            self.explicit_gas_limit
        }
    }

    /// Immediately launches a transfer-execute call.
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

        let _ = self.api.direct_rewa_execute(
            &self.to,
            &BigUint::zero(self.api.clone()),
            gas_limit,
            &self.endpoint_name,
            &self.arg_buffer,
        );
    }

    fn single_transfer_execute(self) {
        let gas_limit = self.resolve_gas_limit_with_leftover();
        let payment = &self.payments.get(0).unwrap();

        if payment.token_identifier.is_rewa() {
            let _ = self.api.direct_rewa_execute(
                &self.to,
                &payment.amount,
                gas_limit,
                &self.endpoint_name,
                &self.arg_buffer,
            );
        } else if payment.token_nonce == 0 {
            // fungible DCDT
            let _ = self.api.direct_dcdt_execute(
                &self.to,
                &payment.token_identifier,
                &payment.amount,
                gas_limit,
                &self.endpoint_name,
                &self.arg_buffer,
            );
        } else {
            // non-fungible/semi-fungible DCDT
            let _ = self.api.direct_dcdt_nft_execute(
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
        let result = self.api.direct_multi_dcdt_transfer_execute(
            &self.to,
            &self.payments,
            gas_limit,
            &self.endpoint_name,
            &self.arg_buffer,
        );

        if let Err(e) = result {
            self.api.signal_error(e);
        }
    }
}
