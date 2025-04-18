use crate::{
    world_mock::{is_smart_contract_address, DcdtInstance},
    DebugApi,
};
use numbat_wasm::{
    api::{BlockchainApi, BlockchainApiImpl, Handle, ManagedBufferApi, ManagedTypeApi},
    types::{
        Address, BigUint, DcdtLocalRole, DcdtLocalRoleFlags, DcdtTokenData, DcdtTokenType,
        ManagedAddress, ManagedBuffer, ManagedType, ManagedVec, TokenIdentifier, H256,
    },
};

impl BlockchainApi for DebugApi {
    type BlockchainApiImpl = DebugApi;

    fn blockchain_api_impl() -> Self::BlockchainApiImpl {
        DebugApi::new_from_static()
    }
}

impl BlockchainApiImpl for DebugApi {
    fn get_caller_legacy(&self) -> Address {
        self.input_ref().from.clone()
    }

    fn get_sc_address_legacy(&self) -> Address {
        self.input_ref().to.clone()
    }

    fn get_owner_address_legacy(&self) -> Address {
        self.with_contract_account(|account| {
            account
                .contract_owner
                .clone()
                .unwrap_or_else(|| panic!("contract owner address not set"))
        })
    }

    fn get_shard_of_address_legacy(&self, _address: &Address) -> u32 {
        panic!("get_shard_of_address not implemented")
    }

    fn is_smart_contract_legacy(&self, address: &Address) -> bool {
        is_smart_contract_address(address)
    }

    fn get_balance_legacy(&self, address: &Address) -> Handle {
        assert!(
            address == &self.get_sc_address_legacy(),
            "get balance not yet implemented for accounts other than the contract itself"
        );
        let rewa_balance = self.with_contract_account(|account| account.rewa_balance.clone());
        self.insert_new_big_uint(rewa_balance)
    }

    fn get_state_root_hash_legacy(&self) -> H256 {
        panic!("get_state_root_hash_legacy not yet implemented")
    }

    fn get_tx_hash_legacy(&self) -> H256 {
        self.input_ref().tx_hash.clone()
    }

    fn get_gas_left(&self) -> u64 {
        self.input_ref().gas_limit
    }

    fn get_block_timestamp(&self) -> u64 {
        self.blockchain_ref().current_block_info.block_timestamp
    }

    fn get_block_nonce(&self) -> u64 {
        self.blockchain_ref().current_block_info.block_nonce
    }

    fn get_block_round(&self) -> u64 {
        self.blockchain_ref().current_block_info.block_round
    }

    fn get_block_epoch(&self) -> u64 {
        self.blockchain_ref().current_block_info.block_epoch
    }

    fn get_block_random_seed_legacy(&self) -> Box<[u8; 48]> {
        self.blockchain_ref()
            .current_block_info
            .block_random_seed
            .clone()
    }

    fn get_prev_block_timestamp(&self) -> u64 {
        self.blockchain_ref().previous_block_info.block_timestamp
    }

    fn get_prev_block_nonce(&self) -> u64 {
        self.blockchain_ref().previous_block_info.block_nonce
    }

    fn get_prev_block_round(&self) -> u64 {
        self.blockchain_ref().previous_block_info.block_round
    }

    fn get_prev_block_epoch(&self) -> u64 {
        self.blockchain_ref().previous_block_info.block_epoch
    }

    fn get_prev_block_random_seed_legacy(&self) -> Box<[u8; 48]> {
        self.blockchain_ref()
            .previous_block_info
            .block_random_seed
            .clone()
    }

    fn get_current_dcdt_nft_nonce<M: ManagedTypeApi>(
        &self,
        address: &ManagedAddress<M>,
        token: &TokenIdentifier<M>,
    ) -> u64 {
        assert!(
            self.mb_eq(address.get_raw_handle(), self.get_sc_address_handle()),
            "get_current_dcdt_nft_nonce not yet implemented for accounts other than the contract itself"
        );

        self.with_contract_account(|account| {
            account
                .dcdt
                .get_by_identifier_or_default(token.to_dcdt_identifier().as_slice())
                .last_nonce
        })
    }

    fn get_dcdt_balance<M: ManagedTypeApi>(
        &self,
        address: &ManagedAddress<M>,
        token: &TokenIdentifier<M>,
        nonce: u64,
    ) -> BigUint<M> {
        assert!(
            self.mb_eq(address.get_raw_handle(), self.get_sc_address_handle()),
            "get_dcdt_balance not yet implemented for accounts other than the contract itself"
        );

        let dcdt_balance = self.with_contract_account(|account| {
            account
                .dcdt
                .get_dcdt_balance(token.to_dcdt_identifier().as_slice(), nonce)
        });
        BigUint::from_raw_handle(self.insert_new_big_uint(dcdt_balance))
    }

    fn get_dcdt_token_data<M: ManagedTypeApi>(
        &self,
        address: &ManagedAddress<M>,
        token: &TokenIdentifier<M>,
        nonce: u64,
    ) -> DcdtTokenData<M> {
        self.blockchain_cache()
            .with_account(&address.to_address(), |account| {
                let instance = account
                    .dcdt
                    .get_by_identifier(token.to_dcdt_identifier().as_slice())
                    .unwrap()
                    .instances
                    .get_by_nonce(nonce)
                    .unwrap();

                self.dcdt_token_data_from_instance(nonce, instance)
            })
    }

    fn get_dcdt_local_roles<M: ManagedTypeApi>(
        &self,
        token_id: &TokenIdentifier<M>,
    ) -> DcdtLocalRoleFlags {
        let sc_address = self.input_ref().to.clone();
        self.blockchain_cache()
            .with_account(&sc_address, |account| {
                let mut result = DcdtLocalRoleFlags::NONE;
                if let Some(dcdt_data) = account
                    .dcdt
                    .get_by_identifier(token_id.to_dcdt_identifier().as_slice())
                {
                    for role_name in dcdt_data.roles.get() {
                        result |= DcdtLocalRole::from(role_name.as_slice()).to_flag();
                    }
                }

                result
            })
    }
}

impl DebugApi {
    fn dcdt_token_data_from_instance<M: ManagedTypeApi>(
        &self,
        nonce: u64,
        instance: &DcdtInstance,
    ) -> DcdtTokenData<M> {
        let creator = if let Some(creator) = &instance.metadata.creator {
            ManagedAddress::from_address(creator)
        } else {
            ManagedAddress::zero()
        };

        let mut uris = ManagedVec::new();
        for uri in &instance.metadata.uri {
            uris.push(ManagedBuffer::new_from_bytes(uri.as_slice()));
        }

        DcdtTokenData {
            token_type: DcdtTokenType::based_on_token_nonce(nonce),
            amount: BigUint::from_raw_handle(self.insert_new_big_uint(instance.balance.clone())),
            frozen: false,
            hash: ManagedBuffer::from_raw_handle(
                self.insert_new_managed_buffer(instance.metadata.hash.clone().unwrap_or_default()),
            ),
            name: ManagedBuffer::from_raw_handle(
                self.insert_new_managed_buffer(instance.metadata.name.clone()),
            ),
            attributes: ManagedBuffer::from_raw_handle(
                self.insert_new_managed_buffer(instance.metadata.attributes.clone()),
            ),
            creator,
            royalties: BigUint::from_raw_handle(
                self.insert_new_big_uint(num_bigint::BigUint::from(instance.metadata.royalties)),
            ),
            uris,
        }
    }
}
