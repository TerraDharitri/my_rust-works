use core::hash::{Hash, Hasher};
use std::collections::HashMap;

fn assert_sufficiently_different(a: u64, b: u64, tolerance: i32) {
    let (same_byte_count, same_nibble_count) = count_same_bytes_and_nibbles(a, b);
    assert!(same_byte_count <= tolerance, "{:x} vs {:x}: {:}", a, b, same_byte_count);
    assert!(
        same_nibble_count <= tolerance * 3,
        "{:x} vs {:x}: {:}",
        a,
        b,
        same_nibble_count
    );
    let flipped_bits = (a ^ b).count_ones();
    assert!(
        flipped_bits > 12 && flipped_bits < 52,
        "{:x} and {:x}: {:}",
        a,
        b,
        flipped_bits
    );
    for rotate in 0..64 {
        let flipped_bits2 = (a ^ (b.rotate_left(rotate))).count_ones();
        assert!(
            flipped_bits2 > 10 && flipped_bits2 < 54,
            "{:x} and {:x}: {:}",
            a,
            b.rotate_left(rotate),
            flipped_bits2
        );
    }
}

fn count_same_bytes_and_nibbles(a: u64, b: u64) -> (i32, i32) {
    let mut same_byte_count = 0;
    let mut same_nibble_count = 0;
    for byte in 0..8 {
        let ba = (a >> (8 * byte)) as u8;
        let bb = (b >> (8 * byte)) as u8;
        if ba == bb {
            same_byte_count += 1;
        }
        if ba & 0xF0u8 == bb & 0xF0u8 {
            same_nibble_count += 1;
        }
        if ba & 0x0Fu8 == bb & 0x0Fu8 {
            same_nibble_count += 1;
        }
    }
    (same_byte_count, same_nibble_count)
}

fn gen_combinations(options: &[u32; 8], depth: u32, so_far: Vec<u32>, combinations: &mut Vec<Vec<u32>>) {
    if depth == 0 {
        return;
    }
    for option in options {
        let mut next = so_far.clone();
        next.push(*option);
        combinations.push(next.clone());
        gen_combinations(options, depth - 1, next, combinations);
    }
}

fn test_no_full_collisions<T: Hasher>(gen_hash: impl Fn() -> T) {
    let options: [u32; 8] = [
        0x00000000, 0x20000000, 0x40000000, 0x60000000, 0x80000000, 0xA0000000, 0xC0000000, 0xE0000000,
    ];
    let mut combinations = Vec::new();
    gen_combinations(&options, 7, Vec::new(), &mut combinations);
    let mut map: HashMap<u64, Vec<u8>> = HashMap::new();
    for combination in combinations {
        let array = unsafe {
            let (begin, middle, end) = combination.align_to::<u8>();
            assert_eq!(0, begin.len());
            assert_eq!(0, end.len());
            middle.to_vec()
        };
        let mut hasher = gen_hash();
        hasher.write(&array);
        let hash = hasher.finish();
        if let Some(value) = map.get(&hash) {
            assert_eq!(
                value, &array,
                "Found a collision between {:x?} and {:x?}. Hash: {:x?}",
                value, &array, &hash
            );
        } else {
            map.insert(hash, array);
        }
    }
    assert_eq!(2396744, map.len());
}

fn test_keys_change_output<T: Hasher>(constructor: impl Fn(u128, u128) -> T) {
    let mut a = constructor(1, 1);
    let mut b = constructor(1, 2);
    let mut c = constructor(2, 1);
    let mut d = constructor(2, 2);
    "test".hash(&mut a);
    "test".hash(&mut b);
    "test".hash(&mut c);
    "test".hash(&mut d);
    assert_sufficiently_different(a.finish(), b.finish(), 1);
    assert_sufficiently_different(a.finish(), c.finish(), 1);
    assert_sufficiently_different(a.finish(), d.finish(), 1);
    assert_sufficiently_different(b.finish(), c.finish(), 1);
    assert_sufficiently_different(b.finish(), d.finish(), 1);
    assert_sufficiently_different(c.finish(), d.finish(), 1);
}

fn test_input_affect_every_byte<T: Hasher>(constructor: impl Fn(u128, u128) -> T) {
    let base = hash_with(&0, constructor(0, 0));
    for shift in 0..16 {
        let mut alternitives = vec![];
        for v in 0..256 {
            let input = (v as u128) << (shift * 8);
            let hasher = constructor(0, 0);
            alternitives.push(hash_with(&input, hasher));
        }
        assert_each_byte_differs(shift, base, alternitives);
    }
}

///Ensures that for every bit in the output there is some value for each byte in the key that flips it.
fn test_keys_affect_every_byte<H: Hash, T: Hasher>(item: H, constructor: impl Fn(u128, u128) -> T) {
    let base = hash_with(&item, constructor(0, 0));
    for shift in 0..16 {
        let mut alternitives1 = vec![];
        let mut alternitives2 = vec![];
        for v in 0..256 {
            let input = (v as u128) << (shift * 8);
            let hasher1 = constructor(input, 0);
            let hasher2 = constructor(0, input);
            let h1 = hash_with(&item, hasher1);
            let h2 = hash_with(&item, hasher2);
            alternitives1.push(h1);
            alternitives2.push(h2);
        }
        assert_each_byte_differs(shift, base, alternitives1);
        assert_each_byte_differs(shift, base, alternitives2);
    }
}

fn assert_each_byte_differs(num: u64, base: u64, alternitives: Vec<u64>) {
    let mut changed_bits = 0_u64;
    for alternitive in alternitives {
        changed_bits |= base ^ alternitive
    }
    assert_eq!(core::u64::MAX, changed_bits, "Bits changed: {:x} on num: {:?}", changed_bits, num);
}

fn test_finish_is_consistent<T: Hasher>(constructor: impl Fn(u128, u128) -> T) {
    let mut hasher = constructor(1, 2);
    "Foo".hash(&mut hasher);
    let a = hasher.finish();
    let b = hasher.finish();
    assert_eq!(a, b);
}

fn test_single_key_bit_flip<T: Hasher>(constructor: impl Fn(u128, u128) -> T) {
    for bit in 0..128 {
        let mut a = constructor(0, 0);
        let mut b = constructor(0, 1 << bit);
        let mut c = constructor(1 << bit, 0);
        "1234".hash(&mut a);
        "1234".hash(&mut b);
        "1234".hash(&mut c);
        assert_sufficiently_different(a.finish(), b.finish(), 2);
        assert_sufficiently_different(a.finish(), c.finish(), 2);
        assert_sufficiently_different(b.finish(), c.finish(), 2);
        let mut a = constructor(0, 0);
        let mut b = constructor(0, 1 << bit);
        let mut c = constructor(1 << bit, 0);
        "12345678".hash(&mut a);
        "12345678".hash(&mut b);
        "12345678".hash(&mut c);
        assert_sufficiently_different(a.finish(), b.finish(), 2);
        assert_sufficiently_different(a.finish(), c.finish(), 2);
        assert_sufficiently_different(b.finish(), c.finish(), 2);
        let mut a = constructor(0, 0);
        let mut b = constructor(0, 1 << bit);
        let mut c = constructor(1 << bit, 0);
        "1234567812345678".hash(&mut a);
        "1234567812345678".hash(&mut b);
        "1234567812345678".hash(&mut c);
        assert_sufficiently_different(a.finish(), b.finish(), 2);
        assert_sufficiently_different(a.finish(), c.finish(), 2);
        assert_sufficiently_different(b.finish(), c.finish(), 2);
    }
}

fn test_all_bytes_matter<T: Hasher>(hasher: impl Fn() -> T) {
    let mut item = vec![0; 256];
    let base_hash = hash(&item, &hasher);
    for pos in 0..256 {
        item[pos] = 255;
        let hash = hash(&item, &hasher);
        assert_ne!(base_hash, hash, "Position {} did not affect output", pos);
        item[pos] = 0;
    }
}

fn test_no_pair_collisions<T: Hasher>(hasher: impl Fn() -> T) {
    let base = [0_u64, 0_u64];
    let base_hash = hash(&base, &hasher);
    for bitpos1 in 0..64 {
        let a = 1_u64 << bitpos1;
        for bitpos2 in 0..bitpos1 {
            let b = 1_u64 << bitpos2;
            let aa = hash(&[a, a], &hasher);
            let ab = hash(&[a, b], &hasher);
            let ba = hash(&[b, a], &hasher);
            let bb = hash(&[b, b], &hasher);
            assert_sufficiently_different(base_hash, aa, 3);
            assert_sufficiently_different(base_hash, ab, 3);
            assert_sufficiently_different(base_hash, ba, 3);
            assert_sufficiently_different(base_hash, bb, 3);
            assert_sufficiently_different(aa, ab, 3);
            assert_sufficiently_different(ab, ba, 3);
            assert_sufficiently_different(ba, bb, 3);
            assert_sufficiently_different(aa, ba, 3);
            assert_sufficiently_different(ab, bb, 3);
            assert_sufficiently_different(aa, bb, 3);
        }
    }
}

fn hash<H: Hash, T: Hasher>(b: &H, hash_builder: &dyn Fn() -> T) -> u64 {
    let mut hasher = hash_builder();
    b.hash(&mut hasher);
    hasher.finish()
}

fn hash_with<H: Hash, T: Hasher>(b: &H, mut hasher: T) -> u64 {
    b.hash(&mut hasher);
    hasher.finish()
}

fn test_single_bit_flip<T: Hasher>(hasher: impl Fn() -> T) {
    let size = 32;
    let compare_value = hash(&0u32, &hasher);
    for pos in 0..size {
        let test_value = hash(&(1u32 << pos), &hasher);
        assert_sufficiently_different(compare_value, test_value, 2);
    }
    let size = 64;
    let compare_value = hash(&0u64, &hasher);
    for pos in 0..size {
        let test_value = hash(&(1u64 << pos), &hasher);
        assert_sufficiently_different(compare_value, test_value, 2);
    }
    let size = 128;
    let compare_value = hash(&0u128, &hasher);
    for pos in 0..size {
        let test_value = hash(&(1u128 << pos), &hasher);
        dbg!(compare_value, test_value);
        assert_sufficiently_different(compare_value, test_value, 2);
    }
}

fn test_padding_doesnot_collide<T: Hasher>(hasher: impl Fn() -> T) {
    for c in 0..128u8 {
        for string in ["", "\0", "\x01", "1234", "12345678", "1234567812345678"].iter() {
            let mut short = hasher();
            string.hash(&mut short);
            let value = short.finish();
            let mut padded = string.to_string();
            for num in 1..=128 {
                let mut long = hasher();
                padded.push(c as char);
                padded.hash(&mut long);
                let (same_bytes, same_nibbles) = count_same_bytes_and_nibbles(value, long.finish());
                assert!(
                    same_bytes <= 3,
                    "{} bytes of {} -> {:x} vs {:x}", num, c, value, long.finish()
                );
                assert!(
                    same_nibbles <= 8,
                    "{} bytes of {} -> {:x} vs {:x}", num, c, value, long.finish()
                );
                let flipped_bits = (value ^ long.finish()).count_ones();
                assert!(flipped_bits > 10);
            }
            if string.len() > 0 {
                let mut padded = string[1..].to_string();
                padded.push(c as char);
                for num in 2..=128 {
                    let mut long = hasher();
                    padded.push(c as char);
                    padded.hash(&mut long);
                    let (same_bytes, same_nibbles) = count_same_bytes_and_nibbles(value, long.finish());
                    assert!(
                        same_bytes <= 3,
                        "string {:?} + {} bytes of {} -> {:x} vs {:x}",
                        string,
                        num,
                        c,
                        value,
                        long.finish()
                    );
                    assert!(
                        same_nibbles <= 8,
                        "string {:?} + {} bytes of {} -> {:x} vs {:x}",
                        string,
                        num,
                        c,
                        value,
                        long.finish()
                    );
                    let flipped_bits = (value ^ long.finish()).count_ones();
                    assert!(flipped_bits > 10);
                }
            }
        }
    }
}

fn test_length_extension<T: Hasher>(hasher: impl Fn(u128, u128) -> T) {
    for key in 0..256 {
        let h1 = hasher(key, key);
        let v1 = hash_with(&[0_u8, 0, 0, 0, 0, 0, 0, 0], h1);
        let h2 = hasher(key, key);
        let v2 = hash_with(&[1_u8, 0, 0, 0, 0, 0, 0, 0, 0], h2);
        assert_ne!(v1, v2);
    }
}

#[cfg(test)]
mod fallback_tests {
    use crate::fallback_hash::*;
    use crate::hash_quality_test::*;

    #[test]
    fn fallback_single_bit_flip() {
        test_single_bit_flip(|| DRTAHasher::new_with_keys(0, 0))
    }

    #[test]
    fn fallback_single_key_bit_flip() {
        test_single_key_bit_flip(DRTAHasher::new_with_keys)
    }

    #[test]
    fn fallback_all_bytes_matter() {
        test_all_bytes_matter(|| DRTAHasher::new_with_keys(0, 0));
    }

    #[test]
    fn fallback_test_no_pair_collisions() {
        test_no_pair_collisions(|| DRTAHasher::new_with_keys(0, 0));
    }

    #[test]
    fn fallback_test_no_full_collisions() {
        test_no_full_collisions(|| DRTAHasher::new_with_keys(0, 0));
    }

    #[test]
    fn fallback_keys_change_output() {
        test_keys_change_output(DRTAHasher::new_with_keys);
    }

    #[test]
    fn fallback_input_affect_every_byte() {
        test_input_affect_every_byte(DRTAHasher::new_with_keys);
    }

    #[test]
    fn fallback_keys_affect_every_byte() {
        //For fallback second key is not used in every hash.
        #[cfg(all(not(feature = "specialize"), feature = "folded_multiply"))]
            test_keys_affect_every_byte(0, |a, b| DRTAHasher::new_with_keys(a ^ b, a));
        test_keys_affect_every_byte("", |a, b| DRTAHasher::new_with_keys(a ^ b, a));
        test_keys_affect_every_byte((0, 0), |a, b| DRTAHasher::new_with_keys(a ^ b, a));
    }

    #[test]
    fn fallback_finish_is_consistant() {
        test_finish_is_consistent(DRTAHasher::test_with_keys)
    }

    #[test]
    fn fallback_padding_doesnot_collide() {
        test_padding_doesnot_collide(|| DRTAHasher::new_with_keys(0, 0));
        test_padding_doesnot_collide(|| DRTAHasher::new_with_keys(0, 2));
        test_padding_doesnot_collide(|| DRTAHasher::new_with_keys(2, 0));
        test_padding_doesnot_collide(|| DRTAHasher::new_with_keys(2, 2));
    }

    #[test]
    fn fallback_length_extension() {
        test_length_extension(|a, b| DRTAHasher::new_with_keys(a, b));
    }
}

///Basic sanity tests of the cypto properties of drtaHash.
#[cfg(any(
    all(any(target_arch = "x86", target_arch = "x86_64"), target_feature = "aes", not(miri)),
    all(any(target_arch = "arm", target_arch = "aarch64"), target_feature = "crypto", not(miri), feature = "stdsimd")
))]
#[cfg(test)]
mod aes_tests {
    use crate::aes_hash::*;
    use crate::hash_quality_test::*;
    use std::hash::{Hash, Hasher};

    //This encrypts to 0.
    const BAD_KEY2: u128 = 0x6363_6363_6363_6363_6363_6363_6363_6363;
    //This decrypts to 0.
    const BAD_KEY: u128 = 0x5252_5252_5252_5252_5252_5252_5252_5252;

    #[test]
    fn test_single_bit_in_byte() {
        let mut hasher1 = DRTAHasher::test_with_keys(0, 0);
        8_u32.hash(&mut hasher1);
        let mut hasher2 = DRTAHasher::test_with_keys(0, 0);
        0_u32.hash(&mut hasher2);
        assert_sufficiently_different(hasher1.finish(), hasher2.finish(), 1);
    }

    #[test]
    fn aes_single_bit_flip() {
        test_single_bit_flip(|| DRTAHasher::test_with_keys(BAD_KEY, BAD_KEY));
        test_single_bit_flip(|| DRTAHasher::test_with_keys(BAD_KEY2, BAD_KEY2));
    }

    #[test]
    fn aes_single_key_bit_flip() {
        test_single_key_bit_flip(DRTAHasher::test_with_keys)
    }

    #[test]
    fn aes_all_bytes_matter() {
        test_all_bytes_matter(|| DRTAHasher::test_with_keys(BAD_KEY, BAD_KEY));
        test_all_bytes_matter(|| DRTAHasher::test_with_keys(BAD_KEY2, BAD_KEY2));
    }

    #[test]
    fn aes_test_no_pair_collisions() {
        test_no_pair_collisions(|| DRTAHasher::test_with_keys(BAD_KEY, BAD_KEY));
        test_no_pair_collisions(|| DRTAHasher::test_with_keys(BAD_KEY2, BAD_KEY2));
    }

    #[test]
    fn ase_test_no_full_collisions() {
        test_no_full_collisions(|| DRTAHasher::test_with_keys(12345, 67890));
    }

    #[test]
    fn aes_keys_change_output() {
        test_keys_change_output(DRTAHasher::test_with_keys);
    }

    #[test]
    fn aes_input_affect_every_byte() {
        test_input_affect_every_byte(DRTAHasher::test_with_keys);
    }

    #[test]
    fn aes_keys_affect_every_byte() {
        #[cfg(not(feature = "specialize"))]
            test_keys_affect_every_byte(0, DRTAHasher::test_with_keys);
        test_keys_affect_every_byte("", DRTAHasher::test_with_keys);
        test_keys_affect_every_byte((0, 0), DRTAHasher::test_with_keys);
    }

    #[test]
    fn aes_finish_is_consistant() {
        test_finish_is_consistent(DRTAHasher::test_with_keys)
    }

    #[test]
    fn aes_padding_doesnot_collide() {
        test_padding_doesnot_collide(|| DRTAHasher::test_with_keys(BAD_KEY, BAD_KEY));
        test_padding_doesnot_collide(|| DRTAHasher::test_with_keys(BAD_KEY2, BAD_KEY2));
    }

    #[test]
    fn aes_length_extension() {
        test_length_extension(|a, b| DRTAHasher::test_with_keys(a, b));
    }
}
