use crate::unique_payments::UniquePayments;

dharitri_sc::imports!();

#[dharitri_sc::module]
pub trait CommonStorageModule {
    #[storage_mapper("userIds")]
    fn user_ids(&self) -> AddressToIdMapper<Self::Api>;

    #[view(getUserTokens)]
    #[storage_mapper("userTokens")]
    fn user_tokens(&self, user_id: AddressId) -> SingleValueMapper<UniquePayments<Self::Api>>;
}
