dharitri_sc::imports!();

// Always keep in sync with the token-related storage mappers. Only modify if really necessary.
#[dharitri_sc::module]
pub trait DefaultIssueCallbacksModule {
    #[callback]
    fn default_issue_cb(
        &self,
        initial_caller: ManagedAddress,
        storage_key: ManagedBuffer,
        #[call_result] result: ManagedAsyncCallResult<TokenIdentifier>,
    ) {
        match result {
            ManagedAsyncCallResult::Ok(token_id) => {
                let mapper =
                    SingleValueMapper::<Self::Api, TokenIdentifier>::new(storage_key.into());
                mapper.set(&token_id);
            },
            ManagedAsyncCallResult::Err(_) => {
                self.return_failed_issue_funds(initial_caller);
            },
        }
    }

    #[callback]
    fn default_issue_init_supply_cb(
        &self,
        initial_caller: ManagedAddress,
        storage_key: ManagedBuffer,
        #[call_result] result: ManagedAsyncCallResult<()>,
    ) {
        match result {
            ManagedAsyncCallResult::Ok(()) => {
                let token_id = self.call_value().single_dcdt().token_identifier;
                let mapper =
                    SingleValueMapper::<Self::Api, TokenIdentifier>::new(storage_key.into());
                mapper.set(&token_id);
            },
            ManagedAsyncCallResult::Err(_) => {
                self.return_failed_issue_funds(initial_caller);
            },
        }
    }

    fn return_failed_issue_funds(&self, initial_caller: ManagedAddress) {
        let rewa_returned = self.call_value().rewa_value();
        if rewa_returned > 0u32 {
            self.send().direct_rewa(&initial_caller, &rewa_returned);
        }
    }
}
