use crate::{num_bigint, DebugApi};
use core::{
    cmp::Ordering,
    ops::{Add, BitAnd, BitOr, BitXor, Div, Mul, Neg, Rem, Shl, Shr, Sub},
};
use numbat_wasm::{
    api::{BigIntApi, ErrorApiImpl, Handle},
    err_msg,
    types::heap::BoxedBytes,
};
use num_traits::{pow, sign::Signed, Zero};

use super::big_int_util::big_int_to_i64;

fn assert_positive(bi: &num_bigint::BigInt) {
    assert!(
        bi.sign() == num_bigint::Sign::Minus,
        "bitwise operations only allowed on positive integers"
    );
}

macro_rules! binary_op_method {
    ($method_name:ident, $rust_op_name:ident) => {
        fn $method_name(&self, dest: Handle, x: Handle, y: Handle) {
            let mut managed_types = self.m_types_borrow_mut();
            let bi_x = managed_types.big_int_map.get(x);
            let bi_y = managed_types.big_int_map.get(y);
            let result = bi_x.$rust_op_name(bi_y);
            managed_types.big_int_map.insert(dest, result);
        }
    };
}

macro_rules! binary_bitwise_op_method {
    ($method_name:ident, $rust_op_name:ident) => {
        fn $method_name(&self, dest: Handle, x: Handle, y: Handle) {
            let mut managed_types = self.m_types_borrow_mut();
            let bi_x = managed_types.big_int_map.get(x);
            assert_positive(&bi_x);
            let bi_y = managed_types.big_int_map.get(y);
            assert_positive(&bi_y);
            let result = bi_x.$rust_op_name(bi_y);
            managed_types.big_int_map.insert(dest, result);
        }
    };
}

macro_rules! unary_op_method {
    ($method_name:ident, $rust_op_name:ident) => {
        fn $method_name(&self, dest: Handle, x: Handle) {
            let mut managed_types = self.m_types_borrow_mut();
            let bi_x = managed_types.big_int_map.get(x);
            let result = bi_x.$rust_op_name();
            managed_types.big_int_map.insert(dest, result);
        }
    };
}

impl DebugApi {
    pub(crate) fn bi_overwrite(&self, destination: Handle, value: num_bigint::BigInt) {
        let mut managed_types = self.m_types_borrow_mut();
        managed_types.big_int_map.insert(destination, value);
    }
}

impl BigIntApi for DebugApi {
    #[allow(dead_code)]
    fn bi_new(&self, value: i64) -> Handle {
        let mut managed_types = self.m_types_borrow_mut();
        managed_types
            .big_int_map
            .insert_new_handle(num_bigint::BigInt::from(value))
    }

    fn bi_set_int64(&self, destination: Handle, value: i64) {
        self.bi_overwrite(destination, num_bigint::BigInt::from(value))
    }

    fn bi_unsigned_byte_length(&self, handle: Handle) -> usize {
        self.bi_get_unsigned_bytes(handle).len()
    }

    fn bi_get_unsigned_bytes(&self, handle: Handle) -> BoxedBytes {
        let managed_types = self.m_types_borrow();
        let bi = managed_types.big_int_map.get(handle);
        if bi.is_zero() {
            BoxedBytes::empty()
        } else {
            let (_, bytes) = bi.to_bytes_be();
            bytes.into()
        }
    }

    fn bi_set_unsigned_bytes(&self, dest: Handle, bytes: &[u8]) {
        let mut managed_types = self.m_types_borrow_mut();
        let result = num_bigint::BigInt::from_bytes_be(num_bigint::Sign::Plus, bytes);
        managed_types.big_int_map.insert(dest, result);
    }

    fn bi_signed_byte_length(&self, handle: Handle) -> usize {
        self.bi_get_signed_bytes(handle).len()
    }

    fn bi_get_signed_bytes(&self, handle: Handle) -> BoxedBytes {
        let managed_types = self.m_types_borrow();
        let bi = managed_types.big_int_map.get(handle);
        if bi.is_zero() {
            BoxedBytes::empty()
        } else {
            bi.to_signed_bytes_be().into()
        }
    }

    fn bi_set_signed_bytes(&self, dest: Handle, bytes: &[u8]) {
        let mut managed_types = self.m_types_borrow_mut();
        let result = num_bigint::BigInt::from_signed_bytes_be(bytes);
        managed_types.big_int_map.insert(dest, result);
    }

    fn bi_to_i64(&self, handle: Handle) -> Option<i64> {
        let managed_types = self.m_types_borrow();
        let bi = managed_types.big_int_map.get(handle);
        big_int_to_i64(bi)
    }

    binary_op_method! {bi_add, add}
    binary_op_method! {bi_sub, sub}

    fn bi_sub_unsigned(&self, dest: Handle, x: Handle, y: Handle) {
        let mut managed_types = self.m_types_borrow_mut();
        let bi_x = managed_types.big_int_map.get(x);
        let bi_y = managed_types.big_int_map.get(y);
        let result = bi_x.sub(bi_y);
        if result.sign() == num_bigint::Sign::Minus {
            self.signal_error(err_msg::BIG_UINT_SUB_NEGATIVE);
        }
        managed_types.big_int_map.insert(dest, result);
    }

    binary_op_method! {bi_mul, mul}
    binary_op_method! {bi_t_div, div}
    binary_op_method! {bi_t_mod, rem}

    unary_op_method! {bi_abs, abs}
    unary_op_method! {bi_neg, neg}

    fn bi_sign(&self, x: Handle) -> numbat_wasm::api::Sign {
        let managed_types = self.m_types_borrow();
        let bi = managed_types.big_int_map.get(x);
        match bi.sign() {
            num_bigint::Sign::Minus => numbat_wasm::api::Sign::Minus,
            num_bigint::Sign::NoSign => numbat_wasm::api::Sign::NoSign,
            num_bigint::Sign::Plus => numbat_wasm::api::Sign::Plus,
        }
    }

    fn bi_cmp(&self, x: Handle, y: Handle) -> Ordering {
        let managed_types = self.m_types_borrow();
        let bi_x = managed_types.big_int_map.get(x);
        let bi_y = managed_types.big_int_map.get(y);
        bi_x.cmp(bi_y)
    }

    unary_op_method! {bi_sqrt, sqrt}

    fn bi_pow(&self, dest: Handle, x: Handle, y: Handle) {
        let mut managed_types = self.m_types_borrow_mut();
        let bi_x = managed_types.big_int_map.get(x);
        let bi_y = managed_types.big_int_map.get(y);
        let exp = big_int_to_i64(bi_y).unwrap() as usize;
        let result = pow(bi_x.clone(), exp);
        managed_types.big_int_map.insert(dest, result);
    }

    fn bi_log2(&self, x: Handle) -> u32 {
        let managed_types = self.m_types_borrow();
        let bi_x = managed_types.big_int_map.get(x);
        bi_x.bits() as u32 - 1
    }

    binary_bitwise_op_method! {bi_and, bitand}
    binary_bitwise_op_method! {bi_or, bitor}
    binary_bitwise_op_method! {bi_xor, bitxor}

    fn bi_shr(&self, dest: Handle, x: Handle, bits: usize) {
        let mut managed_types = self.m_types_borrow_mut();
        let bi_x = managed_types.big_int_map.get(x);
        assert_positive(bi_x);
        let result = bi_x.shr(bits);
        managed_types.big_int_map.insert(dest, result);
    }

    fn bi_shl(&self, dest: Handle, x: Handle, bits: usize) {
        let mut managed_types = self.m_types_borrow_mut();
        let bi_x = managed_types.big_int_map.get(x);
        assert_positive(bi_x);
        let result = bi_x.shl(bits);
        managed_types.big_int_map.insert(dest, result);
    }
}
