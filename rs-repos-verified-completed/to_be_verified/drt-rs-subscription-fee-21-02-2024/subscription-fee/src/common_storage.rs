dharitri_sc::imports!();

use common_structs::UniquePayments;

use crate::{service::ServiceInfo, subtract_payments::Epoch};

#[dharitri_sc::module]
pub trait CommonStorageModule {
    #[view(getAcceptedFeesTokens)]
    #[storage_mapper("acceptedFeesTokens")]
    fn accepted_fees_tokens(&self) -> UnorderedSetMapper<TokenIdentifier>;

    #[storage_mapper("userId")]
    fn user_id(&self) -> AddressToIdMapper<Self::Api>;

    #[view(getUserDepositedFees)]
    #[storage_mapper("userDepositedFees")]
    fn user_deposited_fees(
        &self,
        user_id: AddressId,
    ) -> SingleValueMapper<UniquePayments<Self::Api>>;

    #[view(getMinStableTokenDepositValue)]
    #[storage_mapper("minStableTokenDepositValue")]
    fn min_stable_token_deposit_value(&self) -> SingleValueMapper<BigUint>;

    #[storage_mapper("userNextPaymentEpoch")]
    fn user_next_payment_epoch(
        &self,
        user_id: AddressId,
        service_id: AddressId,
        service_index: usize,
    ) -> SingleValueMapper<Epoch>;

    #[storage_mapper("serviceId")]
    fn service_id(&self) -> AddressToIdMapper<Self::Api>;

    #[view(getPendingServices)]
    #[storage_mapper("pendingServices")]
    fn pending_services(&self) -> UnorderedSetMapper<ManagedAddress>;

    #[storage_mapper("pendingServiceInfo")]
    fn pending_service_info(
        &self,
        service_address: &ManagedAddress,
    ) -> SingleValueMapper<ManagedVec<ServiceInfo<Self::Api>>>;

    // one service may have multiple options
    #[view(getServiceInfo)]
    #[storage_mapper("serviceInfo")]
    fn service_info(
        &self,
        service_id: AddressId,
    ) -> SingleValueMapper<ManagedVec<ServiceInfo<Self::Api>>>;

    #[view(getSubscribedUsers)]
    #[storage_mapper("subscribedUsers")]
    fn subscribed_users(
        &self,
        service_id: AddressId,
        service_index: usize,
    ) -> UnorderedSetMapper<AddressId>;

    #[storage_mapper("pairAddressForToken")]
    fn pair_address_for_token(
        &self,
        token_id: &TokenIdentifier,
    ) -> SingleValueMapper<ManagedAddress<Self::Api>>;

    #[storage_mapper("stableTokenId")]
    fn stable_token_id(&self) -> SingleValueMapper<TokenIdentifier>;

    #[storage_mapper("wrewaTokenId")]
    fn wrewa_token_id(&self) -> SingleValueMapper<TokenIdentifier>;

    #[storage_mapper("priceQueryAddress")]
    fn price_query_address(&self) -> SingleValueMapper<ManagedAddress>;
}
