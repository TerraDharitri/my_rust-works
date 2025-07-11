#![no_std]
#![allow(clippy::string_lit_as_bytes)]

pub mod user;
mod value_state;

pub use user::User;
pub use value_state::ValueState;

dharitri_sc::imports!();

const HASH_LEN: usize = 32;

#[dharitri_sc::contract]
pub trait Attestation {
	#[init]
	fn init(
		&self,
		registration_cost: BigUint,
		max_nonce_diff: u64,
		attesters: MultiValueEncoded<ManagedAddress>,
	) {
		require!(!attesters.is_empty(), "Cannot have empty attester list");

		self.registration_cost().set(&registration_cost);
		self.max_nonce_diff().set(&max_nonce_diff);

		for attester in attesters {
			self.attestator_state(&attester).set(&ValueState::Approved);
		}
	}

	#[endpoint]
	fn version(&self) -> &'static [u8] {
		env!("CARGO_PKG_VERSION").as_bytes()
	}

	fn can_overwrite_user_data(&self, obfuscated_data: &ManagedByteArray<Self::Api, HASH_LEN>) {
		if !self.user_state(obfuscated_data).is_empty() {
			let existing_user_state = self.user_state(obfuscated_data).get();
			require!(
				existing_user_state.value_state != ValueState::Approved,
				"user already registered"
			);
			require!(
				self.blockchain().get_block_nonce() - existing_user_state.nonce
					>= self.max_nonce_diff().get(),
				"data already registered for other user"
			);
		}
	}

	/// Called by the user.
	/// Overwrites anything previously saved under `obfuscated_data`, if possible.
	#[payable("REWA")]
	#[endpoint]
	fn register(
		&self,
		obfuscated_data: ManagedByteArray<Self::Api, HASH_LEN>,
		#[payment] payment: BigUint,
	) {
		require!(
			payment == self.registration_cost().get(),
			"should pay the exact registration cost"
		);

		self.can_overwrite_user_data(&obfuscated_data);

		let user_state = User {
			value_state: ValueState::Requested,
			public_info: ManagedByteArray::default(),
			private_info: ManagedBuffer::new(),
			address: self.blockchain().get_caller(),
			_attester: ManagedAddress::zero(),
			nonce: self.blockchain().get_block_nonce(),
		};
		self.user_state(&obfuscated_data).set(&user_state);
	}

	/// Called by the user.
	/// `public_info` is currently the hash of the OTP.
	#[endpoint(saveAttestation)]
	fn save_attestation(
		&self,
		obfuscated_data: &ManagedByteArray<Self::Api, HASH_LEN>,
		public_info: ManagedByteArray<Self::Api, HASH_LEN>,
	) {
		require!(
			!self.user_state(obfuscated_data).is_empty(),
			"registration not started for user"
		);

		let mut user_state = self.user_state(obfuscated_data).get();

		require!(
			user_state.value_state == ValueState::Requested,
			"user not in requested state"
		);
		require!(
			user_state.address == self.blockchain().get_caller(),
			"only user can attest"
		);

		let block_nonce = self.blockchain().get_block_nonce();
		require!(
			block_nonce - user_state.nonce <= self.max_nonce_diff().get(),
			"registration period expired"
		);

		user_state.public_info = public_info;
		user_state.nonce = block_nonce;
		user_state.value_state = ValueState::Pending;

		self.user_state(obfuscated_data).set(&user_state);
	}

	/// Called by the attestator.
	#[endpoint(confirmAttestation)]
	fn confirm_attestation(
		&self,
		obfuscated_data: ManagedByteArray<Self::Api, HASH_LEN>,
		private_info: ManagedBuffer,
	) {
		let caller = self.blockchain().get_caller();
		let attestator_s = self.attestator_state(&caller).get();
		require!(attestator_s.exists(), "caller is not an attestator");

		require!(
			!self.user_state(&obfuscated_data).is_empty(),
			"no user registered under key"
		);

		let mut user_state = self.user_state(&obfuscated_data).get();

		require!(
			user_state.value_state == ValueState::Pending,
			"must be called after saveAttestation"
		);
		require!(
			self.attestator_state(&caller).get() == ValueState::Approved,
			"caller is not an attester"
		);

		let hashed = self.crypto().keccak256(&private_info);
		require!(
			hashed == user_state.public_info,
			"private/public info mismatch"
		);

		require!(
			self.blockchain().get_block_nonce() - user_state.nonce <= self.max_nonce_diff().get(),
			"outside of grace period"
		);

		user_state.private_info = private_info;
		user_state.value_state = ValueState::Approved;
		self.user_state(&obfuscated_data).set(&user_state);
	}

	#[only_owner]
	#[endpoint(setRegisterCost)]
	fn set_register_cost(&self, registration_cost: BigUint) {
		self.registration_cost().set(&registration_cost);
	}

	#[only_owner]
	#[endpoint(addAttestator)]
	fn add_attestator(&self, address: ManagedAddress) {
		self.attestator_state(&address).set(&ValueState::Approved);
	}

	#[only_owner]
	#[endpoint(removeAttestator)]
	fn remove_attestator(&self, address: ManagedAddress) {
		self.attestator_state(&address).clear();
	}

	#[only_owner]
	#[endpoint]
	fn claim(&self) {
		let rewa_token_id = RewaOrDcdtTokenIdentifier::rewa();
		let contract_owner = self.blockchain().get_owner_address();
		self.send().direct(
			&contract_owner,
			&rewa_token_id,
			0,
			&self.blockchain().get_sc_balance(&rewa_token_id, 0),
		);
	}

	#[view(getUserState)]
	fn get_user_state_endpoint(
		&self,
		obfuscated_data: ManagedByteArray<Self::Api, HASH_LEN>,
	) -> OptionalValue<User<Self::Api>> {
		if !self.user_state(&obfuscated_data).is_empty() {
			OptionalValue::Some(self.user_state(&obfuscated_data).get())
		} else {
			OptionalValue::None
		}
	}

	#[view(getPublicKey)]
	fn get_public_key(
		&self,
		obfuscated_data: ManagedByteArray<Self::Api, HASH_LEN>,
	) -> ManagedAddress {
		require!(
			!self.user_state(&obfuscated_data).is_empty(),
			"no user registered under key"
		);
		let user_state = self.user_state(&obfuscated_data).get();
		require!(
			user_state.value_state == ValueState::Approved,
			"userData not yet attested"
		);

		user_state.address
	}

	// STORAGE

	#[view(getRegistrationCost)]
	#[storage_mapper("registration_cost")]
	fn registration_cost(&self) -> SingleValueMapper<BigUint>;

	#[view(getMaxNonceDiff)]
	#[storage_mapper("max_nonce_diff")]
	fn max_nonce_diff(&self) -> SingleValueMapper<u64>;

	#[storage_mapper("attestator_state")]
	fn attestator_state(&self, address: &ManagedAddress) -> SingleValueMapper<ValueState>;

	#[storage_mapper("user_state")]
	fn user_state(
		&self,
		obfuscated_data: &ManagedByteArray<Self::Api, HASH_LEN>,
	) -> SingleValueMapper<User<Self::Api>>;
}
