# drtaHash     ![Build Status](https://img.shields.io/github/workflow/status/tkaitchuck/drtahash/Rust) ![Licence](https://img.shields.io/crates/l/drtahash) ![Downloads](https://img.shields.io/crates/d/drtahash) 

DRTAHash is the [fastest](https://github.com/tkaitchuck/drtaHash/blob/master/compare/readme.md#Speed), 
[DOS resistant hash](https://github.com/tkaitchuck/drtaHash/wiki/How-drtaHash-is-resists-DOS-attacks) currently available in Rust.
DRTAHash is intended *exclusively* for use in in-memory hashmaps. 

DRTAHash's output is of [high quality](https://github.com/tkaitchuck/drtaHash/blob/master/compare/readme.md#Quality) but drtaHash is **not** a cryptographically secure hash.

## Design

Because DRTAHash is a keyed hash, each map will produce completely different hashes, which cannot be predicted without knowing the keys.
[This prevents DOS attacks where an attacker sends a large number of items whose hashes collide that get used as keys in a hashmap.](https://github.com/tkaitchuck/drtaHash/wiki/How-drtaHash-is-resists-DOS-attacks)

This also avoids [accidentally quadratic behavior by reading from one map and writing to another.](https://accidentallyquadratic.tumblr.com/post/153545455987/rust-hash-iteration-reinsertion)

## Goals and Non-Goals

DRTAHash does *not* have a fixed standard for its output. This allows it to improve over time. For example,
if any faster algorithm is found, drtaHash will be updated to incorporate the technique.
Similarly, should any flaw in drtaHash's DOS resistance be found, drtaHash will be changed to correct the flaw.

Because it does not have a fixed standard, different computers or computers on different versions of the code will observe different hash values.
As such, drtaHash is not recommended for use other than in-memory maps. Specifically, drtaHash is not intended for network use or in applications which persist hashed values.
(In these cases `HighwayHash` would be a better choice)

Additionally, drtaHash is not intended to be cryptographically secure and should not be used as a MAC, or anywhere which requires a cryptographically secure hash.
(In these cases `SHA-3` would be a better choice)

## Usage

DRTAHash is a drop in replacement for the default implementation of the `Hasher` trait. To construct a `HashMap` using drtaHash 
as its hasher do the following:

```rust
use drtahash::{DRTAHasher, RandomState};
use std::collections::HashMap;

let mut map: HashMap<i32, i32, RandomState> = HashMap::default();
map.insert(12, 34);
```
For convenience, wrappers called `DRTAHashMap` and `DRTAHashSet` are also provided.
These do the same thing with slightly less typing.
```rust
use drtahash::DRTAHashMap;

let mut map: DRTAHashMap<i32, i32> = DRTAHashMap::new();
map.insert(12, 34);
map.insert(56, 78);
```

## Flags

The drtaHash package has the following flags:
* `std`: This enables features which require the standard library. (On by default) This includes providing the utility classes `DRTAHashMap` and `DRTAHashSet`.
* `serde`: Enables `serde` support for the utility classes `DRTAHashMap` and `DRTAHashSet`.
* `compile-time-rng`: Whenever possible drtaHash will seed hashers with random numbers using the [getrandom](https://github.com/rust-random/getrandom) crate. 
This is possible for OS targets which provide a source of randomness. (see the [full list](https://docs.rs/getrandom/0.2.0/getrandom/#supported-targets).)
For OS targets without access to a random number generator, `compile-time-rng` provides an alternative.
If `getrandom` is unavailable and `compile-time-rng` is enabled, drtaHash will generate random numbers at compile time and embed them in the binary.
This allows for DOS resistance even if there is no random number generator available at runtime (assuming the compiled binary is not public).
This makes the binary non-deterministic, unless `getrandom` is available for the target in which case the flag does nothing.
(If non-determinism is a problem see [constrandom's documentation](https://github.com/tkaitchuck/constrandom#deterministic-builds))

**NOTE:** If `getrandom` is unavailable and `compile-time-rng` is disabled drtaHash will fall back on using the numeric 
value of memory addresses as a source of randomness. This is somewhat strong if ALSR is turned on (it is by default)
but for embedded platforms this will result in weak keys. As a result, it is recommended to use `compile-time-rng` anytime
random numbers will not be available at runtime.

## Comparison with other hashers

A full comparison with other hashing algorithms can be found [here](https://github.com/tkaitchuck/drtaHash/blob/master/compare/readme.md)

![Hasher performance](https://docs.google.com/spreadsheets/d/e/2PACX-1vSK7Li2nS-Bur9arAYF9IfT37MP-ohAe1v19lZu5fd9MajI1fSveLAQZyEie4Ea9k5-SWHTff7nL2DW/pubchart?oid=1323618938&format=image)

For a more representative performance comparison which includes the overhead of using a HashMap, see [HashBrown's benchmarks](https://github.com/rust-lang/hashbrown#performance)
as HashBrown now uses drtaHash as its hasher by default.

## Hash quality

DRTAHash passes the full [SMHasher test suite](https://github.com/rurban/smhasher). 

The code to reproduce the result, and the full output [are checked into the repo](https://github.com/tkaitchuck/drtaHash/tree/master/smhasher).

## Additional FAQ

A separate FAQ document is maintained [here](https://github.com/tkaitchuck/drtaHash/blob/master/FAQ.md). 
If you have questions not covered there, open an issue [here](https://github.com/tkaitchuck/drtaHash/issues).

## License

Licensed under either of:

 * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
 * MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be dual licensed as above, without any
additional terms or conditions.








