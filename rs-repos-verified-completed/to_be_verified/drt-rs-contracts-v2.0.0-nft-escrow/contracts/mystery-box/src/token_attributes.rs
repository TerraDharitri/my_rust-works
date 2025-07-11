dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use crate::config::{self, COLLECTION_NAME, ROYALTIES, SFT_AMOUNT};

#[dharitri_sc::module]
pub trait TokenAttributesModule: config::ConfigModule {
    fn create_new_tokens<T: TopEncode + NestedEncode>(
        &self,
        amount: BigUint,
        attributes: &T,
    ) -> DcdtTokenPayment {
        let mystery_box_token_id = self.mystery_box_token_id().get();
        let mut encoded_attributes = ManagedBuffer::new();
        attributes
            .dep_encode(&mut encoded_attributes)
            .unwrap_or_else(|err| sc_panic!(err.message_str()));

        let attributes_to_nonce_mapper = self.attributes_to_nonce_mapping(&encoded_attributes);
        let existing_nonce = attributes_to_nonce_mapper.get();
        if existing_nonce != 0 {
            self.send()
                .dcdt_local_mint(&mystery_box_token_id, existing_nonce, &amount);

            return DcdtTokenPayment::new(mystery_box_token_id, existing_nonce, amount);
        }

        let mystery_box_uris = self.mystery_box_uris().get();
        let empty_buffer = ManagedBuffer::new();
        let new_nonce = self.send().dcdt_nft_create(
            &mystery_box_token_id,
            &BigUint::from(SFT_AMOUNT), // We need 1 element in the contract for later AddQuantity
            &ManagedBuffer::from(COLLECTION_NAME),
            &BigUint::from(ROYALTIES),
            &empty_buffer,
            attributes,
            &mystery_box_uris,
        );
        attributes_to_nonce_mapper.set(new_nonce);

        self.send()
            .dcdt_local_mint(&mystery_box_token_id, new_nonce, &amount);

        DcdtTokenPayment::new(mystery_box_token_id, new_nonce, amount)
    }

    #[storage_mapper("attributesToNonceMapping")]
    fn attributes_to_nonce_mapping(&self, attributes: &ManagedBuffer) -> SingleValueMapper<u64>;
}
