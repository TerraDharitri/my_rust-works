use crate::abi;
use alloc::vec::Vec;
use core::ops::{Add, Div, Mul, Neg, Rem, Sub};
use core::ops::{AddAssign, DivAssign, MulAssign, RemAssign, SubAssign};

// BigInt sign.
pub enum Sign {
	Minus,
	NoSign,
	Plus,
}

/// Definition of the BigInt type required by the API.
pub trait BigIntApi:
	Sized
	+ From<Self::BigUint>
	+ From<i64>
	+ From<i32>
	+ Clone
	+ Add<Output = Self>
	+ AddAssign
	+ Sub<Output = Self>
	+ SubAssign
	+ Mul<Output = Self>
	+ MulAssign
	+ Div<Output = Self>
	+ DivAssign
	+ Rem<Output = Self>
	+ RemAssign
	+ Neg
	+ PartialEq<Self>
	+ Eq
	+ PartialOrd<Self>
	+ Ord
	+ PartialEq<i64>
	+ PartialOrd<i64>
	+ numbat_codec::NestedEncode
	+ numbat_codec::TopEncode
	+ numbat_codec::NestedDecode
	+ numbat_codec::TopDecode
	+ abi::TypeAbi
{
	type BigUint;

	fn zero() -> Self {
		0i64.into()
	}

	fn abs_uint(&self) -> Self::BigUint;

	fn sign(&self) -> Sign;

	fn to_signed_bytes_be(&self) -> Vec<u8>;

	fn from_signed_bytes_be(bytes: &[u8]) -> Self;
}
