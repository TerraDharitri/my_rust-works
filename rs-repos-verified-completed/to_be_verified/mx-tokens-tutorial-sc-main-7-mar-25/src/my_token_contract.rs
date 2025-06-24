#![no_std]

// 1. Issue Token (0,05 REWA). caller -> SC (issue token) async call -> DcdtSystemSC -> TOKEN ID (callback)
// 2. Add roles. caller -> SC (add roles) -> DcdtSystemSC (NftCreate)
// 3. Add quantity -> minting an NFT. caller -> SC (mints nft) -> NFT sent back to caller

// NFT
// Token id
// nonce (NftCreate)
// amount = 1

// SFT
// Token id
// nonce (NftCreate)
// amount >= 1 (NftAddQuantity)

// Fungible Tokens
// Token id
// nonce = 0
// amount >= 1 (Mint)

mod callbacks;
mod storage;

use callbacks::CallbackProxy;
use dharitri_sc::derive_imports::*;
#[allow(unused_imports)]
use dharitri_sc::imports::*;

#[type_abi]
#[derive(TopEncode, TopDecode)]
pub struct MockAttr;

/// An empty contract. To be used as a template when starting a new contract from scratch.
#[dharitri_sc::contract]
pub trait MyTokenContract: storage::StorageModule + callbacks::CallbacksModule {
    #[payable("REWA")]
    #[endpoint]
    fn issue_nft_token_id(&self, token_display_name: ManagedBuffer, token_ticker: ManagedBuffer) {
        let issue_cost = self.call_value().rewa().clone_value();
        self.send()
            .dcdt_system_sc_proxy()
            .issue_non_fungible(
                issue_cost,
                token_display_name,
                token_ticker,
                NonFungibleTokenProperties::default(),
            )
            .callback(self.callbacks().issue_token_callback())
            .async_call_and_exit();
    }

    #[payable("REWA")]
    #[endpoint]
    fn issue_sft_token_id(&self, token_display_name: ManagedBuffer, token_ticker: ManagedBuffer) {
        let issue_cost = self.call_value().rewa().clone_value();
        self.send()
            .dcdt_system_sc_proxy()
            .issue_semi_fungible(
                issue_cost,
                token_display_name,
                token_ticker,
                SemiFungibleTokenProperties::default(),
            )
            .callback(self.callbacks().issue_token_callback())
            .async_call_and_exit();
    }

    #[payable("REWA")]
    #[endpoint]
    fn issue_fungible_token_id(
        &self,
        token_display_name: ManagedBuffer,
        token_ticker: ManagedBuffer,
        initial_supply: BigUint,
    ) {
        let issue_cost = self.call_value().rewa().clone_value();
        self.send()
            .dcdt_system_sc_proxy()
            .issue_fungible(
                issue_cost,
                token_display_name,
                token_ticker,
                initial_supply,
                FungibleTokenProperties::default(),
            )
            .callback(self.callbacks().issue_fungible_token_callback())
            .async_call_and_exit();
    }

    #[endpoint]
    fn add_roles(&self, roles: ManagedVec<DcdtLocalRole>) {
        let address = self.blockchain().get_sc_address();
        let token_identifier = self.last_issued_token_id().get();

        self.send()
            .dcdt_system_sc_proxy()
            .set_special_roles(address, token_identifier, roles.iter())
            .async_call_and_exit();
    }

    #[endpoint]
    fn add_quantity(&self, nonce: u64, amount: BigUint) {
        let token_identifier = self.last_issued_token_id().get();

        self.send()
            .dcdt_local_mint(&token_identifier, nonce, &amount);
    }

    #[allow(clippy::too_many_arguments)]
    #[endpoint]
    fn mint_nft(
        &self,
        amount: BigUint,
        name: ManagedBuffer,
        royalties: BigUint,
        hash: ManagedBuffer,
        attributes: MockAttr,
        uris: ManagedVec<Self::Api, ManagedBuffer>,
    ) -> u64 {
        let token_identifier = self.last_issued_token_id().get();

        self.send().dcdt_nft_create(
            &token_identifier,
            &amount,
            &name,
            &royalties,
            &hash,
            &attributes,
            &uris,
        )
    }

    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}
}
