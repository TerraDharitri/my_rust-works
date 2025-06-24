use dharitri_sc::imports::*;

#[dharitri_sc::module]
pub trait CustomCallbacks: crate::storage::StorageModule {
    #[callback]
    fn issue_callback(
        &self,
        #[call_result] result: ManagedAsyncCallResult<RewaOrDcdtTokenIdentifier>,
    ) {
        match result {
            ManagedAsyncCallResult::Ok(token_id) => {
                self.collection_token_id().set(token_id.unwrap_dcdt());
            }
            ManagedAsyncCallResult::Err(_) => {
                let returned = self.call_value().rewa_or_single_dcdt();
                if returned.token_identifier.is_rewa() && returned.amount > 0 {
                    self.tx().to(ToCaller).rewa(returned.amount).transfer();
                }
            }
        }
    }
}
