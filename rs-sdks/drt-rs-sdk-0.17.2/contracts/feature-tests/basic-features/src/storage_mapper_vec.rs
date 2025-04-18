numbat_wasm::imports!();

/// Storage mapper test.
#[numbat_wasm_derive::module]
pub trait VecMapperFeatures {
	#[view]
	#[storage_mapper("vec_mapper")]
	fn vec_mapper(&self) -> VecMapper<Self::Storage, u32>;

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
	fn vec_mapper_len(&self) -> usize {
		self.vec_mapper().len()
	}
}
