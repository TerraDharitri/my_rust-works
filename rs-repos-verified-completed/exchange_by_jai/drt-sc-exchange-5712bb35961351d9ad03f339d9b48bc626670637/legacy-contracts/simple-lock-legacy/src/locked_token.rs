dharitri_sc::imports!();
dharitri_sc::derive_imports!();

#[derive(TypeAbi, TopEncode, TopDecode, NestedDecode, NestedEncode, PartialEq, Debug, Clone)]
pub struct LockedTokenAttributes<M: ManagedTypeApi> {
    pub original_token_id: RewaOrDcdtTokenIdentifier<M>,
    pub original_token_nonce: u64,
    pub unlock_epoch: u64,
}

#[dharitri_sc::module]
pub trait LockedTokenModule {
    #[view(getLockedTokenId)]
    #[storage_mapper("lockedTokenId")]
    fn locked_token(&self) -> NonFungibleTokenMapper;
}
