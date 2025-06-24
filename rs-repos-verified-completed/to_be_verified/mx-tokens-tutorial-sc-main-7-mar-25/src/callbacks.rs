use dharitri_sc::imports::*;

use crate::storage;

#[dharitri_sc::module]
pub trait CallbacksModule: storage::StorageModule {
    #[callback]
    fn issue_token_callback(&self, #[call_result] result: ManagedAsyncCallResult<TokenIdentifier>) {
        match result {
            ManagedAsyncCallResult::Ok(token_id) => self.last_issued_token_id().set(token_id),
            ManagedAsyncCallResult::Err(_) => self.last_issued_token_id().clear(),
        }
    }

    #[callback]
    fn issue_fungible_token_callback(&self, #[call_result] result: ManagedAsyncCallResult<()>) {
        match result {
            ManagedAsyncCallResult::Ok(_) => {
                let (token_identifier, _amount) = self.call_value().rewa_or_single_fungible_dcdt();
                self.last_issued_token_id()
                    .set(token_identifier.unwrap_dcdt())
            }
            ManagedAsyncCallResult::Err(_) => self.last_issued_token_id().clear(),
        }
    }
}
