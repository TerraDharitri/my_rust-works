numbat_wasm::imports!();

/// Storage mapper test.
#[numbat_wasm_derive::module]
pub trait SingleValueMapperFeatures {
	#[view]
	#[storage_mapper("my_single_value_mapper")]
	fn map_my_single_value_mapper(&self) -> SingleValueMapper<Self::Storage, Self::BigInt>;

	#[endpoint]
	fn my_single_value_mapper_increment_1(&self, amount: Self::BigInt) {
		let my_single_value_mapper = self.map_my_single_value_mapper();
		my_single_value_mapper.set(&(my_single_value_mapper.get() + amount));
	}

	/// Same as my_single_value_mapper_increment_1, but expressed more compactly.
	#[endpoint]
	fn my_single_value_mapper_increment_2(&self, amount: &Self::BigInt) {
		self.map_my_single_value_mapper()
			.update(|value| *value += amount);
	}

	// Often times the update of a value is conditioned by a requirement
	// For example, when subtracting from a balance, we must first check that we have enough funds
	// The closure can return a Result, which can be propagated (either directly, or via sc_try!)
	#[endpoint]
	fn my_single_value_mapper_subtract_with_require(&self, amount: &Self::BigInt) -> SCResult<()> {
		self.map_my_single_value_mapper().update(|value| {
			require!(*value >= *amount, "not enough funds");
			*value -= amount;
			Ok(())
		})
	}

	#[endpoint]
	fn clear_single_value_mapper(&self) {
		self.map_my_single_value_mapper().clear();
	}

	#[endpoint]
	fn is_empty_single_value_mapper(&self) -> bool {
		self.map_my_single_value_mapper().is_empty()
	}
}
