# Change Log

There are several crates in this repo, this changelog will keep track of all of them.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [Unreleased]

## [numbat-wasm 0.14.0, denali 0.6.0, numbat-codec 0.0.5]
- DCDT functionality:
	- DCDT system smart contract proxy, though which it is possible to mint, burn, issue, freeze, pause, etc.
	- Endpoints to handle NFTs. Also added NFT management in the  DCDT system smart contract proxy
	- Get balance, get token data, local mint/burn
- Contract calls:
	- Low-level and high-level support for synchronous calls via `execute_on_dest_context`.
	- Callback bug fix
- Improvements in storage mappers:
	- VecMapper length is now lazy
	- UserMapper more functionality
- Denali
	- `scQuery` step
	- fixed defaults: unspecified fields now check the default value instead of being ignored
	- check logs
	- `nested:` and `biguint:` syntax
- `numbat-codec-derive` dix - `TopDecodeOrDefault` works with generics
- Upgraded to Rust2021.

## [numbat-wasm 0.13.0] - 2021-03-04
### Main feature
- Events revamped:
	- any event name of any length is accepted. The event name is now expressed as ASCII instead of hex
	- topics can have any length
	- topics and data are serialized using the numbat-codec instead of the old macro-based solution
	- old events are still allowed for now via the `#[legacy_event("0x...")]` syntax; might be removed in the future
### Refactoring 
- Major refactoring of numbat-wasm-derive. This doesn't change much of the functionality, though.
### Minor features
- SingleValueMapper redesigned for easier use. It no longer keeps the storage value cached.

## [numbat-wasm 0.12.0] - 2021-02-25
- Reorganized DCDT and REWA direct send api.
- New async call syntax
	- redesigned contract proxies
	- contract calls are communicated via objects returned from endpoint methods
	- callbacks now specified programmatically
	- got rid of the `#[callback_arg]` annotation

## [numbat-wasm 0.11.0, numbat-codec 0.5.0, denali 0.5.0] - 2021-02-05
### Refactor
- Major refactoring of the contract API: split into smaller traits
### Added
- Storage mappers:
	- LinkedListMapper
	- SetMapper
	- MapMapper
- SendApi
	- created SendApi, which groups all functionality related to sending tokens and interactions with other contracts
    - integrated the new TransferDCDT hook from Andes
    - added an unsafe buffer for handling values before transfer
    - denali-rs fixes
    - contracts now use the new API + more denali tests
- Call Value API refactor and `#[payable]` updates:
	- Main features:
    	- `#[payable]` annotation more versatile: `#[payable("REWA")]` `#[payable("TOKEN-ID")]` `#[payable("*")]`
    	- `#[payable]` still accepted but throws a warning, will become unsupported in the future.
    	- `#[payment]` argument attribute now also provides DCDT payment where applicable
    	- a new TokenIdentifier type that encodes the REWA special token and any DCDT token
    	- a new `#[token_identifier]` argument attribute provides the token id. Similar to `#[payment]` it is a fake argument, not exported.
    	- ABI updated ("payableInTokens" is no longer restricted to "REWA")
    	- all new features covered by denali tests
    	- async proxies still only accept `#[payable("REWA")]`, but that is for future updates
	- Less visible changes:
    	- all call value hooks now grouped in a new CallValueApi
    	- for low-level access, developers now need to write self.call_value().rewa_value(), etc.
    	- some optimizations in the handling of call value hooks
	- Refactoring:
    	- parse_attr mod was split into a proper folder with many files, since it had grown too large
    	- an extensive refactoring of numbat-wasm-derive not yet performed, will come soon
### Minor features
- ABI enum discriminants generation
### Fixed
- Crypto API fixes:
	- `keccak256:` prefix also supported in denali
    - reorganized crypto denali tests in basic-features
    - denali-rs was accidentally providing keccak256 instead of sha256


## [numbat-wasm 0.10.5] - 2021-01-27
- Temporary fix: callbacks allow error message argument to be missing

## [numbat-wasm 0.10.4, denali 0.4.2] - 2021-01-13
- Codec derive with defaults
- Storage mapper infrastructure

## [numbat-wasm 0.10.3] - 2020-12-29
- ABI generation of endpoint output names

## [numbat-wasm 0.10.2, numbat-codec 0.4.2] - 2020-12-28
- Codec type hygene

## [numbat-wasm 0.10.1, numbat-codec 0.4.1, denali 0.4.1] - 2020-12-23
- Minor fixes, support for strings

## [numbat-wasm 0.10.0, numbat-codec 0.4.0] - 2020-12-21
- Codec derive
- ABI generation framework
- New example contracts

## [numbat-wasm 0.9.8, numbat-codec 0.3.2, denali 0.3.1] - 2020-11-23
- SC deploy API

## [numbat-wasm 0.9.7, numbat-codec 0.3.1, denali 0.3.0] - 2020-11-11
- Monomorphization via codec trait instead of TypeInfo for arguments and storage
- Reorganized all contracts in the `contracts` folder

## [numbat-wasm 0.9.6] - 2020-11-09
- H256 & BoxedBytes fixes

## [numbat-wasm 0.9.5] - 2020-11-09
- H256 is_zero, minor fixes

## [numbat-wasm 0.9.4] - 2020-11-09
- BoxedBytes
	- optimized allocation, used in hooks
	- used for error messages

## [numbat-wasm 0.9.3] - 2020-11-08
- Optimized Address/H256 hooks

## [numbat-wasm 0.9.2] - 2020-11-06
- Allow slices as arguments 
- `storage_is_empty` annotation

## [numbat-wasm 0.9.1] - 2020-11-05
- BigUint serialization bugfix

## [numbat-wasm 0.9.0, numbat-codec 0.3.0, denali 0.2.0] - 2020-11-04
- Serialization completely refactored to use "fast exit" methods
- Storage/argument/result traits completely redesigned, simplified and optimized
- Completely ditched the approach from numbat-wasm 0.8.0.

## [numbat-wasm 0.8.0, numbat-codec 0.2.0] - 2020-11-02
- Was the first version to split Encode/Decode into TopEncode/NestedEncode/TopDecode/NestedDecode
- Attempted to optimize the serializer to use "fast exit" closures. It worked, but the resulting bytecode size was not satisfactory. Even though it was completely replaced and never got to be used, it historically remains the solution of this release.
- Some of the storage/argument/result trait refactorings, survived.

## [numbat-wasm 0.7.2] - 2020-10-16
- small int EI
- minor refactors, serialization fixes

## [numbat-wasm 0.7.1] - 2020-10-07
- Avoid function selector infinite loop
- Crowdfunding contract initial commit

## [numbat-wasm 0.7.0, denali 0.0.5] - 2020-10-06
- Code coverage now possible
- Denali in Rust
- Modules properly integrated in the build process

## [numbat-wasm 0.6.2] - 2020-09-16
- NonZeroUsize iterator and utils

## [numbat-wasm 0.6.1, numbat-codec 0.1.3] - 2020-09-15
- Integrated NonZeroUsize into the framework
- Specialized small int top encoding/decoding
- `only_owner!` macro

## [numbat-wasm 0.6.0, numbat-codec 0.1.2] - 2020-08-25
- Redesigned the entire build process with wasm crates
- Standard modules
- Moved all example contracts from sc-examples-rs to the framework

## [numbat-wasm 0.5.5] - 2020-07-27
- H256 now boxed
- SCResult is_ok, is_err

## [numbat-wasm 0.5.4, numbat-codec 0.1.1] - 2020-07-18
- MultiResultVec - new, from_iter
- EncodeError type

## [numbat-wasm 0.5.3, numbat-codec 0.0.5] - 2020-07-10
- Extracted numbat-codec to separate crate
- Fixed non_snake_case endpoint handling

## [numbat-wasm 0.5.2] - 2020-07-09
- Queue type

## [numbat-wasm 0.0.5] - 2020-07-02
- `#[view]` attribute, same as `#[endpoint]`
- `#[init]` attribute
- `storage get mut` annotation + BorrowedMutStorage
- Encode for references
- Array serialization/deserialization
- Option serialization fix
- Arg name in error message
- Async call arguments based on traits

## [numbat-wasm 0.5.0] - 2020-06-29
- EndpointResult trait, arg serialization trait, arg loader
- Variadic args/results: OptionalArg, OptionalResult, MultiResultX

## [numbat-wasm 0.4.6] - 2020-06-21
- MultiResultVec implementation
- Callback varargs

## [numbat-wasm 0.4.5] - 2020-06-09
- `storage_set` allows slices
- H256 to_vec
- async call and callback argument fixes
- eliminate bloat when no callback
- the new numbat lightweight serializer (would later become numbat-codec)
- imports macro
- OtherContractHandle implementation

## [numbat-wasm 0.4.4] - 2020-05-19
- Serialization fixes for small ints
- `storage_load_cumulated_validator_reward` hook

## [numbat-wasm 0.4.3] - 2020-05-11
- Allow any (macro-based) serializable argument in async call
- `#[var_args]`
- Call data serialization refactoring

## [numbat-wasm 0.4.2] - 2020-05-07
- Tutorial setup (later abandoned)

## [numbat-wasm 0.4.1] - 2020-05-06
- Direct storage conversion for simple types
- Block info hooks

## [numbat-wasm 0.4.0] - 2020-05-06
- Serde-based serializer (later abandoned)
- Major storage improvements:
	- Generate storage getters & setters
	- Variable length storage keys

## [numbat-wasm 0.3.2] - 2020-04-13
- Fixes in the macro-based argument handling

## [numbat-wasm 0.3.0] - 2020-04-03
- Raw callback support
- `storage_load_len` hook
- Multi args
- Multi args in async calls

## [numbat-wasm 0.2.0] - 2020-03-18
- BigUint trait created, added operators (including bitwise)
- BigUint used for balances

## [numbat-wasm 0.1.1] - 2020-02-27
- Async call contract proxy infrastructure

## [numbat-wasm 0.0.5] - 2020-02-05 
- Initial relase of the framework
- Main features at this time:
	- contract main macro
	- handling of arguments and results automagically using macros
	- BigInt generic type, hooked directly to the Andes big int heap
	- `#[private]` attribute

## [Initial commit] - 2020-01-04
- Early framework moved here from sc-examples
- 4 crates:
	- numbat-wasm
	- numbat-wasm-derive for macros
	- numbat-wasm-node for wasm
	- numbat-wasm-debug for debugging and early tests
