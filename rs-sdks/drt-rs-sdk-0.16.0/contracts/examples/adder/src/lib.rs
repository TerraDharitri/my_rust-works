#![no_std]

numbat_wasm::imports!();

/// One of the simplest smart contracts possible,
/// it holds a single variable in storage, which anyone can increment.
#[numbat_wasm_derive::contract]
pub trait Adder {
	#[view(getSum)]
	#[storage_get("sum")]
	fn get_sum(&self) -> Self::BigInt;

	#[storage_set("sum")]
	fn set_sum(&self, sum: &Self::BigInt);

	#[init]
	fn init(&self, initial_value: &Self::BigInt) {
		self.set_sum(initial_value);
	}

	/// Add desired amount to the storage variable.
	#[endpoint]
	fn add(&self, value: &Self::BigInt) -> SCResult<()> {
		let mut sum = self.get_sum();
		sum += value;
		self.set_sum(&sum);

		Ok(())
	}
}
