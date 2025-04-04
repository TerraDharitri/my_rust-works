use crate::error_hook;
use super::unsafe_buffer;

use core::cmp::Ordering;
use core::ops::{Add, Div, Mul, Rem, Sub};
use core::ops::{AddAssign, DivAssign, MulAssign, RemAssign, SubAssign};
use core::ops::{BitAnd, BitOr, BitXor, Shl, Shr};
use core::ops::{BitAndAssign, BitOrAssign, BitXorAssign, ShlAssign, ShrAssign};

use alloc::string::String;
use alloc::vec::Vec;

use numbat_wasm::api::BigUintApi;
use numbat_wasm::err_msg;

extern "C" {
	fn bigIntNew(value: i64) -> i32;

	fn bigIntUnsignedByteLength(x: i32) -> i32;
	fn bigIntGetUnsignedBytes(reference: i32, byte_ptr: *mut u8) -> i32;
	fn bigIntSetUnsignedBytes(destination: i32, byte_ptr: *const u8, byte_len: i32);

	fn bigIntAdd(dest: i32, x: i32, y: i32);
	fn bigIntSub(dest: i32, x: i32, y: i32);
	fn bigIntMul(dest: i32, x: i32, y: i32);
	fn bigIntTDiv(dest: i32, x: i32, y: i32);
	fn bigIntTMod(dest: i32, x: i32, y: i32);

	fn bigIntCmp(x: i32, y: i32) -> i32;
	fn bigIntSign(x: i32) -> i32;

	fn bigIntAnd(dest: i32, x: i32, y: i32);
	fn bigIntOr(dest: i32, x: i32, y: i32);
	fn bigIntXor(dest: i32, x: i32, y: i32);
	fn bigIntShr(dest: i32, x: i32, bits: i32);
	fn bigIntShl(dest: i32, x: i32, bits: i32);
}

pub struct AndesBigUint {
	pub handle: i32, // TODO: fix visibility
}

impl From<u64> for AndesBigUint {
	fn from(item: u64) -> Self {
		unsafe {
			AndesBigUint {
				handle: bigIntNew(item as i64),
			}
		}
	}
}

impl From<u32> for AndesBigUint {
	fn from(item: u32) -> Self {
		unsafe {
			AndesBigUint {
				handle: bigIntNew(item as i64),
			}
		}
	}
}

impl From<usize> for AndesBigUint {
	fn from(item: usize) -> Self {
		unsafe {
			AndesBigUint {
				handle: bigIntNew(item as i64),
			}
		}
	}
}

impl AndesBigUint {
	pub fn from_i64(value: i64) -> AndesBigUint {
		unsafe {
			AndesBigUint {
				handle: bigIntNew(value),
			}
		}
	}
}

impl Clone for AndesBigUint {
	fn clone(&self) -> Self {
		unsafe {
			let clone_handle = bigIntNew(0);
			bigIntAdd(clone_handle, clone_handle, self.handle);
			AndesBigUint {
				handle: clone_handle,
			}
		}
	}
}

/// Subtracts, but exits with error if the result is negative.
/// The same behaviour can be seen in rust BigUint.
unsafe fn big_uint_safe_sub(dest: i32, x: i32, y: i32) {
	bigIntSub(dest, x, y);
	if bigIntSign(dest) < 0 {
		error_hook::signal_error(err_msg::BIG_UINT_SUB_NEGATIVE)
	}
}

macro_rules! binary_operator {
	($trait:ident, $method:ident, $api_func:ident) => {
		impl $trait for AndesBigUint {
			type Output = AndesBigUint;

			fn $method(self, other: AndesBigUint) -> AndesBigUint {
				unsafe {
					let result = bigIntNew(0);
					$api_func(result, self.handle, other.handle);
					AndesBigUint { handle: result }
				}
			}
		}

		impl<'a, 'b> $trait<&'b AndesBigUint> for &'a AndesBigUint {
			type Output = AndesBigUint;

			fn $method(self, other: &AndesBigUint) -> AndesBigUint {
				unsafe {
					let result = bigIntNew(0);
					$api_func(result, self.handle, other.handle);
					AndesBigUint { handle: result }
				}
			}
		}
	};
}

binary_operator! {Add, add, bigIntAdd}
binary_operator! {Sub, sub, big_uint_safe_sub}
binary_operator! {Mul, mul, bigIntMul}
binary_operator! {Div, div, bigIntTDiv}
binary_operator! {Rem, rem, bigIntTMod}

binary_operator! {BitAnd, bitand, bigIntAnd}
binary_operator! {BitOr, bitor, bigIntOr}
binary_operator! {BitXor, bitxor, bigIntXor}

macro_rules! binary_assign_operator {
	($trait:ident, $method:ident, $api_func:ident) => {
		impl $trait<AndesBigUint> for AndesBigUint {
			#[inline]
			fn $method(&mut self, other: Self) {
				unsafe {
					$api_func(self.handle, self.handle, other.handle);
				}
			}
		}

		impl $trait<&AndesBigUint> for AndesBigUint {
			#[inline]
			fn $method(&mut self, other: &AndesBigUint) {
				unsafe {
					$api_func(self.handle, self.handle, other.handle);
				}
			}
		}
	};
}

binary_assign_operator! {AddAssign, add_assign, bigIntAdd}
binary_assign_operator! {SubAssign, sub_assign, big_uint_safe_sub}
binary_assign_operator! {MulAssign, mul_assign, bigIntMul}
binary_assign_operator! {DivAssign, div_assign, bigIntTDiv}
binary_assign_operator! {RemAssign, rem_assign, bigIntTMod}

binary_assign_operator! {BitAndAssign, bitand_assign, bigIntAnd}
binary_assign_operator! {BitOrAssign,  bitor_assign,  bigIntOr}
binary_assign_operator! {BitXorAssign, bitxor_assign, bigIntXor}

macro_rules! shift_traits {
	($shift_trait:ident, $method:ident, $api_func:ident) => {
		impl $shift_trait<usize> for AndesBigUint {
			type Output = AndesBigUint;

			#[inline]
			fn $method(self, rhs: usize) -> AndesBigUint {
				unsafe {
					$api_func(self.handle, self.handle, rhs as i32);
					self
				}
			}
		}

		impl<'a> $shift_trait<usize> for &'a AndesBigUint {
			type Output = AndesBigUint;

			fn $method(self, rhs: usize) -> AndesBigUint {
				unsafe {
					let result = bigIntNew(0);
					$api_func(result, self.handle, rhs as i32);
					AndesBigUint { handle: result }
				}
			}
		}
	};
}

shift_traits! {Shl, shl, bigIntShl}
shift_traits! {Shr, shr, bigIntShr}

macro_rules! shift_assign_traits {
	($shift_assign_trait:ident, $method:ident, $api_func:ident) => {
		impl $shift_assign_trait<usize> for AndesBigUint {
			#[inline]
			fn $method(&mut self, rhs: usize) {
				unsafe {
					$api_func(self.handle, self.handle, rhs as i32);
				}
			}
		}
	};
}

shift_assign_traits! {ShlAssign, shl_assign, bigIntShl}
shift_assign_traits! {ShrAssign, shr_assign, bigIntShr}

impl PartialEq for AndesBigUint {
	#[inline]
	fn eq(&self, other: &Self) -> bool {
		let andes_cmp = unsafe { bigIntCmp(self.handle, other.handle) };
		andes_cmp == 0
	}
}

impl Eq for AndesBigUint {}

impl PartialOrd for AndesBigUint {
	#[inline]
	fn partial_cmp(&self, other: &Self) -> Option<Ordering> {
		Some(self.cmp(other))
	}
}

impl Ord for AndesBigUint {
	#[inline]
	fn cmp(&self, other: &Self) -> Ordering {
		let andes_cmp = unsafe { bigIntCmp(self.handle, other.handle) };
		andes_cmp.cmp(&0)
	}
}

impl PartialEq<u64> for AndesBigUint {
	#[inline]
	fn eq(&self, other: &u64) -> bool {
		PartialEq::eq(self, &AndesBigUint::from(*other))
	}
}

impl PartialOrd<u64> for AndesBigUint {
	#[inline]
	fn partial_cmp(&self, other: &u64) -> Option<Ordering> {
		PartialOrd::partial_cmp(self, &AndesBigUint::from(*other))
	}
}

use numbat_wasm::numbat_codec::*;

impl NestedEncode for AndesBigUint {
	const TYPE_INFO: TypeInfo = TypeInfo::BigUint;

	fn dep_encode<O: NestedEncodeOutput>(&self, dest: &mut O) -> Result<(), EncodeError> {
		// TODO: vector allocation can be avoided by writing directly to dest
		self.to_bytes_be().as_slice().dep_encode(dest)
	}

	fn dep_encode_or_exit<O: NestedEncodeOutput, ExitCtx: Clone>(
		&self,
		dest: &mut O,
		c: ExitCtx,
		exit: fn(ExitCtx, EncodeError) -> !,
	) {
		self.to_bytes_be()
			.as_slice()
			.dep_encode_or_exit(dest, c, exit);
	}
}

impl TopEncode for AndesBigUint {
	const TYPE_INFO: TypeInfo = TypeInfo::BigUint;

	#[inline]
	fn top_encode<O: TopEncodeOutput>(&self, output: O) -> Result<(), EncodeError> {
		output.set_big_uint_handle_or_bytes(self.handle, || self.to_bytes_be());
		Ok(())
	}

	#[inline]
	fn top_encode_or_exit<O: TopEncodeOutput, ExitCtx: Clone>(
		&self,
		output: O,
		_: ExitCtx,
		_: fn(ExitCtx, EncodeError) -> !,
	) {
		output.set_big_uint_handle_or_bytes(self.handle, || self.to_bytes_be());
	}
}

impl NestedDecode for AndesBigUint {
	const TYPE_INFO: TypeInfo = TypeInfo::BigUint;

	fn dep_decode<I: NestedDecodeInput>(input: &mut I) -> Result<Self, DecodeError> {
		let size = usize::dep_decode(input)?;
		let bytes = input.read_slice(size)?;
		Ok(AndesBigUint::from_bytes_be(bytes))
	}

	fn dep_decode_or_exit<I: NestedDecodeInput, ExitCtx: Clone>(
		input: &mut I,
		c: ExitCtx,
		exit: fn(ExitCtx, DecodeError) -> !,
	) -> Self {
		let size = usize::dep_decode_or_exit(input, c.clone(), exit);
		let bytes = input.read_slice_or_exit(size, c, exit);
		AndesBigUint::from_bytes_be(bytes)
	}
}

impl TopDecode for AndesBigUint {
	const TYPE_INFO: TypeInfo = TypeInfo::BigUint;

	fn top_decode<I: TopDecodeInput>(input: I) -> Result<Self, DecodeError> {
		// since can_use_handle is provided constantly,
		// the compiler is smart enough to only ever expand one of the if branches
		let (can_use_handle, handle) = input.try_get_big_uint_handle();
		if can_use_handle {
			Ok(AndesBigUint { handle })
		} else {
			Ok(AndesBigUint::from_bytes_be(&*input.into_boxed_slice_u8()))
		}
	}

	fn top_decode_or_exit<I: TopDecodeInput, ExitCtx: Clone>(
		input: I,
		_: ExitCtx,
		_: fn(ExitCtx, DecodeError) -> !,
	) -> Self {
		// since can_use_handle is provided constantly,
		// the compiler is smart enough to only ever expand one of the if branches
		let (can_use_handle, handle) = input.try_get_big_uint_handle();
		if can_use_handle {
			AndesBigUint { handle }
		} else {
			AndesBigUint::from_bytes_be(&*input.into_boxed_slice_u8())
		}
	}
}

impl numbat_wasm::abi::TypeAbi for AndesBigUint {
	fn type_name() -> String {
		String::from("BigUint")
	}
}

impl BigUintApi for AndesBigUint {
	#[inline]
	fn byte_length(&self) -> i32 {
		unsafe { bigIntUnsignedByteLength(self.handle) }
	}

	fn copy_to_slice_big_endian(&self, slice: &mut [u8]) -> i32 {
		unsafe { bigIntGetUnsignedBytes(self.handle, slice.as_mut_ptr()) }
	}

	fn copy_to_array_big_endian_pad_right(&self, target: &mut [u8; 32]) {
		let byte_len = self.byte_length() as usize;
		if byte_len > 32 {
			error_hook::signal_error(err_msg::BIG_UINT_EXCEEDS_SLICE)
		}
		self.copy_to_slice_big_endian(&mut target[32 - byte_len..]);
	}

	fn to_bytes_be(&self) -> Vec<u8> {
		unsafe {
			let byte_len = bigIntUnsignedByteLength(self.handle);
			let mut vec = vec![0u8; byte_len as usize];
			bigIntGetUnsignedBytes(self.handle, vec.as_mut_ptr());
			vec
		}
	}

	fn to_bytes_be_pad_right(&self, nr_bytes: usize) -> Option<Vec<u8>> {
		unsafe {
			let byte_len = bigIntUnsignedByteLength(self.handle) as usize;
			if byte_len > nr_bytes {
				return None;
			}
			let mut vec = vec![0u8; nr_bytes];
			if byte_len > 0 {
				bigIntGetUnsignedBytes(self.handle, &mut vec[nr_bytes - byte_len]);
			}
			Some(vec)
		}
	}

	fn from_bytes_be(bytes: &[u8]) -> Self {
		unsafe {
			let handle = bigIntNew(0);
			bigIntSetUnsignedBytes(handle, bytes.as_ptr(), bytes.len() as i32);
			AndesBigUint { handle }
		}
	}
}

impl AndesBigUint {
	pub(crate) unsafe fn unsafe_buffer_load_be_pad_right(&self, nr_bytes: usize) -> *const u8 {
		let byte_len = bigIntUnsignedByteLength(self.handle) as usize;
		if byte_len > nr_bytes {
			error_hook::signal_error(err_msg::BIG_UINT_EXCEEDS_SLICE);
		}
		unsafe_buffer::clear_buffer();
		if byte_len > 0 {
			bigIntGetUnsignedBytes(self.handle, unsafe_buffer::buffer_ptr().offset((nr_bytes - byte_len) as isize));
		}
		unsafe_buffer::buffer_ptr()
	}
}
