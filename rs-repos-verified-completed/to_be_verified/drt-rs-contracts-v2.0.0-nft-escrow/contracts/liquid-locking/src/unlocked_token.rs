use dharitri_sc::{api::ManagedTypeApi, types::DcdtTokenPayment};

dharitri_sc::derive_imports!();

#[derive(NestedEncode, NestedDecode, TopEncode, TopDecode, TypeAbi, ManagedVecItem)]
pub struct UnlockedToken<M: ManagedTypeApi> {
    pub token: DcdtTokenPayment<M>,
    pub unbond_epoch: u64,
}
