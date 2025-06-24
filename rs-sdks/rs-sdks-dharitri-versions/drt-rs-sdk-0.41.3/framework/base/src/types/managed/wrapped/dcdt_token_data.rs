use crate::{
    api::ManagedTypeApi,
    codec,
    codec::{
        derive::{NestedDecode, NestedEncode, TopDecode, TopEncode},
        *,
    },
    contract_base::ExitCodecErrorHandler,
    types::{BigUint, DcdtTokenType, ManagedAddress, ManagedBuffer, ManagedVec},
};

use crate as dharitri_sc; // needed by the TypeAbi generated code
use crate::derive::TypeAbi;

const DECODE_ATTRIBUTE_ERROR_PREFIX: &[u8] = b"error decoding DCDT attributes: ";

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

impl<M: ManagedTypeApi> Default for DcdtTokenData<M> {
    fn default() -> Self {
        DcdtTokenData {
            token_type: DcdtTokenType::Fungible,
            amount: BigUint::zero(),
            frozen: false,
            hash: ManagedBuffer::new(),
            name: ManagedBuffer::new(),
            attributes: ManagedBuffer::new(),
            creator: ManagedAddress::zero(),
            royalties: BigUint::zero(),
            uris: ManagedVec::new(),
        }
    }
}

impl<M: ManagedTypeApi> DcdtTokenData<M> {
    pub fn try_decode_attributes<T: TopDecode>(&self) -> Result<T, DecodeError> {
        T::top_decode(self.attributes.clone()) // TODO: remove clone
    }

    pub fn decode_attributes<T: TopDecode>(&self) -> T {
        let Ok(value) = T::top_decode_or_handle_err(
            self.attributes.clone(), // TODO: remove clone
            ExitCodecErrorHandler::<M>::from(DECODE_ATTRIBUTE_ERROR_PREFIX),
        );
        value
    }
}
