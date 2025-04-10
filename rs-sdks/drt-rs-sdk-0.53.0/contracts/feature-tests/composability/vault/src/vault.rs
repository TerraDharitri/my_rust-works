#![no_std]
#![allow(clippy::type_complexity)]

use dharitri_sc::codec::Empty;

dharitri_sc::imports!();

/// General test contract.
/// Used especially for investigating async calls and contract interaction in general.
#[dharitri_sc::contract]
pub trait Vault {
    #[init]
    fn init(&self, opt_arg_to_echo: OptionalValue<ManagedBuffer>) -> OptionalValue<ManagedBuffer> {
        opt_arg_to_echo
    }

    #[upgrade]
    #[label("upgrade")]
    fn upgrade(
        &self,
        opt_arg_to_echo: OptionalValue<ManagedBuffer>,
    ) -> MultiValue2<&'static str, OptionalValue<ManagedBuffer>> {
        self.upgraded_event();
        ("upgraded", opt_arg_to_echo).into()
    }

    #[event("upgraded")]
    fn upgraded_event(&self);

    #[endpoint]
    fn echo_arguments(
        &self,
        args: MultiValueEncoded<ManagedBuffer>,
    ) -> MultiValueEncoded<ManagedBuffer> {
        self.call_counts(ManagedBuffer::from(b"echo_arguments"))
            .update(|c| *c += 1);
        args
    }

    #[endpoint]
    fn echo_arguments_without_storage(
        &self,
        args: MultiValueEncoded<ManagedBuffer>,
    ) -> MultiValueEncoded<ManagedBuffer> {
        args
    }

    #[endpoint]
    fn echo_caller(&self) -> ManagedAddress {
        self.blockchain().get_caller()
    }

    fn dcdt_transfers_multi(&self) -> MultiValueEncoded<DcdtTokenPaymentMultiValue> {
        self.call_value()
            .all_dcdt_transfers()
            .clone_value()
            .into_multi_value()
    }

    #[payable("*")]
    #[endpoint]
    fn accept_funds(&self) {
        let dcdt_transfers_multi = self.dcdt_transfers_multi();
        self.accept_funds_event(&self.call_value().rewa_value(), &dcdt_transfers_multi);

        self.call_counts(ManagedBuffer::from(b"accept_funds"))
            .update(|c| *c += 1);
    }

    #[payable("*")]
    #[endpoint]
    fn accept_funds_echo_payment(
        &self,
    ) -> MultiValue2<BigUint, MultiValueEncoded<DcdtTokenPaymentMultiValue>> {
        let rewa_value = self.call_value().rewa_value();
        let dcdt_transfers_multi = self.dcdt_transfers_multi();
        self.accept_funds_event(&rewa_value, &dcdt_transfers_multi);

        self.call_counts(ManagedBuffer::from(b"accept_funds_echo_payment"))
            .update(|c| *c += 1);

        (rewa_value.clone_value(), dcdt_transfers_multi).into()
    }

    #[payable("*")]
    #[endpoint]
    fn accept_funds_single_dcdt_transfer(&self) {
        let _ = self.call_value().single_dcdt();
    }

    #[payable("*")]
    #[endpoint]
    fn reject_funds(&self) {
        let dcdt_transfers_multi = self.dcdt_transfers_multi();
        self.reject_funds_event(&self.call_value().rewa_value(), &dcdt_transfers_multi);
        sc_panic!("reject_funds");
    }

    #[payable("*")]
    #[endpoint]
    fn retrieve_funds_with_transfer_exec(
        &self,
        token: TokenIdentifier,
        amount: BigUint,
        opt_receive_func: OptionalValue<ManagedBuffer>,
    ) {
        let caller = self.blockchain().get_caller();
        let func_name = opt_receive_func.into_option().unwrap_or_default();

        self.tx()
            .to(&caller)
            .gas(50_000_000u64)
            .raw_call(func_name)
            .single_dcdt(&token, 0u64, &amount)
            .transfer_execute();
    }

    #[allow_multiple_var_args]
    #[label("promises-endpoint")]
    #[payable("*")]
    #[endpoint]
    fn retrieve_funds_promises(
        &self,
        back_transfers: OptionalValue<u64>,
        back_transfer_value: OptionalValue<BigUint>,
    ) {
        let payment = self.call_value().rewa_or_single_dcdt();
        let caller = self.blockchain().get_caller();
        let endpoint_name = ManagedBuffer::from(b"");
        let nr_callbacks = match back_transfers.into_option() {
            Some(nr) => nr,
            None => sc_panic!("Nr of calls is None"),
        };

        let value = match back_transfer_value.into_option() {
            Some(val) => val,
            None => sc_panic!("Value for parent callback is None"),
        };

        let return_payment =
            RewaOrDcdtTokenPayment::new(payment.token_identifier, payment.token_nonce, value);

        self.num_called_retrieve_funds_promises()
            .update(|c| *c += 1);

        for _ in 0..nr_callbacks {
            self.num_async_calls_sent_from_child().update(|c| *c += 1);

            self.tx()
                .to(&caller)
                .raw_call(endpoint_name.clone())
                .payment(&return_payment)
                .gas(self.blockchain().get_gas_left() / 2)
                .transfer_execute()
        }
    }

    #[endpoint]
    fn retrieve_funds(&self, token: RewaOrDcdtTokenIdentifier, nonce: u64, amount: BigUint) {
        self.retrieve_funds_event(&token, nonce, &amount);
        let caller = self.blockchain().get_caller();

        if let Some(dcdt_token_id) = token.into_dcdt_option() {
            self.tx()
                .to(caller)
                .dcdt((dcdt_token_id, nonce, amount))
                .transfer();
        } else {
            self.tx().to(caller).rewa(amount).transfer();
        }
    }

    #[endpoint]
    fn retrieve_multi_funds_async(
        &self,
        token_payments: MultiValueEncoded<MultiValue3<TokenIdentifier, u64, BigUint>>,
    ) {
        let caller = self.blockchain().get_caller();
        let mut all_payments = ManagedVec::new();

        for multi_arg in token_payments.into_iter() {
            let (token_id, nonce, amount) = multi_arg.into_tuple();

            all_payments.push(DcdtTokenPayment::new(token_id, nonce, amount));
        }

        self.tx().to(caller).payment(all_payments).transfer();
    }

    #[payable("*")]
    #[endpoint]
    fn burn_and_create_retrieve_async(&self) {
        let payments = self.call_value().all_dcdt_transfers();
        let mut uris = ManagedVec::new();
        uris.push(ManagedBuffer::new());

        let mut new_tokens = ManagedVec::new();

        for payment in payments.into_iter() {
            // burn old tokens
            self.send().dcdt_local_burn(
                &payment.token_identifier,
                payment.token_nonce,
                &payment.amount,
            );

            // create new ones
            let new_token_nonce = self.send().dcdt_nft_create(
                &payment.token_identifier,
                &payment.amount,
                &ManagedBuffer::new(),
                &BigUint::zero(),
                &ManagedBuffer::new(),
                &Empty,
                &uris,
            );

            new_tokens.push(DcdtTokenPayment::new(
                payment.token_identifier,
                new_token_nonce,
                payment.amount,
            ));
        }

        self.tx().to(ToCaller).payment(new_tokens).transfer();
    }

    #[event("accept_funds")]
    fn accept_funds_event(
        &self,
        #[indexed] rewa_value: &BigUint,
        #[indexed] multi_dcdt: &MultiValueEncoded<DcdtTokenPaymentMultiValue>,
    );

    #[event("reject_funds")]
    fn reject_funds_event(
        &self,
        #[indexed] rewa_value: &BigUint,
        #[indexed] multi_dcdt: &MultiValueEncoded<DcdtTokenPaymentMultiValue>,
    );

    #[event("retrieve_funds")]
    fn retrieve_funds_event(
        &self,
        #[indexed] token: &RewaOrDcdtTokenIdentifier,
        #[indexed] nonce: u64,
        #[indexed] amount: &BigUint,
    );

    #[endpoint]
    fn get_owner_address(&self) -> ManagedAddress {
        self.blockchain().get_owner_address()
    }

    /// We already leave a trace of the calls using the event logs;
    /// this additional counter has the role of showing that storage also gets saved correctly.
    #[view]
    #[storage_mapper("call_counts")]
    fn call_counts(&self, endpoint: ManagedBuffer) -> SingleValueMapper<usize>;

    #[view]
    #[storage_mapper("num_called_retrieve_funds_promises")]
    fn num_called_retrieve_funds_promises(&self) -> SingleValueMapper<usize>;

    #[view]
    #[storage_mapper("num_async_calls_sent_from_child")]
    fn num_async_calls_sent_from_child(&self) -> SingleValueMapper<usize>;
}
