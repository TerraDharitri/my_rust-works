dharitri_sc::imports!();

/// Storage mapper test.
#[dharitri_sc::module]
pub trait VecMapperFeatures {
    #[view]
    #[storage_mapper("vec_mapper")]
    fn vec_mapper(&self) -> VecMapper<u32>;

    #[storage_mapper_from_address("vec_mapper")]
    fn vec_mapper_from_address(&self, address: ManagedAddress) -> VecMapper<u32, ManagedAddress>;

    #[endpoint]
    fn vec_mapper_push(&self, item: u32) {
        let mut vec_mapper = self.vec_mapper();
        let _ = vec_mapper.push(&item);
    }

    #[view]
    fn vec_mapper_get(&self, index: usize) -> u32 {
        self.vec_mapper().get(index)
    }

    #[view]
    fn vec_mapper_get_at_address(&self, address: ManagedAddress, index: usize) -> u32 {
        self.vec_mapper_from_address(address).get(index)
    }

    #[view]
    fn vec_mapper_len(&self) -> usize {
        self.vec_mapper().len()
    }

    #[view]
    fn vec_mapper_len_at_address(&self, address: ManagedAddress) -> usize {
        self.vec_mapper_from_address(address).len()
    }
}
