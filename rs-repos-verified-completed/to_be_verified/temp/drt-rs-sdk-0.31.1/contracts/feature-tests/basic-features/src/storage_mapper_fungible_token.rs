numbat_wasm::imports!();

#[numbat_wasm::module]
pub trait FungibleTokenMapperFeatures:
    numbat_wasm_modules::default_issue_callbacks::DefaultIssueCallbacksModule
{
    #[payable("REWA")]
    #[endpoint]
    fn issue_fungible_default_callback(
        &self,
        token_ticker: ManagedBuffer,
        initial_supply: BigUint,
    ) {
        let payment_amount = self.call_value().rewa_value();
        self.fungible_token_mapper().issue(
            payment_amount,
            ManagedBuffer::new(),
            token_ticker,
            initial_supply,
            0,
            None,
        );
    }

    #[payable("REWA")]
    #[endpoint]
    fn issue_fungible_custom_callback(&self, token_ticker: ManagedBuffer, initial_supply: BigUint) {
        let payment = self.call_value().rewa_value();
        let cb = if initial_supply > 0 {
            FungibleTokenMapperFeatures::callbacks(self).custom_issue_non_zero_supply_cb()
        } else {
            FungibleTokenMapperFeatures::callbacks(self).custom_issue_zero_supply_cb()
        };

        self.fungible_token_mapper().issue(
            payment,
            ManagedBuffer::new(),
            token_ticker,
            initial_supply,
            0,
            Some(cb),
        );
    }

    #[callback]
    fn custom_issue_zero_supply_cb(
        &self,
        #[call_result] result: ManagedAsyncCallResult<TokenIdentifier>,
    ) {
        match result {
            ManagedAsyncCallResult::Ok(token_id) => {
                self.fungible_token_mapper().set_token_id(&token_id);
            },
            ManagedAsyncCallResult::Err(_) => {},
        }
    }

    #[callback]
    fn custom_issue_non_zero_supply_cb(&self, #[call_result] result: ManagedAsyncCallResult<()>) {
        match result {
            ManagedAsyncCallResult::Ok(()) => {
                let token_id = self.call_value().token();
                self.fungible_token_mapper().set_token_id(&token_id);
            },
            ManagedAsyncCallResult::Err(_) => {},
        }
    }

    #[payable("REWA")]
    #[endpoint]
    fn issue_and_set_all_roles_fungible(&self, token_ticker: ManagedBuffer) {
        let payment = self.call_value().rewa_value();
        self.fungible_token_mapper().issue_and_set_all_roles(
            payment,
            ManagedBuffer::new(),
            token_ticker,
            0,
            None,
        );
    }

    #[endpoint]
    fn set_local_roles_fungible(&self) {
        let roles = [DcdtLocalRole::Mint, DcdtLocalRole::Burn];
        let cb = FungibleTokenMapperFeatures::callbacks(self).set_roles_callback();
        self.fungible_token_mapper()
            .set_local_roles(&roles[..], Some(cb));
    }

    #[callback]
    fn set_roles_callback(&self, #[call_result] result: ManagedAsyncCallResult<()>) {
        match result {
            ManagedAsyncCallResult::Ok(()) => {
                self.roles_set().set(&true);
            },
            ManagedAsyncCallResult::Err(_) => {},
        }
    }

    #[endpoint]
    fn mint_fungible(&self, amount: BigUint) -> DcdtTokenPayment<Self::Api> {
        self.fungible_token_mapper().mint(amount)
    }

    #[endpoint]
    fn mint_and_send_fungible(
        &self,
        to: ManagedAddress,
        amount: BigUint,
    ) -> DcdtTokenPayment<Self::Api> {
        self.fungible_token_mapper().mint_and_send(&to, amount)
    }

    #[endpoint]
    fn burn_fungible(&self, amount: BigUint) {
        self.fungible_token_mapper().burn(&amount);
    }

    #[endpoint]
    fn get_balance_fungible(&self) -> BigUint {
        self.fungible_token_mapper().get_balance()
    }

    #[payable("*")]
    #[endpoint]
    fn require_same_token_fungible(&self) {
        let payment_token = self.call_value().token();
        self.fungible_token_mapper()
            .require_same_token(&payment_token);
    }

    #[payable("*")]
    #[endpoint]
    fn require_all_same_token_fungible(&self) {
        let payments = self.call_value().all_dcdt_transfers();
        self.fungible_token_mapper()
            .require_all_same_token(&payments);
    }

    #[view(getFungibleTokenId)]
    #[storage_mapper("fungibleTokenMapper")]
    fn fungible_token_mapper(&self) -> FungibleTokenMapper<Self::Api>;

    #[storage_mapper("rolesSet")]
    fn roles_set(&self) -> SingleValueMapper<bool>;
}
