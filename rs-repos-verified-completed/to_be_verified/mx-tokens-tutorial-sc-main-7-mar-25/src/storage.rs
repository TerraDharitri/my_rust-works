use dharitri_sc::imports::*;

#[dharitri_sc::module]
pub trait StorageModule {
    #[view]
    #[storage_mapper]
    fn last_issued_token_id(&self) -> SingleValueMapper<TokenIdentifier>;
}
