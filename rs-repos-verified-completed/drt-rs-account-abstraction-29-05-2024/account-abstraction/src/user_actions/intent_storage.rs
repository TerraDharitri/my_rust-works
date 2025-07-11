use super::intents::{Intent, IntentId};

dharitri_sc::imports!();

#[dharitri_sc::module]
pub trait IntentStorageModule {
    #[storage_mapper("allUserIntents")]
    fn all_user_intents(&self, user_id: AddressId) -> UnorderedSetMapper<IntentId>;

    #[storage_mapper("userIntent")]
    fn user_intent(
        &self,
        user_id: AddressId,
        intent_id: IntentId,
    ) -> SingleValueMapper<Intent<Self::Api>>;

    #[storage_mapper("lastIntentId")]
    fn last_intent_id(&self) -> SingleValueMapper<IntentId>;
}
