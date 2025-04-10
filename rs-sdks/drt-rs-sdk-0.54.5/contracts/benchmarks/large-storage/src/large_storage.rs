#![no_std]

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, Clone)]
pub enum SampleEnum {
    Value1,
    Value2,
}

#[type_abi]
#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, Clone)]
pub struct Structure<M: ManagedTypeApi> {
    pub field1: ManagedBuffer<M>,
    pub field2: SampleEnum,
    pub field3: ManagedBuffer<M>,
}

#[dharitri_sc::contract]
pub trait LargeStorageBenchmark {
    #[init]
    fn init(&self) {}

    #[endpoint(saveStructure)]
    fn save_structure(&self, field1: ManagedBuffer, field2: SampleEnum, field3: ManagedBuffer) {
        let s = Structure {
            field1,
            field2,
            field3,
        };
        self.structure().set(s);
    }

    #[view(savedStructure)]
    #[storage_mapper("savedStructure")]
    fn structure(&self) -> SingleValueMapper<Structure<Self::Api>>;
}
