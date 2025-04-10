numbat_wasm::imports!();

/// Checks that BigUint/BigInt operators work as expected.
#[numbat_wasm::module]
#[allow(clippy::redundant_clone)]
pub trait BigIntOperators {
    #[endpoint]
    fn add_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        a + b
    }
    #[endpoint]
    fn add_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        a + b
    }
    #[endpoint]
    fn add_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a + b
    }
    #[endpoint]
    fn add_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a + b
    }
    #[endpoint]
    fn sub_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        a - b
    }
    #[endpoint]
    fn sub_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        a - b
    }
    #[endpoint]
    fn sub_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a - b
    }
    #[endpoint]
    fn sub_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a - b
    }
    #[endpoint]
    fn mul_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        a * b
    }
    #[endpoint]
    fn mul_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        a * b
    }
    #[endpoint]
    fn mul_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a * b
    }
    #[endpoint]
    fn mul_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a * b
    }
    #[endpoint]
    fn div_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        a / b
    }
    #[endpoint]
    fn div_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        a / b
    }
    #[endpoint]
    fn div_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a / b
    }
    #[endpoint]
    fn div_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a / b
    }
    #[endpoint]
    fn rem_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        a % b
    }
    #[endpoint]
    fn rem_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        a % b
    }
    #[endpoint]
    fn rem_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a % b
    }
    #[endpoint]
    fn rem_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a % b
    }

    // assign version of all operators above
    #[endpoint]
    fn add_assign_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r += b;
        r
    }
    #[endpoint]
    fn add_assign_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r += b;
        r
    }
    #[endpoint]
    fn add_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r += b;
        r
    }
    #[endpoint]
    fn add_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r += b;
        r
    }
    #[endpoint]
    fn sub_assign_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r -= b;
        r
    }
    #[endpoint]
    fn sub_assign_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r -= b;
        r
    }
    #[endpoint]
    fn sub_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r -= b;
        r
    }
    #[endpoint]
    fn sub_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r -= b;
        r
    }
    #[endpoint]
    fn mul_assign_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r *= b;
        r
    }
    #[endpoint]
    fn mul_assign_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r *= b;
        r
    }
    #[endpoint]
    fn mul_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r *= b;
        r
    }
    #[endpoint]
    fn mul_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r *= b;
        r
    }
    #[endpoint]
    fn div_assign_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r /= b;
        r
    }
    #[endpoint]
    fn div_assign_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r /= b;
        r
    }
    #[endpoint]
    fn div_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r /= b;
        r
    }
    #[endpoint]
    fn div_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r /= b;
        r
    }
    #[endpoint]
    fn rem_assign_big_int(&self, a: Self::BigInt, b: Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r %= b;
        r
    }
    #[endpoint]
    fn rem_assign_big_int_ref(&self, a: &Self::BigInt, b: &Self::BigInt) -> Self::BigInt {
        let mut r = a.clone();
        r %= b;
        r
    }
    #[endpoint]
    fn rem_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r %= b;
        r
    }
    #[endpoint]
    fn rem_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r %= b;
        r
    }

    #[endpoint]
    fn bit_and_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a & b
    }
    #[endpoint]
    fn bit_and_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a & b
    }
    #[endpoint]
    fn bit_or_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a | b
    }
    #[endpoint]
    fn bit_or_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a | b
    }
    #[endpoint]
    fn bit_xor_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        a ^ b
    }
    #[endpoint]
    fn bit_xor_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        a ^ b
    }

    #[endpoint]
    fn bit_and_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r &= b;
        r
    }
    #[endpoint]
    fn bit_and_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r &= b;
        r
    }
    #[endpoint]
    fn bit_or_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r |= b;
        r
    }
    #[endpoint]
    fn bit_or_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r |= b;
        r
    }
    #[endpoint]
    fn bit_xor_assign_big_uint(&self, a: Self::BigUint, b: Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r ^= b;
        r
    }
    #[endpoint]
    fn bit_xor_assign_big_uint_ref(&self, a: &Self::BigUint, b: &Self::BigUint) -> Self::BigUint {
        let mut r = a.clone();
        r ^= b;
        r
    }

    #[endpoint]
    fn shr_big_uint(&self, a: Self::BigUint, b: usize) -> Self::BigUint {
        a >> b
    }
    #[endpoint]
    fn shr_big_uint_ref(&self, a: &Self::BigUint, b: usize) -> Self::BigUint {
        a >> b
    }
    #[endpoint]
    fn shl_big_uint(&self, a: Self::BigUint, b: usize) -> Self::BigUint {
        a << b
    }
    #[endpoint]
    fn shl_big_uint_ref(&self, a: &Self::BigUint, b: usize) -> Self::BigUint {
        a << b
    }

    #[endpoint]
    fn shr_assign_big_uint(&self, a: Self::BigUint, b: usize) -> Self::BigUint {
        let mut r = a.clone();
        r >>= b;
        r
    }
    #[endpoint]
    fn shr_assign_big_uint_ref(&self, a: &Self::BigUint, b: usize) -> Self::BigUint {
        let mut r = a.clone();
        r >>= b;
        r
    }
    #[endpoint]
    fn shl_assign_big_uint(&self, a: Self::BigUint, b: usize) -> Self::BigUint {
        let mut r = a.clone();
        r <<= b;
        r
    }
    #[endpoint]
    fn shl_assign_big_uint_ref(&self, a: &Self::BigUint, b: usize) -> Self::BigUint {
        let mut r = a.clone();
        r <<= b;
        r
    }
}
