use super::{AndesBigInt, AndesBigUint, AndesEllipticCurve};
use crate::AndesApiImpl;
use numbat_wasm::api::ContractBase;

impl ContractBase for AndesApiImpl {
	type EllipticCurve = AndesEllipticCurve;
	type BigUint = AndesBigUint;
	type BigInt = AndesBigInt;
	type Storage = Self;
	type CallValue = Self;
	type SendApi = Self;
	type BlockchainApi = Self;
	type CryptoApi = Self;
	type LogApi = Self;
	type ErrorApi = Self;

	#[inline]
	fn get_storage_raw(&self) -> Self::Storage {
		self.clone()
	}

	#[inline]
	fn call_value(&self) -> Self::CallValue {
		self.clone()
	}

	#[inline]
	fn send(&self) -> Self::SendApi {
		self.clone()
	}

	#[inline]
	fn blockchain(&self) -> Self::BlockchainApi {
		self.clone()
	}

	#[inline]
	fn crypto(&self) -> Self::CryptoApi {
		self.clone()
	}

	#[inline]
	fn log_api_raw(&self) -> Self::LogApi {
		self.clone()
	}

	#[inline]
	fn error_api(&self) -> Self::ErrorApi {
		self.clone()
	}
}
