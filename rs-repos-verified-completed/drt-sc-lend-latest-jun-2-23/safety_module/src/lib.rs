#![no_std]
#![allow(unused_attributes)]

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use common_structs::{DepositPosition, BP, SECONDS_PER_YEAR};

#[dharitri_sc::contract]
pub trait SafetyModule {
    #[init]
    fn init(&self, wrewa_token: TokenIdentifier, depositors_apy: BigUint) {
        self.wrewa_token().set(&wrewa_token);
        self.deposit_apy().set(&depositors_apy);
    }

    #[only_owner]
    #[endpoint(addPool)]
    fn add_pool(&self, token: TokenIdentifier, address: &ManagedAddress) {
        self.pools(token).set(address);
    }

    #[only_owner]
    #[endpoint(removePool)]
    fn remove_pool(&self, token: TokenIdentifier) {
        self.pools(token).clear();
    }

    #[payable("*")]
    #[endpoint(fund)]
    fn fund(self, caller: OptionalValue<ManagedAddress>) {
        let (token, payment) = self.call_value().rewa_or_single_fungible_dcdt();

        require!(payment > 0, "amount must be greater than 0");
        require!(token == self.wrewa_token().get(), "invalid token");

        let caller_address = caller
            .into_option()
            .unwrap_or_else(|| self.blockchain().get_caller());

        // let round = self.blockchain().get_block_round();
        // let deposit_metadata = DepositPosition::new(token, payment.clone(), account_position, round, BigUint::from(1u64));

        let nft_token = self.nft_token().get();
        // let nft_nonce = self.mint_deposit_nft(&deposit_metadata, payment.clone());

        self.send()
            .direct_dcdt(&caller_address, &nft_token, 0, &payment);
    }

    #[payable("*")]
    #[endpoint(fundFromPool)]
    fn fund_from_pool(&self) {
        let (token, payment) = self.call_value().single_fungible_dcdt();
        require!(payment > 0, "amount must be greater than 0");

        self.convert_to_wrewa(token, payment);
    }

    #[endpoint(takeFunds)]
    fn take_funds(&self, pool_token: TokenIdentifier, amount: BigUint) {
        require!(amount > 0, "amount must be greater than 0");

        let caller_address = self.blockchain().get_caller();

        require!(
            !self.pools(pool_token.clone()).is_empty(),
            "non-existent pool"
        );
        require!(
            caller_address == self.pools(pool_token.clone()).get(),
            "invalid caller address"
        );

        self.convert_wrewa(pool_token.clone(), amount.clone());

        self.send()
            .direct_dcdt(&caller_address, &pool_token, 0, &amount);
    }

    #[payable("*")]
    #[endpoint(withdraw)]
    fn withdraw(&self) -> BigUint {
        let (token_id, nft_nonce, amount) = self.call_value().single_dcdt().into_tuple();
        let caller_address = self.blockchain().get_caller();

        require!(amount > 0, "amount must be greater than 0");
        require!(token_id == self.nft_token().get(), "invalid token");

        let nft_info = self.blockchain().get_dcdt_token_data(
            &self.blockchain().get_sc_address(),
            &token_id,
            nft_nonce,
        );

        let nft_metadata = nft_info.decode_attributes::<DepositPosition<Self::Api>>();
        let rounds_in_pool = self.blockchain().get_block_round() - nft_metadata.round;

        require!(rounds_in_pool > 0, "Invalid round");

        let withdraw_amount =
            self.calculate_amount_for_withdrawal(amount, BigUint::from(rounds_in_pool));

        let wrewa_token_id = &self.wrewa_token().get();
        let contract_balance = self.blockchain().get_dcdt_balance(
            &self.blockchain().get_sc_address(),
            wrewa_token_id,
            0,
        );

        require!(
            withdraw_amount <= contract_balance,
            "the amount withdrawn is too high"
        );

        self.send()
            .direct_dcdt(&caller_address, wrewa_token_id, 0, &withdraw_amount);

        withdraw_amount
    }

    #[only_owner]
    #[endpoint(setLocalRolesNftToken)]
    fn set_local_roles_nft_token(&self, roles: MultiValueEncoded<DcdtLocalRole>) {
        require!(!self.nft_token().is_empty(), "No nft token issued");

        let token = self.nft_token().get();
        self.set_local_roles(token, roles.to_vec());
    }

    #[callback]
    fn change_roles_callback(&self, #[call_result] result: ManagedAsyncCallResult<()>) {
        match result {
            ManagedAsyncCallResult::Ok(()) => {
                self.last_error_message().clear();
            }
            ManagedAsyncCallResult::Err(message) => {
                self.last_error_message().set(&message.err_msg);
            }
        }
    }

    fn set_local_roles(&self, token: TokenIdentifier, roles: ManagedVec<DcdtLocalRole>) {
        self.send()
            .dcdt_system_sc_proxy()
            .set_special_roles(&self.blockchain().get_sc_address(), &token, roles.iter())
            .async_call()
            .with_callback(self.callbacks().change_roles_callback())
            .call_and_exit();
    }

    fn calculate_amount_for_withdrawal(self, deposit_amount: BigUint, time: BigUint) -> BigUint {
        let percent = (time * self.deposit_apy().get()) / BigUint::from(SECONDS_PER_YEAR);

        deposit_amount.clone() + ((percent * deposit_amount) / BigUint::from(BP))
    }

    fn nft_burn(&self, token_identifier: TokenIdentifier, nonce: u64, amount: BigUint) {
        self.send()
            .dcdt_local_burn(&token_identifier, nonce, &amount);
    }

    fn mint_deposit_nft(
        self,
        deposit_metadata: &DepositPosition<Self::Api>,
        amount: BigUint,
    ) -> u64 {
        let big_zero = BigUint::zero();
        let empty_buffer = ManagedBuffer::new();
        let empty_vec = ManagedVec::from_raw_handle(empty_buffer.get_raw_handle());

        self.send().dcdt_nft_create(
            &self.nft_token().get(),
            &amount,
            &empty_buffer,
            &big_zero,
            &empty_buffer,
            deposit_metadata,
            &empty_vec,
        )
    }

    fn convert_wrewa(&self, _pool_token: TokenIdentifier, _amount: BigUint) {
        //TODO:  integration with dex
    }

    fn convert_to_wrewa(&self, _pool_token: TokenIdentifier, _amount: BigUint) {
        //TODO:  integration with dex
    }

    #[view]
    #[storage_mapper("pools")]
    fn pools(&self, token: TokenIdentifier) -> SingleValueMapper<ManagedAddress>;

    #[view]
    #[storage_mapper("wrewa_token")]
    fn wrewa_token(&self) -> SingleValueMapper<TokenIdentifier>;

    #[view]
    #[storage_mapper("deposit_apy")]
    fn deposit_apy(&self) -> SingleValueMapper<BigUint>;

    #[view(nftToken)]
    #[storage_mapper("nftToken")]
    fn nft_token(&self) -> SingleValueMapper<TokenIdentifier>;

    #[view(lastErrorMessage)]
    #[storage_mapper("lastErrorMessage")]
    fn last_error_message(&self) -> SingleValueMapper<ManagedBuffer>;
}
