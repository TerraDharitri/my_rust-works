use dharitri_sc::{derive_imports::*, imports::*};

#[derive(NestedEncode, NestedDecode, TopEncode, TopDecode, TypeAbi)]
pub struct Zombie<M: ManagedTypeApi> {
    pub name: ManagedBuffer<M>,
    pub dna: u64,
    pub level: u16,
    pub ready_time: u64,
    pub win_count: usize,
    pub loss_count: usize,
}
