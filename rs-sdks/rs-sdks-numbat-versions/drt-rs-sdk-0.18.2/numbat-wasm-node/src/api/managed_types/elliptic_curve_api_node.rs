use super::AndesBigUint;
use crate::String;
use numbat_wasm::api::EllipticCurveApi;
use numbat_wasm::types::BoxedBytes;
use numbat_wasm::*;

extern "C" {
	fn bigIntNew(value: i64) -> i32;

	fn addEC(
		xResultHandle: i32,
		yResultHandle: i32,
		ecHandle: i32,
		fstPointXHandle: i32,
		fstPointYHandle: i32,
		sndPointXHandle: i32,
		sndPointYHandle: i32,
	);

	fn doubleEC(
		xResultHandle: i32,
		yResultHandle: i32,
		ecHandle: i32,
		pointXHandle: i32,
		pointYHandle: i32,
	);

	fn isOnCurveEC(ecHandle: i32, pointXHandle: i32, pointYHandle: i32) -> i32;

	fn scalarMultEC(
		xResultHandle: i32,
		yResultHandle: i32,
		ecHandle: i32,
		pointXHandle: i32,
		pointYHandle: i32,
		dataOffset: *const u8,
		length: i32,
	) -> i32;

	fn scalarBaseMultEC(
		xResultHandle: i32,
		yResultHandle: i32,
		ecHandle: i32,
		dataOffset: *const u8,
		length: i32,
	) -> i32;

	fn marshalEC(xPairHandle: i32, yPairHandle: i32, ecHandle: i32, resultOffset: *mut u8) -> i32;

	fn marshalCompressedEC(
		xPairHandle: i32,
		yPairHandle: i32,
		ecHandle: i32,
		resultOffset: *mut u8,
	) -> i32;

	fn unmarshalEC(
		xResultHandle: i32,
		yResultHandle: i32,
		ecHandle: i32,
		dataOffset: *const u8,
		length: i32,
	) -> i32;

	fn unmarshalCompressedEC(
		xResultHandle: i32,
		yResultHandle: i32,
		ecHandle: i32,
		dataOffset: *const u8,
		length: i32,
	) -> i32;

	fn generateKeyEC(
		xPubKeyHandle: i32,
		yPubKeyHandle: i32,
		ecHandle: i32,
		resultOffset: *mut u8,
	) -> i32;

	fn ellipticCurveGetValues(
		ecHandle: i32,
		fieldOrderHandle: i32,
		basePointOrderHandle: i32,
		eqConstantHandle: i32,
		xBasePointHandle: i32,
		yBasePointHandle: i32,
	) -> i32;

	fn getCurveLengthEC(ecHandle: i32) -> i32;

	fn getPrivKeyByteLengthEC(ecHandle: i32) -> i32;

	fn createEC(dataOffset: i32, dataLength: i32) -> i32;
}

type EllipticCurveComponents<BigUint> = (BigUint, BigUint, BigUint, BigUint, BigUint, u32);

pub struct AndesEllipticCurve {
	pub handle: i32,
}

impl numbat_wasm::abi::TypeAbi for AndesEllipticCurve {
	fn type_name() -> String {
		String::from("EllipticCurve")
	}
}

impl EllipticCurveApi for AndesEllipticCurve {
	type BigUint = AndesBigUint;

	fn get_values(&self) -> EllipticCurveComponents<Self::BigUint> {
		unsafe {
			let field_order_handle = bigIntNew(0);
			let base_point_order_handle = bigIntNew(0);
			let eq_constant_handle = bigIntNew(0);
			let x_base_point_handle = bigIntNew(0);
			let y_base_point_handle = bigIntNew(0);
			let _handle = ellipticCurveGetValues(
				self.handle,
				field_order_handle,
				base_point_order_handle,
				eq_constant_handle,
				x_base_point_handle,
				y_base_point_handle,
			);
			(
				AndesBigUint {
					handle: field_order_handle,
				},
				AndesBigUint {
					handle: base_point_order_handle,
				},
				AndesBigUint {
					handle: eq_constant_handle,
				},
				AndesBigUint {
					handle: x_base_point_handle,
				},
				AndesBigUint {
					handle: y_base_point_handle,
				},
				self.get_ec_length(),
			)
		}
	}

	fn create_ec(curve: &str) -> Self {
		unsafe {
            let curve_as_slice = curve.as_bytes();
            let data: BoxedBytes = BoxedBytes::from(curve_as_slice);
			let handle = createEC(data.as_ptr() as i32, data.len() as i32);
			AndesEllipticCurve { handle }
		}
	}

	fn get_ec_length(&self) -> u32 {
		unsafe { getCurveLengthEC(self.handle) as u32 }
	}

	fn get_priv_key_byte_length(&self) -> u32 {
		unsafe { getPrivKeyByteLengthEC(self.handle) as u32 }
	}

	fn add_ec(
		&self,
		x_first_point: Self::BigUint,
		y_first_point: Self::BigUint,
		x_second_point: Self::BigUint,
		y_second_point: Self::BigUint,
	) -> (Self::BigUint, Self::BigUint) {
		unsafe {
			let x_result_handle = bigIntNew(0);
			let y_result_handle = bigIntNew(0);
			addEC(
				x_result_handle,
				y_result_handle,
				self.handle,
				x_first_point.handle,
				y_first_point.handle,
				x_second_point.handle,
				y_second_point.handle,
			);
			(
				AndesBigUint {
					handle: x_result_handle,
				},
				AndesBigUint {
					handle: y_result_handle,
				},
			)
		}
	}

	fn double_ec(
		&self,
		x_point: Self::BigUint,
		y_point: Self::BigUint,
	) -> (Self::BigUint, Self::BigUint) {
		unsafe {
			let x_result_handle = bigIntNew(0);
			let y_result_handle = bigIntNew(0);
			doubleEC(
				x_result_handle,
				y_result_handle,
				self.handle,
				x_point.handle,
				y_point.handle,
			);
			(
				AndesBigUint {
					handle: x_result_handle,
				},
				AndesBigUint {
					handle: y_result_handle,
				},
			)
		}
	}

	fn is_on_curve_ec(&self, x_point: Self::BigUint, y_point: Self::BigUint) -> bool {
		unsafe { isOnCurveEC(self.handle, x_point.handle, y_point.handle) == 1 }
	}

	fn scalar_mult(
		&self,
		x_point: Self::BigUint,
		y_point: Self::BigUint,
		data: BoxedBytes,
	) -> (Self::BigUint, Self::BigUint) {
		unsafe {
			let x_result_handle = bigIntNew(0);
			let y_result_handle = bigIntNew(0);
			scalarMultEC(
				x_result_handle,
				y_result_handle,
				self.handle,
				x_point.handle,
				y_point.handle,
				data.as_ptr(),
				data.len() as i32,
			);
			(
				AndesBigUint {
					handle: x_result_handle,
				},
				AndesBigUint {
					handle: y_result_handle,
				},
			)
		}
	}

	fn scalar_base_mult(&self, data: BoxedBytes) -> (Self::BigUint, Self::BigUint) {
		unsafe {
			let x_result_handle = bigIntNew(0);
			let y_result_handle = bigIntNew(0);
			scalarBaseMultEC(
				x_result_handle,
				y_result_handle,
				self.handle,
				data.as_ptr(),
				data.len() as i32,
			);
			(
				AndesBigUint {
					handle: x_result_handle,
				},
				AndesBigUint {
					handle: y_result_handle,
				},
			)
		}
	}

	fn marshal_ec(&self, x_pair: Self::BigUint, y_pair: Self::BigUint) -> BoxedBytes {
		unsafe {
			let byte_length = (getCurveLengthEC(self.handle) + 7) / 8;
			let mut result = BoxedBytes::allocate(1 + 2 * byte_length as usize);
			marshalEC(
				x_pair.handle,
				y_pair.handle,
				self.handle,
				result.as_mut_ptr(),
			);
			result
		}
	}

	fn marshal_compressed_ec(&self, x_pair: Self::BigUint, y_pair: Self::BigUint) -> BoxedBytes {
		unsafe {
			let byte_length = (getCurveLengthEC(self.handle) + 7) / 8;
			let mut result = BoxedBytes::allocate(1 + byte_length as usize);
			marshalCompressedEC(
				x_pair.handle,
				y_pair.handle,
				self.handle,
				result.as_mut_ptr(),
			);
			result
		}
	}

	fn unmarshal_ec(&self, data: BoxedBytes) -> (Self::BigUint, Self::BigUint) {
		unsafe {
			let x_pair_handle = bigIntNew(0);
			let y_pair_handle = bigIntNew(0);
			unmarshalEC(
				x_pair_handle,
				y_pair_handle,
				self.handle,
				data.as_ptr(),
				data.len() as i32,
			);
			(
				AndesBigUint {
					handle: x_pair_handle,
				},
				AndesBigUint {
					handle: y_pair_handle,
				},
			)
		}
	}

	fn unmarshal_compressed_ec(&self, data: BoxedBytes) -> (Self::BigUint, Self::BigUint) {
		unsafe {
			let x_pair_handle = bigIntNew(0);
			let y_pair_handle = bigIntNew(0);
			unmarshalCompressedEC(
				x_pair_handle,
				y_pair_handle,
				self.handle,
				data.as_ptr(),
				data.len() as i32,
			);
			(
				AndesBigUint {
					handle: x_pair_handle,
				},
				AndesBigUint {
					handle: y_pair_handle,
				},
			)
		}
	}

	fn generate_key_ec(&self) -> (Self::BigUint, Self::BigUint, BoxedBytes) {
		unsafe {
			let x_pub_key_handle = bigIntNew(0);
			let y_pub_key_handle = bigIntNew(0);
			let priv_key_length = getPrivKeyByteLengthEC(self.handle);
			let mut private_key = BoxedBytes::allocate(priv_key_length as usize);
			generateKeyEC(
				x_pub_key_handle,
				y_pub_key_handle,
				self.handle,
				private_key.as_mut_ptr(),
			);
			(
				AndesBigUint {
					handle: x_pub_key_handle,
				},
				AndesBigUint {
					handle: y_pub_key_handle,
				},
				private_key,
			)
		}
	}

	fn from_bitsize_ec(bitsize: u32) -> Option<Self> {
		match bitsize {
			224 => Some(Self::create_ec("p224")),
			256 => Some(Self::create_ec("p256")),
			384 => Some(Self::create_ec("p384")),
			521 => Some(Self::create_ec("p521")),
			_ => None,
		}
	}
}

use numbat_codec::*;

impl NestedEncode for AndesEllipticCurve {
	fn dep_encode<O: NestedEncodeOutput>(
		&self,
		dest: &mut O,
	) -> core::result::Result<(), EncodeError> {
		let (field_order, base_point_order, eq_constant, x_base_point, y_base_point, size_of_field) =
			self.get_values();
		NestedEncode::dep_encode(&field_order, dest)?;
		NestedEncode::dep_encode(&base_point_order, dest)?;
		NestedEncode::dep_encode(&eq_constant, dest)?;
		NestedEncode::dep_encode(&x_base_point, dest)?;
		NestedEncode::dep_encode(&y_base_point, dest)?;
		NestedEncode::dep_encode(&size_of_field, dest)?;
		Ok(())
	}

	fn dep_encode_or_exit<O: NestedEncodeOutput, ExitCtx: Clone>(
		&self,
		dest: &mut O,
		c: ExitCtx,
		exit: fn(ExitCtx, EncodeError) -> !,
	) {
		let (field_order, base_point_order, eq_constant, x_base_point, y_base_point, size_of_field) =
			self.get_values();
		NestedEncode::dep_encode_or_exit(&field_order, dest, c.clone(), exit);
		NestedEncode::dep_encode_or_exit(&base_point_order, dest, c.clone(), exit);
		NestedEncode::dep_encode_or_exit(&eq_constant, dest, c.clone(), exit);
		NestedEncode::dep_encode_or_exit(&x_base_point, dest, c.clone(), exit);
		NestedEncode::dep_encode_or_exit(&y_base_point, dest, c.clone(), exit);
		NestedEncode::dep_encode_or_exit(&size_of_field, dest, c, exit);
	}
}

impl TopEncode for AndesEllipticCurve {
	fn top_encode<O: TopEncodeOutput>(&self, output: O) -> Result<(), EncodeError> {
		top_encode_from_nested(self, output)
	}

	fn top_encode_or_exit<O: TopEncodeOutput, ExitCtx: Clone>(
		&self,
		output: O,
		c: ExitCtx,
		exit: fn(ExitCtx, EncodeError) -> !,
	) {
		top_encode_from_nested_or_exit(self, output, c, exit);
	}
}
