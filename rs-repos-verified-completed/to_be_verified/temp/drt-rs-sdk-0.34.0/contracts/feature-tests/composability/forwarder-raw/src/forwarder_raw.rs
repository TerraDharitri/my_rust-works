#![no_std]
#![allow(clippy::type_complexity)]

numbat_wasm::imports!();

/// Test contract for investigating async calls.
/// TODO: split into modules
#[numbat_wasm::contract]
pub trait ForwarderRaw {
    #[init]
    fn init(&self) {}

    // ASYNC CALLS

    #[endpoint]
    #[payable("*")]
    fn forward_payment(&self, to: ManagedAddress) {
        let (token, payment) = self.call_value().rewa_or_single_fungible_dcdt();
        self.send().direct(&to, &token, 0, &payment);
    }

    #[endpoint]
    #[payable("*")]
    fn forward_direct_dcdt_via_transf_exec(&self, to: ManagedAddress) {
        let (token, payment) = self.call_value().single_fungible_dcdt();
        self.send().direct_dcdt(&to, &token, 0, &payment);
    }

    #[endpoint]
    #[payable("*")]
    fn forward_direct_dcdt_multi(&self, to: ManagedAddress) {
        let payments = self.call_value().all_dcdt_transfers();
        self.send().direct_multi(&to, &payments);
    }

    fn forward_contract_call(
        &self,
        to: ManagedAddress,
        payment_token: RewaOrDcdtTokenIdentifier,
        payment_amount: BigUint,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) -> ContractCall<Self::Api, ()> {
        self.send()
            .contract_call(to, endpoint_name)
            .with_rewa_or_single_dcdt_token_transfer(payment_token, 0, payment_amount)
            .with_arguments_raw(args.to_arg_buffer())
    }

    #[endpoint]
    #[payable("*")]
    fn forward_async_call(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let (token, payment) = self.call_value().rewa_or_single_fungible_dcdt();
        self.forward_contract_call(to, token, payment, endpoint_name, args)
            .async_call()
            .call_and_exit()
    }

    #[endpoint]
    #[payable("*")]
    fn forward_async_call_half_payment(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let (token, payment) = self.call_value().rewa_or_single_fungible_dcdt();
        let half_payment = payment / 2u32;
        self.forward_contract_call(to, token, half_payment, endpoint_name, args)
            .async_call()
            .call_and_exit()
    }

    #[endpoint]
    #[payable("REWA")]
    fn forward_transf_exec_rewa(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let payment = self.call_value().rewa_value();
        self.forward_contract_call(
            to,
            RewaOrDcdtTokenIdentifier::rewa(),
            payment,
            endpoint_name,
            args,
        )
        .with_gas_limit(self.blockchain().get_gas_left() / 2)
        .transfer_execute();
    }

    #[endpoint]
    #[payable("*")]
    fn forward_transf_exec_dcdt(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let (token, payment) = self.call_value().single_fungible_dcdt();
        self.forward_contract_call(
            to,
            RewaOrDcdtTokenIdentifier::dcdt(token),
            payment,
            endpoint_name,
            args,
        )
        .with_gas_limit(self.blockchain().get_gas_left() / 2)
        .transfer_execute();
    }

    #[endpoint]
    #[payable("*")]
    fn forward_transf_exec(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let (token, payment) = self.call_value().rewa_or_single_fungible_dcdt();
        self.forward_contract_call(to, token, payment, endpoint_name, args)
            .with_gas_limit(self.blockchain().get_gas_left() / 2)
            .transfer_execute();
    }

    #[endpoint]
    fn forward_async_retrieve_multi_transfer_funds(
        &self,
        to: ManagedAddress,
        token_payments: MultiValueEncoded<MultiValue3<TokenIdentifier, u64, BigUint>>,
    ) {
        let mut arg_buffer = ManagedArgBuffer::new();
        for multi_arg in token_payments.into_iter() {
            let (token_identifier, token_nonce, amount) = multi_arg.into_tuple();

            arg_buffer.push_arg(token_identifier);
            arg_buffer.push_arg(token_nonce);
            arg_buffer.push_arg(amount);
        }

        self.send_raw().async_call_raw(
            &to,
            &BigUint::zero(),
            &ManagedBuffer::from(&b"retrieve_multi_funds_async"[..]),
            &arg_buffer,
        );
    }

    #[endpoint]
    fn forwarder_async_send_and_retrieve_multi_transfer_funds(
        &self,
        to: ManagedAddress,
        token_payments: MultiValueEncoded<MultiValue3<TokenIdentifier, u64, BigUint>>,
    ) {
        let mut all_payments = ManagedVec::new();
        for multi_arg in token_payments.into_iter() {
            let (token_identifier, token_nonce, amount) = multi_arg.into_tuple();

            all_payments.push(DcdtTokenPayment::new(token_identifier, token_nonce, amount));
        }

        ContractCall::<Self::Api, ()>::new(to, "burn_and_create_retrive_async".into())
            .with_multi_token_transfer(all_payments)
            .async_call()
            .call_and_exit_ignore_callback()
    }

    #[view]
    #[storage_mapper("callback_data")]
    fn callback_data(&self) -> VecMapper<ManagedVec<Self::Api, ManagedBuffer>>;

    #[storage_mapper("callback_payments")]
    fn callback_payments(&self) -> VecMapper<(RewaOrDcdtTokenIdentifier, u64, BigUint)>;

    #[endpoint]
    fn clear_callback_info(&self) {
        self.callback_data().clear();
    }

    #[callback_raw]
    fn callback_raw(&self, args: MultiValueEncoded<ManagedBuffer>) {
        let payments = self.call_value().all_dcdt_transfers();
        if payments.is_empty() {
            let rewa_value = self.call_value().rewa_value();
            if rewa_value > 0 {
                let _ = self.callback_payments().push(&(
                    RewaOrDcdtTokenIdentifier::rewa(),
                    0,
                    rewa_value,
                ));
            }
        } else {
            for payment in payments.into_iter() {
                let _ = self.callback_payments().push(&(
                    RewaOrDcdtTokenIdentifier::dcdt(payment.token_identifier),
                    payment.token_nonce,
                    payment.amount,
                ));
            }
        }

        let args_as_vec = args.into_vec_of_buffers();
        self.callback_raw_event(&args_as_vec);

        let _ = self.callback_data().push(&args_as_vec);
    }

    #[event("callback_raw")]
    fn callback_raw_event(&self, arguments: &ManagedVec<Self::Api, ManagedBuffer>);

    // SYNC CALLS

    #[endpoint]
    #[payable("REWA")]
    fn call_execute_on_dest_context(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let payment = self.call_value().rewa_value();
        let half_gas = self.blockchain().get_gas_left() / 2;
        let result = self.send_raw().execute_on_dest_context_raw(
            half_gas,
            &to,
            &payment,
            &endpoint_name,
            &args.to_arg_buffer(),
        );

        self.execute_on_dest_context_result(result);
    }

    #[endpoint]
    #[payable("REWA")]
    fn call_execute_on_dest_context_twice(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let payment = self.call_value().rewa_value();
        let one_third_gas = self.blockchain().get_gas_left() / 3;
        let half_payment = payment / 2u32;
        let arg_buffer = args.to_arg_buffer();

        let result = self.send_raw().execute_on_dest_context_raw(
            one_third_gas,
            &to,
            &half_payment,
            &endpoint_name,
            &arg_buffer,
        );
        self.execute_on_dest_context_result(result);

        let result = self.send_raw().execute_on_dest_context_raw(
            one_third_gas,
            &to,
            &half_payment,
            &endpoint_name,
            &arg_buffer,
        );
        self.execute_on_dest_context_result(result);
    }

    #[endpoint]
    #[payable("REWA")]
    fn call_execute_on_same_context(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let payment = self.call_value().rewa_value();
        let half_gas = self.blockchain().get_gas_left() / 2;
        let result = self.send_raw().execute_on_same_context_raw(
            half_gas,
            &to,
            &payment,
            &endpoint_name,
            &args.to_arg_buffer(),
        );

        self.execute_on_same_context_result(result);
    }

    #[endpoint]
    fn call_execute_on_dest_context_readonly(
        &self,
        to: ManagedAddress,
        endpoint_name: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) {
        let half_gas = self.blockchain().get_gas_left() / 2;
        let result = self.send_raw().execute_on_dest_context_readonly_raw(
            half_gas,
            &to,
            &endpoint_name,
            &args.to_arg_buffer(),
        );

        self.execute_on_dest_context_result(result);
    }

    #[event("execute_on_dest_context_result")]
    fn execute_on_dest_context_result(&self, result: ManagedVec<Self::Api, ManagedBuffer>);

    #[event("execute_on_same_context_result")]
    fn execute_on_same_context_result(&self, result: ManagedVec<Self::Api, ManagedBuffer>);

    #[endpoint]
    fn deploy_contract(
        &self,
        code: ManagedBuffer,
        args: MultiValueEncoded<ManagedBuffer>,
    ) -> MultiValue2<ManagedAddress, ManagedVec<Self::Api, ManagedBuffer>> {
        self.send_raw()
            .deploy_contract(
                self.blockchain().get_gas_left(),
                &BigUint::zero(),
                &code,
                CodeMetadata::DEFAULT,
                &args.to_arg_buffer(),
            )
            .into()
    }

    #[endpoint]
    fn deploy_from_source(
        &self,
        source_contract_address: ManagedAddress,
        arguments: MultiValueEncoded<ManagedBuffer>,
    ) -> ManagedAddress {
        let (address, _) = self.send_raw().deploy_from_source_contract(
            self.blockchain().get_gas_left(),
            &BigUint::zero(),
            &source_contract_address,
            CodeMetadata::DEFAULT,
            &arguments.to_arg_buffer(),
        );

        address
    }

    #[endpoint]
    fn upgrade(
        &self,
        child_sc_address: &ManagedAddress,
        new_code: &ManagedBuffer,
        arguments: MultiValueEncoded<ManagedBuffer>,
    ) {
        self.send_raw().upgrade_contract(
            child_sc_address,
            self.blockchain().get_gas_left(),
            &BigUint::zero(),
            new_code,
            CodeMetadata::UPGRADEABLE,
            &arguments.to_arg_buffer(),
        );
    }

    #[endpoint]
    fn upgrade_from_source(
        &self,
        sc_address: ManagedAddress,
        source_contract_address: ManagedAddress,
        arguments: MultiValueEncoded<ManagedBuffer>,
    ) {
        self.send_raw().upgrade_from_source_contract(
            &sc_address,
            self.blockchain().get_gas_left(),
            &BigUint::zero(),
            &source_contract_address,
            CodeMetadata::DEFAULT,
            &arguments.to_arg_buffer(),
        )
    }
}
