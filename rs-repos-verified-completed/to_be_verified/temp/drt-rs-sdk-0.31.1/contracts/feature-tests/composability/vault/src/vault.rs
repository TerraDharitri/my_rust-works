#![no_std]
#![allow(clippy::type_complexity)]

use numbat_wasm::numbat_codec::Empty;

numbat_wasm::imports!();

/// General test contract.
/// Used especially for investigating async calls and contract interaction in general.
#[numbat_wasm::contract]
pub trait Vault {
    #[init]
    fn init(&self, opt_arg_to_echo: OptionalValue<ManagedBuffer>) -> OptionalValue<ManagedBuffer> {
        opt_arg_to_echo
    }

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
    fn echo_caller(&self) -> ManagedAddress {
        self.blockchain().get_caller()
    }

    fn dcdt_transfers_multi(&self) -> MultiValueEncoded<DcdtTokenPaymentMultiValue> {
        let dcdt_transfers = self.call_value().all_dcdt_transfers();
        let mut dcdt_transfers_multi = MultiValueEncoded::new();
        for dcdt_transfer in dcdt_transfers.into_iter() {
            dcdt_transfers_multi.push(dcdt_transfer.into_multi_value());
        }
        dcdt_transfers_multi
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

        (rewa_value, dcdt_transfers_multi).into()
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
        #[payment_multi] _payments: ManagedVec<DcdtTokenPayment<Self::Api>>,
        token: TokenIdentifier,
        amount: BigUint,
        opt_receive_func: OptionalValue<ManagedBuffer>,
    ) {
        let caller = self.blockchain().get_caller();
        let func_name = opt_receive_func.into_option().unwrap_or_default();

        Self::Api::send_api_impl()
            .direct_dcdt_execute(
                &caller,
                &token,
                &amount,
                50_000_000,
                &func_name,
                &ManagedArgBuffer::new_empty(),
            )
            .unwrap_or_else(|_| sc_panic!("DCDT transfer failed"));
    }

    #[endpoint]
    fn retrieve_funds(
        &self,
        token: TokenIdentifier,
        nonce: u64,
        amount: BigUint,
        return_message: OptionalValue<ManagedBuffer>,
    ) {
        self.retrieve_funds_event(&token, nonce, &amount);

        let caller = self.blockchain().get_caller();
        let data = match return_message {
            OptionalValue::Some(data) => data,
            OptionalValue::None => ManagedBuffer::new(),
        };

        if token.is_rewa() {
            self.send().direct_rewa(&caller, &amount, data);
        } else {
            self.send()
                .transfer_dcdt_via_async_call(&caller, &token, nonce, &amount, data);
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

            all_payments.push(DcdtTokenPayment {
                token_identifier: token_id,
                token_nonce: nonce,
                amount,
                token_type: DcdtTokenType::Invalid,
            });
        }

        self.send()
            .transfer_multiple_dcdt_via_async_call(&caller, &all_payments, b"");
    }

    #[payable("*")]
    #[endpoint]
    fn burn_and_create_retrive_async(&self) {
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

            new_tokens.push(DcdtTokenPayment {
                token_identifier: payment.token_identifier,
                token_nonce: new_token_nonce,
                amount: payment.amount,
                token_type: DcdtTokenType::Invalid, // ignored
            });
        }

        self.send().transfer_multiple_dcdt_via_async_call(
            &self.blockchain().get_caller(),
            &new_tokens,
            &[],
        );
    }

    /// TODO: invert token_payment and token_nonce, for consistency.
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
        #[indexed] token: &TokenIdentifier,
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
}
