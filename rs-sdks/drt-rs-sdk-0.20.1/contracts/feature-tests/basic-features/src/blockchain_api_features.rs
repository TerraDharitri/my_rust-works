numbat_wasm::imports!();

/// Contains all events that can be emitted by the contract.
#[numbat_wasm::module]
pub trait BlockchainApiFeatures {
    #[endpoint]
    fn get_caller(&self) -> ManagedAddress {
        self.blockchain().get_caller()
    }

    #[endpoint]
    fn get_owner_address(&self) -> ManagedAddress {
        self.blockchain().get_owner_address()
    }

    #[endpoint]
    fn get_shard_of_address(&self, address: &ManagedAddress) -> u32 {
        self.blockchain().get_shard_of_address(address)
    }

    #[endpoint]
    fn is_smart_contract(&self, address: &ManagedAddress) -> bool {
        self.blockchain().is_smart_contract(address)
    }

    #[endpoint]
    fn get_state_root_hash_legacy(&self) -> ManagedByteArray<Self::Api, 32> {
        self.blockchain().get_state_root_hash()
    }

    #[endpoint]
    fn get_tx_hash_legacy(&self) -> ManagedByteArray<Self::Api, 32> {
        self.blockchain().get_tx_hash()
    }

    #[endpoint]
    fn get_gas_left(&self) -> u64 {
        self.blockchain().get_gas_left()
    }

    #[endpoint]
    fn get_cumulated_validator_rewards(&self) -> BigUint {
        self.blockchain().get_cumulated_validator_rewards()
    }

    #[endpoint]
    fn get_dcdt_local_roles(&self, token_id: TokenIdentifier) -> MultiResultVec<BoxedBytes> {
        let roles = self.blockchain().get_dcdt_local_roles(&token_id);
        let role_names: Vec<BoxedBytes> = roles
            .iter()
            .map(|role| BoxedBytes::from(role.as_role_name()))
            .collect();
        role_names.into()
    }
}
