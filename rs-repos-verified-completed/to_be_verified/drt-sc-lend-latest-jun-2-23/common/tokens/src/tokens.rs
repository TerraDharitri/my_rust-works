#![no_std]

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

#[dharitri_sc::module]
pub trait AccountTokenModule {
    #[view(getAccountToken)]
    #[storage_mapper("account_token")]
    fn account_token(&self) -> NonFungibleTokenMapper<Self::Api>;

    #[view(getAccountPositions)]
    #[storage_mapper("account_positions")]
    fn account_positions(&self) -> UnorderedSetMapper<u64>;
}
