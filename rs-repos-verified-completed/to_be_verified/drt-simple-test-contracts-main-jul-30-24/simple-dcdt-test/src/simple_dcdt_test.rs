#![no_std]

use dharitri_sc::derive_imports::*;
use dharitri_sc::imports::*;

pub const DCDT_NFT_CREATE_FUNC_NAME: &str = "DCDTNFTCreate";

#[type_abi]
#[derive(
    TopDecode, TopEncode, NestedDecode, NestedEncode, Clone, PartialEq, Eq, Debug, ManagedVecItem,
)]
pub enum DcdtTokenType {
    Fungible,
    NonFungible,
    NonFungibleV2,
    SemiFungible,
    MetaFungible,
    DynamicNFT,
    DynamicSFT,
    DynamicMeta,
}

#[dharitri_sc::contract]
pub trait SimpleDcdtTest {
    #[init]
    fn init(&self) {}

    #[upgrade]
    fn upgrade(&self) {}

    #[endpoint]
    fn local_mint(&self, token_id: TokenIdentifier, nonce: u64, amount: BigUint) {
        self.send().dcdt_local_mint(&token_id, nonce, &amount);
        self.tx()
            .to(ToCaller)
            .single_dcdt(&token_id, nonce, &amount)
            .transfer();
    }

    #[payable("*")]
    #[endpoint]
    fn burn(&self) {
        let dcdt = self.call_value().single_dcdt();
        self.send()
            .dcdt_local_burn(&dcdt.token_identifier, dcdt.token_nonce, &dcdt.amount);
    }

    #[endpoint]
    fn nft_create(
        &self,
        token_id: TokenIdentifier,
        nonce: u64,
        amount: BigUint,
        token_type: DcdtTokenType,
        creator: ManagedBuffer,
    ) {
        let mut arg_buffer = ManagedArgBuffer::new();

        arg_buffer.push_arg(&token_id);
        arg_buffer.push_arg(amount);
        arg_buffer.push_arg(&ManagedBuffer::new()); // name
        arg_buffer.push_arg(&BigUint::zero()); // royalties
        arg_buffer.push_arg(&ManagedBuffer::new()); // hash
        arg_buffer.push_arg(&ManagedBuffer::new()); //attributes
        arg_buffer.push_arg(&ManagedVec::<Self::Api, ManagedBuffer>::new()); // uris

        arg_buffer.push_arg(token_type);
        arg_buffer.push_arg(nonce);
        arg_buffer.push_arg(creator);

        let _ = self.send_raw().call_local_dcdt_built_in_function(
            self.blockchain().get_gas_left(),
            &ManagedBuffer::from(DCDT_NFT_CREATE_FUNC_NAME),
            &arg_buffer,
        );
    }
}
