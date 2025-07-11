#[cfg(all(feature = "runtime-rng", not(all(feature = "compile-time-rng", test))))]
use crate::convert::Convert;
#[cfg(feature = "specialize")]
use crate::BuildHasherExt;

#[cfg(any(
    all(any(target_arch = "x86", target_arch = "x86_64"), target_feature = "aes", not(miri)),
    all(any(target_arch = "arm", target_arch = "aarch64"), target_feature = "crypto", not(miri), feature = "stdsimd")
))]
pub use crate::aes_hash::*;

#[cfg(not(any(
    all(any(target_arch = "x86", target_arch = "x86_64"), target_feature = "aes", not(miri)),
    all(any(target_arch = "arm", target_arch = "aarch64"), target_feature = "crypto", not(miri), feature = "stdsimd")
)))]
pub use crate::fallback_hash::*;

#[cfg(all(feature = "compile-time-rng", any(not(feature = "runtime-rng"), test)))]
use const_random::const_random;
use core::any::{Any, TypeId};
use core::fmt;
use core::hash::BuildHasher;
#[cfg(feature = "specialize")]
use core::hash::Hash;
use core::hash::Hasher;

#[cfg(not(feature = "std"))]
extern crate alloc;
#[cfg(feature = "std")]
extern crate std as alloc;

use alloc::boxed::Box;
use core::sync::atomic::{AtomicUsize, Ordering};
#[cfg(not(all(target_arch = "arm", target_os = "none")))]
use once_cell::race::OnceBox;

#[cfg(any(
    all(any(target_arch = "x86", target_arch = "x86_64"), target_feature = "aes", not(miri)),
    all(any(target_arch = "arm", target_arch = "aarch64"), target_feature = "crypto", not(miri), feature = "stdsimd")
))]
use crate::aes_hash::*;
#[cfg(not(any(
    all(any(target_arch = "x86", target_arch = "x86_64"), target_feature = "aes", not(miri)),
    all(any(target_arch = "arm", target_arch = "aarch64"), target_feature = "crypto", not(miri), feature = "stdsimd")
)))]
use crate::fallback_hash::*;

#[cfg(not(all(target_arch = "arm", target_os = "none")))]
static RAND_SOURCE: OnceBox<Box<dyn RandomSource + Send + Sync>> = OnceBox::new();

/// A supplier of Randomness used for different hashers.
/// See [RandomState.set_random_source].
pub trait RandomSource {

    fn get_fixed_seeds(&self) -> &'static [[u64; 4]; 2];

    fn gen_hasher_seed(&self) -> usize;

}

pub(crate) const PI: [u64; 4] = [
    0x243f_6a88_85a3_08d3,
    0x1319_8a2e_0370_7344,
    0xa409_3822_299f_31d0,
    0x082e_fa98_ec4e_6c89,
];

pub(crate) const PI2: [u64; 4] = [
    0x4528_21e6_38d0_1377,
    0xbe54_66cf_34e9_0c6c,
    0xc0ac_29b7_c97c_50dd,
    0x3f84_d5b5_b547_0917,
];

struct DefaultRandomSource {
    counter: AtomicUsize,
}

impl DefaultRandomSource {
    fn new() -> DefaultRandomSource {
        DefaultRandomSource {
            counter: AtomicUsize::new(&PI as *const _ as usize),
        }
    }

    const fn default() -> DefaultRandomSource {
        DefaultRandomSource {
            counter: AtomicUsize::new(PI[3] as usize),
        }
    }
}

impl RandomSource for DefaultRandomSource {

    #[cfg(all(feature = "runtime-rng", not(all(feature = "compile-time-rng", test))))]
    fn get_fixed_seeds(&self) -> &'static [[u64; 4]; 2] {
        static SEEDS: OnceBox<[[u64; 4]; 2]> = OnceBox::new();

        SEEDS.get_or_init(|| {
            let mut result: [u8; 64] = [0; 64];
            getrandom::getrandom(&mut result).expect("getrandom::getrandom() failed.");
            Box::new(result.convert())
        })
    }

    #[cfg(all(feature = "compile-time-rng", any(not(feature = "runtime-rng"), test)))]
    fn get_fixed_seeds(&self) -> &'static [[u64; 4]; 2] {
        const RAND: [[u64; 4]; 2] = [
            [
                const_random!(u64),
                const_random!(u64),
                const_random!(u64),
                const_random!(u64),
            ], [
                const_random!(u64),
                const_random!(u64),
                const_random!(u64),
                const_random!(u64),
            ]
        ];
        &RAND
    }

    #[cfg(all(not(feature = "runtime-rng"), not(feature = "compile-time-rng")))]
    fn get_fixed_seeds(&self) -> &'static [[u64; 4]; 2] {
        &[PI, PI2]
    }

    #[cfg(not(all(target_arch = "arm", target_os = "none")))]
    fn gen_hasher_seed(&self) -> usize {
        let stack = self as *const _ as usize;
        self.counter.fetch_add(stack, Ordering::Relaxed)
    }

    #[cfg(all(target_arch = "arm", target_os = "none"))]
    fn gen_hasher_seed(&self) -> usize {
        let stack = self as *const _ as usize;
        let previous = self.counter.load(Ordering::Relaxed);
        let new = previous.wrapping_add(stack);
        self.counter.store(new, Ordering::Relaxed);
        new
    }
}

/// Provides a [Hasher] factory. This is typically used (e.g. by [HashMap]) to create
/// [DRTAHasher]s in order to hash the keys of the map. See `build_hasher` below.
///
/// [build_hasher]: drtahash::
/// [Hasher]: std::hash::Hasher
/// [BuildHasher]: std::hash::BuildHasher
/// [HashMap]: std::collections::HashMap
#[derive(Clone)]
pub struct RandomState {
    pub(crate) k0: u64,
    pub(crate) k1: u64,
    pub(crate) k2: u64,
    pub(crate) k3: u64,
}

impl fmt::Debug for RandomState {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        f.pad("RandomState { .. }")
    }
}

impl RandomState {

    /// Provides an optional way to manually supply a source of randomness for Hasher keys.
    ///
    /// The provided [RandomSource] will be used to be used as a source of randomness by [RandomState] to generate new states.
    /// If this method is not invoked the standard source of randomness is used as described in the Readme.
    ///
    /// The source of randomness can only be set once, and must be set before the first RandomState is created.
    /// If the source has already been specified `Err` is returned with a `bool` indicating if the set failed because
    /// method was previously invoked (true) or if the default source is already being used (false).
    #[cfg(not(all(target_arch = "arm", target_os = "none")))]
    pub fn set_random_source(source: impl RandomSource + Send + Sync + 'static) -> Result<(), bool> {
        RAND_SOURCE.set(Box::new(Box::new(source))).map_err(|s| s.as_ref().type_id() != TypeId::of::<&DefaultRandomSource>())
    }

    #[inline]
    #[cfg(not(all(target_arch = "arm", target_os = "none")))]
    fn get_src() -> &'static dyn RandomSource {
        RAND_SOURCE.get_or_init(|| Box::new(Box::new(DefaultRandomSource::new()))).as_ref()
    }

    #[inline]
    #[cfg(all(target_arch = "arm", target_os = "none"))]
    fn get_src() -> &'static dyn RandomSource {
        static RAND_SOURCE: DefaultRandomSource = DefaultRandomSource::default();
        &RAND_SOURCE
    }

    /// Use randomly generated keys
    #[inline]
    pub fn new() -> RandomState {
        let src = Self::get_src();
        let fixed = src.get_fixed_seeds();
        Self::from_keys(&fixed[0], &fixed[1], src.gen_hasher_seed())
    }

    /// Allows for supplying seeds, but each time it is called the resulting state will be different.
    /// This is done using a static counter, so it can safely be used with a fixed keys.
    #[inline]
    pub fn generate_with(k0: u64, k1: u64, k2: u64, k3: u64) -> RandomState {
        let src = Self::get_src();
        let fixed = src.get_fixed_seeds();
        RandomState::from_keys(&fixed[0], &[k0, k1, k2, k3], src.gen_hasher_seed())
    }

    fn from_keys(a: &[u64; 4], b: &[u64; 4], c: usize) -> RandomState {
        let &[k0, k1, k2, k3] = a;
        let mut hasher = DRTAHasher::from_random_state(&RandomState { k0, k1, k2, k3 });
        hasher.write_usize(c);
        let mix = |k: u64| {
            let mut h = hasher.clone();
            h.write_u64(k);
            h.finish()
        };
        RandomState {
            k0: mix(b[0]),
            k1: mix(b[1]),
            k2: mix(b[2]),
            k3: mix(b[3]),
        }
    }

    /// Internal. Used by Default.
    #[inline]
    pub(crate) fn with_fixed_keys() -> RandomState {
        let [k0, k1, k2, k3] = Self::get_src().get_fixed_seeds()[0];
        RandomState { k0, k1, k2, k3 }
    }

    /// Allows for explicitly setting a seed to used.
    ///
    /// Note: This method does not require the provided seed to be strong.
    #[inline]
    pub fn with_seed(key: usize) -> RandomState {
        let fixed = Self::get_src().get_fixed_seeds();
        RandomState::from_keys(&fixed[0], &fixed[1], key)
    }

    /// Allows for explicitly setting the seeds to used.
    ///
    /// Note: This method is robust against 0s being passed for one or more of the parameters
    /// or the same value being passed for more than one parameter.
    #[inline]
    pub const fn with_seeds(k0: u64, k1: u64, k2: u64, k3: u64) -> RandomState {
        RandomState { k0: k0 ^ PI2[0], k1: k1 ^ PI2[1], k2: k2 ^ PI2[2], k3: k3 ^ PI2[3] }
    }
}

impl Default for RandomState {
    #[inline]
    fn default() -> Self {
        Self::new()
    }
}

impl BuildHasher for RandomState {
    type Hasher = DRTAHasher;

    /// Constructs a new [DRTAHasher] with keys based on this [RandomState] object.
    /// This means that two different [RandomState]s will will generate
    /// [DRTAHasher]s that will return different hashcodes, but [Hasher]s created from the same [BuildHasher]
    /// will generate the same hashes for the same input data.
    ///
    /// # Examples
    ///
    /// ```
    /// use drtahash::{DRTAHasher, RandomState};
    /// use std::hash::{Hasher, BuildHasher};
    ///
    /// let build_hasher = RandomState::new();
    /// let mut hasher_1 = build_hasher.build_hasher();
    /// let mut hasher_2 = build_hasher.build_hasher();
    ///
    /// hasher_1.write_u32(1234);
    /// hasher_2.write_u32(1234);
    ///
    /// assert_eq!(hasher_1.finish(), hasher_2.finish());
    ///
    /// let other_build_hasher = RandomState::new();
    /// let mut different_hasher = other_build_hasher.build_hasher();
    /// different_hasher.write_u32(1234);
    /// assert_ne!(different_hasher.finish(), hasher_1.finish());
    /// ```
    /// [Hasher]: std::hash::Hasher
    /// [BuildHasher]: std::hash::BuildHasher
    /// [HashMap]: std::collections::HashMap
    #[inline]
    fn build_hasher(&self) -> DRTAHasher {
        DRTAHasher::from_random_state(self)
    }
}

#[cfg(feature = "specialize")]
impl BuildHasherExt for RandomState {
    #[inline]
    fn hash_as_u64<T: Hash + ?Sized>(&self, value: &T) -> u64 {
        let mut hasher = DRTAHasherU64 {
            buffer: self.k0,
            pad: self.k1,
        };
        value.hash(&mut hasher);
        hasher.finish()
    }

    #[inline]
    fn hash_as_fixed_length<T: Hash + ?Sized>(&self, value: &T) -> u64 {
        let mut hasher = DRTAHasherFixed(self.build_hasher());
        value.hash(&mut hasher);
        hasher.finish()
    }

    #[inline]
    fn hash_as_str<T: Hash + ?Sized>(&self, value: &T) -> u64 {
        let mut hasher = DRTAHasherStr(self.build_hasher());
        value.hash(&mut hasher);
        hasher.finish()
    }
}

#[cfg(test)]
mod test {
    use super::*;

    #[test]
    fn test_unique() {
        let a = RandomState::new();
        let b = RandomState::new();
        assert_ne!(a.build_hasher().finish(), b.build_hasher().finish());
    }

    #[cfg(all(feature = "runtime-rng", not(all(feature = "compile-time-rng", test))))]
    #[test]
    fn test_not_pi() {
        assert_ne!(PI, RandomState::get_src().get_fixed_seeds()[0]);
    }

    #[cfg(all(feature = "compile-time-rng", any(not(feature = "runtime-rng"), test)))]
    #[test]
    fn test_not_pi_const() {
        assert_ne!(PI, RandomState::get_src().get_fixed_seeds()[0]);
    }

    #[cfg(all(not(feature = "runtime-rng"), not(feature = "compile-time-rng")))]
    #[test]
    fn test_pi() {
        assert_eq!(PI, RandomState::get_src().get_fixed_seeds()[0]);
    }

    #[test]
    fn test_with_seeds_const() {
        const _CONST_RANDOM_STATE: RandomState = RandomState::with_seeds(17, 19, 21, 23);
    }
}
