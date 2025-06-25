dharitri_sc::imports!();
dharitri_sc::derive_imports!();

use crate::{config, pair_proxy};

const TEMPORARY_OWNER_PERIOD_BLOCKS: u64 = 50;

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, PartialEq, TypeAbi)]
pub struct PairTokens<M: ManagedTypeApi> {
    pub first_token_id: TokenIdentifier<M>,
    pub second_token_id: TokenIdentifier<M>,
}

#[derive(ManagedVecItem, TopEncode, TopDecode, PartialEq, TypeAbi)]
pub struct PairContractMetadata<M: ManagedTypeApi> {
    first_token_id: TokenIdentifier<M>,
    second_token_id: TokenIdentifier<M>,
    address: ManagedAddress<M>,
}

#[dharitri_sc::module]
pub trait FactoryModule:
    config::ConfigModule + crate::read_pair_storage::ReadPairStorageModule
{
    fn init_factory(&self, pair_template_address_opt: Option<ManagedAddress>) {
        if let Some(addr) = pair_template_address_opt {
            self.pair_template_address().set(&addr);
        }

        self.temporary_owner_period()
            .set_if_empty(TEMPORARY_OWNER_PERIOD_BLOCKS);
    }

    fn create_pair(
        &self,
        first_token_id: &TokenIdentifier,
        second_token_id: &TokenIdentifier,
        owner: &ManagedAddress,
        total_fee_percent: u64,
        special_fee_percent: u64,
        initial_liquidity_adder: &ManagedAddress,
        admins: MultiValueEncoded<ManagedAddress>,
    ) -> ManagedAddress {
        require!(
            !self.pair_template_address().is_empty(),
            "pair contract template is empty"
        );
        let new_address = self
            .tx()
            .typed(pair_proxy::PairProxy)
            .init(
                first_token_id,
                second_token_id,
                self.blockchain().get_sc_address(),
                owner,
                total_fee_percent,
                special_fee_percent,
                initial_liquidity_adder,
                admins,
            )
            .from_source(self.pair_template_address().get())
            .code_metadata(
                CodeMetadata::UPGRADEABLE | CodeMetadata::READABLE | CodeMetadata::PAYABLE_BY_SC,
            )
            .returns(ReturnsNewManagedAddress)
            .sync_call();

        self.pair_map().insert(
            PairTokens {
                first_token_id: first_token_id.clone(),
                second_token_id: second_token_id.clone(),
            },
            new_address.clone(),
        );
        self.pair_temporary_owner().insert(
            new_address.clone(),
            (
                self.blockchain().get_caller(),
                self.blockchain().get_block_nonce(),
            ),
        );
        new_address
    }

    fn upgrade_pair(&self, pair_address: ManagedAddress) {
        self.tx()
            .to(pair_address)
            .typed(pair_proxy::PairProxy)
            .upgrade()
            .from_source(self.pair_template_address().get())
            .code_metadata(
                CodeMetadata::UPGRADEABLE | CodeMetadata::READABLE | CodeMetadata::PAYABLE_BY_SC,
            )
            .upgrade_async_call_and_exit();
    }

    #[view(getAllPairsManagedAddresses)]
    fn get_all_pairs_addresses(&self) -> MultiValueEncoded<ManagedAddress> {
        let mut result = MultiValueEncoded::new();
        for pair in self.pair_map().values() {
            result.push(pair);
        }
        result
    }

    #[view(getAllPairTokens)]
    fn get_all_token_pairs(&self) -> MultiValueEncoded<PairTokens<Self::Api>> {
        let mut result = MultiValueEncoded::new();
        for pair in self.pair_map().keys() {
            result.push(pair);
        }
        result
    }

    #[view(getAllPairContractMetadata)]
    fn get_all_pair_contract_metadata(&self) -> MultiValueEncoded<PairContractMetadata<Self::Api>> {
        let mut result = MultiValueEncoded::new();
        for (k, v) in self.pair_map().iter() {
            let pair_metadata = PairContractMetadata {
                first_token_id: k.first_token_id,
                second_token_id: k.second_token_id,
                address: v,
            };
            result.push(pair_metadata);
        }
        result
    }

    #[view(getPair)]
    fn get_pair(
        &self,
        first_token_id: TokenIdentifier,
        second_token_id: TokenIdentifier,
    ) -> ManagedAddress {
        let mut address = self
            .pair_map()
            .get(&PairTokens {
                first_token_id: first_token_id.clone(),
                second_token_id: second_token_id.clone(),
            })
            .unwrap_or_else(ManagedAddress::zero);

        if address.is_zero() {
            address = self
                .pair_map()
                .get(&PairTokens {
                    first_token_id: second_token_id,
                    second_token_id: first_token_id,
                })
                .unwrap_or_else(ManagedAddress::zero);
        }
        address
    }

    fn get_pair_temporary_owner(&self, pair_address: &ManagedAddress) -> Option<ManagedAddress> {
        let result = self.pair_temporary_owner().get(pair_address);

        match result {
            Some((temporary_owner, creation_block)) => {
                let expire_block = creation_block + self.temporary_owner_period().get();

                if expire_block <= self.blockchain().get_block_nonce() {
                    self.pair_temporary_owner().remove(pair_address);
                    None
                } else {
                    Some(temporary_owner)
                }
            }
            None => None,
        }
    }

    #[only_owner]
    #[endpoint(clearPairTemporaryOwnerStorage)]
    fn clear_pair_temporary_owner_storage(&self) -> usize {
        let size = self.pair_temporary_owner().len();
        self.pair_temporary_owner().clear();
        size
    }
}
