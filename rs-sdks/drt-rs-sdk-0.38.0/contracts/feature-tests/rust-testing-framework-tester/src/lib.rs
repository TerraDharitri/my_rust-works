#![no_std]

numbat_wasm::imports!();
numbat_wasm::derive_imports!();

pub mod dummy_module;

#[derive(TopEncode, TopDecode, TypeAbi, Clone, Debug, PartialEq, Eq)]
pub struct NftDummyAttributes {
    pub creation_epoch: u64,
    pub cool_factor: u8,
}

pub struct StructWithManagedTypes<M: ManagedTypeApi> {
    pub big_uint: BigUint<M>,
    pub buffer: ManagedBuffer<M>,
}

#[numbat_wasm::contract]
pub trait RustTestingFrameworkTester: dummy_module::DummyModule {
    #[init]
    fn init(&self) -> ManagedBuffer {
        self.total_value().set(&BigUint::from(1u32));
        b"constructor-result".into()
    }

    #[endpoint]
    fn sum(&self, first: BigUint, second: BigUint) -> BigUint {
        first + second
    }

    #[endpoint]
    fn sum_sc_result(&self, first: BigUint, second: BigUint) -> BigUint {
        require!(first > 0 && second > 0, "Non-zero required");
        first + second
    }

    #[endpoint]
    fn get_caller_legacy(&self) -> Address {
        self.blockchain().get_caller_legacy()
    }

    #[endpoint]
    fn get_rewa_balance(&self) -> BigUint {
        self.blockchain()
            .get_sc_balance(&RewaOrDcdtTokenIdentifier::rewa(), 0)
    }

    #[endpoint]
    fn get_dcdt_balance(&self, token_id: TokenIdentifier, nonce: u64) -> BigUint {
        self.blockchain()
            .get_sc_balance(&RewaOrDcdtTokenIdentifier::dcdt(token_id), nonce)
    }

    #[payable("REWA")]
    #[endpoint]
    fn receive_rewa(&self) -> BigUint {
        self.call_value().rewa_value()
    }

    #[payable("REWA")]
    #[endpoint]
    fn recieve_rewa_half(&self) {
        let caller = self.blockchain().get_caller();
        let payment_amount = self.call_value().rewa_value() / 2u32;
        self.send().direct(
            &caller,
            &RewaOrDcdtTokenIdentifier::rewa(),
            0,
            &payment_amount,
        );
    }

    #[payable("*")]
    #[endpoint]
    fn receive_dcdt(&self) -> (TokenIdentifier, BigUint) {
        let payment = self.call_value().single_dcdt();
        (payment.token_identifier, payment.amount)
    }

    #[payable("*")]
    #[endpoint]
    fn reject_payment(&self) {
        sc_panic!("No payment allowed!");
    }

    #[payable("*")]
    #[endpoint]
    fn receive_dcdt_half(&self) {
        let caller = self.blockchain().get_caller();
        let payment = self.call_value().single_dcdt();
        let amount = payment.amount / 2u32;

        self.send()
            .direct_dcdt(&caller, &payment.token_identifier, 0, &amount);
    }

    #[payable("*")]
    #[endpoint]
    fn receive_multi_dcdt(&self) -> ManagedVec<DcdtTokenPayment<Self::Api>> {
        self.call_value().all_dcdt_transfers()
    }

    #[payable("*")]
    #[endpoint]
    fn send_nft(
        &self,
        to: ManagedAddress,
        token_id: TokenIdentifier,
        nft_nonce: u64,
        amount: BigUint,
    ) {
        self.send().direct_dcdt(&to, &token_id, nft_nonce, &amount);
    }

    #[endpoint]
    fn mint_dcdt(&self, token_id: TokenIdentifier, nonce: u64, amount: BigUint) {
        self.send().dcdt_local_mint(&token_id, nonce, &amount);
    }

    #[endpoint]
    fn burn_dcdt(&self, token_id: TokenIdentifier, nonce: u64, amount: BigUint) {
        self.send().dcdt_local_burn(&token_id, nonce, &amount);
    }

    #[endpoint]
    fn create_nft(
        &self,
        token_id: TokenIdentifier,
        amount: BigUint,
        attributes: NftDummyAttributes,
    ) -> u64 {
        self.send().dcdt_nft_create(
            &token_id,
            &amount,
            &ManagedBuffer::new(),
            &BigUint::zero(),
            &ManagedBuffer::new(),
            &attributes,
            &ManagedVec::new(),
        )
    }

    #[endpoint]
    fn get_block_epoch(&self) -> u64 {
        self.blockchain().get_block_epoch()
    }

    #[endpoint]
    fn get_block_nonce(&self) -> u64 {
        self.blockchain().get_block_nonce()
    }

    #[endpoint]
    fn get_block_timestamp(&self) -> u64 {
        self.blockchain().get_block_timestamp()
    }

    #[endpoint]
    fn get_random_buffer_once(&self, len: usize) -> ManagedBuffer {
        ManagedBuffer::new_random(len)
    }

    #[endpoint]
    fn get_random_buffer_twice(&self, len1: usize, len2: usize) -> (ManagedBuffer, ManagedBuffer) {
        (
            ManagedBuffer::new_random(len1),
            ManagedBuffer::new_random(len2),
        )
    }

    #[endpoint]
    fn call_other_contract_execute_on_dest(&self, other_sc_address: ManagedAddress) -> BigUint {
        let call_result = self.send_raw().execute_on_dest_context_raw(
            self.blockchain().get_gas_left(),
            &other_sc_address,
            &BigUint::zero(),
            &ManagedBuffer::new_from_bytes(b"getTotalValue"),
            &ManagedArgBuffer::new(),
        );
        if let Some(raw_value) = call_result.try_get(0) {
            BigUint::from_bytes_be_buffer(&raw_value)
        } else {
            BigUint::zero()
        }
    }

    #[endpoint]
    fn call_other_contract_add_async_call(&self, other_sc_address: ManagedAddress, value: BigUint) {
        let mut args = ManagedArgBuffer::new();
        args.push_arg(&value);

        self.send_raw().async_call_raw(
            &other_sc_address,
            &BigUint::zero(),
            &ManagedBuffer::new_from_bytes(b"add"),
            &args,
        );
    }

    #[callback_raw]
    fn callback_raw(&self, _ignore: IgnoreValue) {
        self.callback_executed().set(true);
    }

    #[endpoint(getTotalValue)]
    fn get_total_value(&self) -> BigUint {
        self.total_value().get()
    }

    #[endpoint]
    fn execute_on_dest_add_value(&self, other_sc_address: ManagedAddress, value: BigUint) {
        let mut args = ManagedArgBuffer::new();
        args.push_arg(value);

        let _ = self.send_raw().execute_on_dest_context_raw(
            self.blockchain().get_gas_left(),
            &other_sc_address,
            &BigUint::zero(),
            &ManagedBuffer::new_from_bytes(b"addValue"),
            &args,
        );
    }

    #[endpoint(addValue)]
    fn add(&self, value: BigUint) {
        let caller = self.blockchain().get_caller();

        self.total_value().update(|val| *val += &value);
        self.value_per_caller(&caller).update(|val| *val += value);
    }

    #[endpoint]
    fn panic(&self) {
        sc_panic!("Oh no!");
    }

    fn get_val(&self) -> BigUint {
        self.total_value().get()
    }

    #[storage_mapper("totalValue")]
    fn total_value(&self) -> SingleValueMapper<BigUint>;

    #[storage_mapper("valuePerCaller")]
    fn value_per_caller(&self, caller: &ManagedAddress) -> SingleValueMapper<BigUint>;

    #[storage_mapper("callbackExecuted")]
    fn callback_executed(&self) -> SingleValueMapper<bool>;
}
