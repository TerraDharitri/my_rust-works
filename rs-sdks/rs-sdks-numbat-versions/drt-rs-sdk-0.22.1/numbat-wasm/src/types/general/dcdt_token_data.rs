use crate::{
    api::ManagedTypeApi,
    types::{AsManagedRef, BigUint, ManagedAddress, ManagedBuffer, ManagedType, ManagedVec},
};
use numbat_codec::*;

use super::DcdtTokenType;

use numbat_codec::numbat_codec_derive::{NestedDecode, NestedEncode, TopDecode, TopEncode};

use crate as numbat_wasm; // needed by the TypeAbi generated code
use crate::derive::TypeAbi;

#[derive(TopDecode, TopEncode, NestedDecode, NestedEncode, TypeAbi, Debug)]
pub struct DcdtTokenData<M: ManagedTypeApi> {
    pub token_type: DcdtTokenType,
    pub amount: BigUint<M>,
    pub frozen: bool,
    pub hash: ManagedBuffer<M>,
    pub name: ManagedBuffer<M>,
    pub attributes: ManagedBuffer<M>,
    pub creator: ManagedAddress<M>,
    pub royalties: BigUint<M>,
    pub uris: ManagedVec<M, ManagedBuffer<M>>,
}

impl<M: ManagedTypeApi> DcdtTokenData<M> {
    pub fn type_manager(&self) -> M {
        self.amount.type_manager()
    }

    pub fn decode_attributes<T: TopDecode>(&self) -> Result<T, DecodeError> {
        T::top_decode(self.attributes.as_managed_ref())
    }
}
