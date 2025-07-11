# Change Log

There are several crates in this repo, this changelog will keep track of all of them.

Check [Keep a Changelog](http://keepachangelog.com/) for recommendations on how to structure this file.

## [numbat-wasm 0.0.17] - 2022-03-01
- Disabled git tag/commit info in ABI due to issue in standard modules.

## [numbat-wasm 0.29.0] - 2022-03-01
- Cleaned up allocator from modules: `DnsModule`, `DcdtModule`, `FeaturesModule`, `PauseModule`, `UsersModule`.
- Crypto API managed wrapper over legacy VM endpoints.
- Managed multi-value types refactor and rename.
- `ManagedVec` - `remove`, `contains`, `find`.
- `ManagedVecItem` derive for simple enums.
- Feature `cb_closure_managed_deser` replaced by `cb_closure_unmanaged_deser`, managed implementation is now the default.
- Git tag/commit info in ABI.

## [numbat-wasm 0.28.0, numbat-codec 0.0.17, denali 0.12.0] - 2022-02-22
- Major numbat-codec refactor:
	- Redesigned the error handling for single value encoding
	- Introduced multi-value encoding, which replaces the previous endpoint argument and result mechanisms
- Denali improvements:
	- Multi-values: out, topics, DCDT uri
	- Logs "+" wildcard
- Builtin function mocks: `DCDTNFTUpdateAttributes`, `DCDTNFTAddURI`
- New storage mappers: `FungibleTokenMapper`, `NonFungibleTokenMapper`, `WhitelistMapper`
- Call value wrapper avoids using invalid token index in requests

## [numbat-wasm 0.27.4, numbat-codec 0.8.5] - 2022-02-02
- Backwards compatibility fix.

## [numbat-wasm 0.27.3] - 2022-01-31
- Backwards compatibility fix.
- Trailing commas are allowed in `sc_panic!`, `require!` and `sc_print!`.
- DcdtTokenData `decode_attributes_or_exit` for easier error handling.

## [numbat-wasm 0.27.2, numbat-codec 0.8.4] - 2022-01-27
- Added missing non-specialized decode implementations for managed types.

## [numbat-wasm 0.27.1] - 2022-01-27
- Deriving `PartialEq` now works on structs that contain managed types.

## [numbat-wasm 0.27.0] - 2022-01-25
- Fixed certain compilation error messages. The previous implementation of the macro preprocessor would have concealed the location of many issues.
- Changed implementation of `require!`:
	- `require!` no longer returns a `SCResult` type, when the condition is false it now stops the transaction immediately, via `signal_error`;
	- `require!` now accepts message formatting;
	- `require_old!` gives access to the old implementation.
- The Rust testing framework can now handle panics and async calls.
- ABI bugfix - an issue regarding nested types.
- `meta` crate build also attempts to call `wasm-opt` after building the contracts.
- Refactored `CodeMetadata` and added "payable by SC" field.
- Empty contract template.

## [numbat-wasm 0.26.0] - 2022-01-19
- Major VM API trait refactoring. All API methods can be accessed from a static context. Removed api instance variables from all objects.
- External view contracts
	- Annotating one or more endpoints with `#[external_view]` triggers the framework to create a second "external view" contract where all these endpoints are placed. This is primarily to reduce the main contract size.
	- General `meta` crate functionality refactor to allow multiple contract generation.
- `ManagedRef` type
	- Provided as a more efficient alternative to regular references to managed types
	- Has `Copy` semantics
	- `ManagedVec` iterators made safer by the proper use of lifetimes
	- `ManagedVec` `get_mut` offers a safe mutable reference, using lifetimes
	- Some initial optimizations in storage mappers
- First version of a message formatter based on `ManagedBuffer`s:
	- `sc_print!` macro
	- `sc_panic!` macro
- Random number generator wrapper over randomness source from the VM.

## [numbat-wasm 0.25.0] - 2021-12-14
- Rust testing framework - denali generation fixes and some more getters
- Standard modules moved to `numbat-wasm-modules` crates

## [numbat-wasm 0.24.0] - 2021-12-07
- Rust testing framework
- Managed Crypto API - keccak256 and sha256
- New hook for DCDT local roles
- Only-owner module annotation

## [numbat-wasm 0.23.1, numbat-codec 0.8.3] - 2021-11-25
- `ArrayVec` serialization
- `ManagedAddress` additional conversions

## [numbat-wasm 0.23.0] - 2021-11-23
- Static access to API. Static thread-local context stack in the debugger.

## [numbat-wasm 0.22.11] - 2021-11-17
- Derive `ManagedVecItem` generics fix
- Constructor can reside in module

## [numbat-wasm 0.22.10] - 2021-11-12
- `ManagedMultiResultVec` push accepts multi result

## [numbat-wasm 0.22.9] - 2021-11-12
- `ManagedVarArgsEager` implementation
- `DcdtLocalRoleFlags`, no heap allocation in `get_dcdt_local_roles`

## [numbat-wasm 0.22.8, numbat-codec 0.8.2] - 2021-11-12
- Optimized decode unsigned number from slice

## [numbat-wasm 0.22.7] - 2021-11-12
- Optimized decode unsigned number from slice
- Optimized blockchain API: managed get token nonce, get dcdt balance
- `ManagedVecItem` for `ManagedByteArray`

## [numbat-wasm 0.22.6] - 2021-11-11
- Optimized decode u64 from `ManagedBuffer`
- `ManagedVecItem` in `derive_imports`

## [numbat-wasm 0.22.5] - 2021-11-11
- Implemented `ManagedVecItem` for `bool`.
- Substitution for `ManagedMultiResultVec::new()`.

## [numbat-wasm 0.22.4] - 2021-11-11
- Derive `ManagedVecItem`.
- Nested encode and decode from ManagedBuffers cached in a static singleton buffer.
- Implemented `ExactSizeIterator` for `ManagedVecIterator`.

## [numbat-wasm 0.22.3] - 2021-11-10
- Memory allocation optimisations.

## [numbat-wasm 0.22.2] - 2021-11-06
- Callback endpoint automatically created empty for contracts that have no callbacks. This is determined by the `meta` crate, based on the ABI of the contract and its modules.
- `UnorderedSetMapper`
- `IgnoreVarArgs` variadic argument type that ignores input

## [numbat-wasm 0.22.1] - 2021-11-04
- Made the generated code in `wasm/lib.rs` more compact with the use of macros.

## [numbat-wasm 0.22.0] - 2021-11-02
- Mechanism for generating contract endpoints based on ABI. Previously, all endpoints from all modules from a crate were automaticaly included, now they can be filtered based on what modules are used.
- Contract `meta` crates are now capable of building the respective contracts and the ABIs without relying on `drtpy`.
- Renamed feature `andes-tests` to `denali-go-tests`

## [numbat-wasm 0.21.2] - 2021-10-26
- Bugfix regarding contract upgrade args in `numbat-wasm-debug`

## [numbat-wasm 0.21.1, numbat-codec 0.8.1, denali 0.11.1] - 2021-10-26
- Relative path improvements and fixes in `numbat-wasm-debug`:
	- denali-rs `file:` syntax now actually loads files and correctly unifies equivalent paths
	- debugging now works seamlessly, without needing to temporarily change paths in the tests
- SC proxy - `register_meta_dcdt`
- Debugger builtin function mocks check for DCDT roles
- ABI provides definitions for DcdtTokenPayment, DcdtTokenData, DcdtTokenType

## [numbat-wasm 0.21.0, numbat-codec 0.8.0, denali 0.11.0] - 2021-10-22
- Denali support for NFT syntax. Many more small improvements and some major refactoring.
- Major refactoring of the `numbat-wasm-debug` crate, which enables the debugger and the coverage tool. Many features added:
	- support for synchronous calls, also nested synchronous calls
	- support for NFT simple transfers
	- support for DCDT multitransfer (FT + NFT)
	- builtin functions mocked in the debugger: `DCDTLocalMint`, `DCDTLocalBurn`, `MultiDCDTNFTTransfer`, `DCDTNFTTransfer`, `DCDTNFTCreate`, `DCDTNFTAddQuantity`, `DCDTNFTBurn`, `DCDTTransfer`, `ChangeOwnerAddress`, `SetUserName`
	- supports deploy/deploy from source/upgrade/upgrade from source from contracts
- `#[payment_multi]` annotation
- `ManagedRef` type, that allows easier handling of managed types
- ABI contains endpoint mutability flag (mutable/readonly)
- reverse iteration for `ManagedVec`

## [numbat-wasm 0.20.1] - 2021-10-05
- Added missing managed methods in blockchain API: `is_smart_contract`, `get_shard_of_address`, `get_balance`.
- Improved preprocessor substitutions: `ManagedAddress`, `TokenIdentifier`.

## [numbat-wasm 0.20.0, numbat-codec 0.7.0, denali 0.10.0] - 2021-10-02
- Managed callback handling
- Managed async call result
- ManagedVec improvements, deserialization fix
- Better conversions between big numeric types
- Improved preprocessor substitutions: hidden generics for most managed types
- Build info in ABI - rustc version, framework version, crate version

## [numbat-wasm 0.19.1] - 2021-09-17
- Legacy Send API implementation fix

## [numbat-wasm 0.19.0, numbat-codec 0.6.0, denali 0.0.17] - 2021-09-10
- Managed types used extensively. Because of this, the recommended Andes minimum version is `v1.4.10`.
	- Redesigned parts of the numbat-codec, so as to allow custom type specializations. These specializations allow serializers and types to bypass the limitations of the codec traits to provide optimized implementations. Managed type serialization relies on this.
	- Redesigned existing managed types: `BigInt`, `BigUint`, `EllipticCurve`.
	- Added the `ManagedBuffer` type, which can be used to store anything on the VM side.
	- Support for complex operations using managed buffers, such as storing lists of elements in a managed buffer via the `ManagedVec` type.
	- There are `ManagedAddress`es now. They rely on another managed type, the `ManagedByteArray`, which is a fixed size managed structure.
	- `TokenIdentifier` is now a managed type.
	- Serializer based on a managed buffer.
	- Storage keys are now based on managed buffers.
	- All error messages generated by the framework are assembled using a managed buffer.
	- The blockchain API uses managed types for most interactions.
	- The contract call API uses managed types for most interactions.
	- The call value API supports multi transfer via managed `DcdtTokenPayment` objects.
	- Event logs are sent to the VM via managed types (`ManagedVec<ManagedBuffer>` for topics, `ManagedBuffer` for data).
	- Type conversion traits for managed types: `ManagedFrom` and `ManagedInto`.
	- There are now 2 types of `SCError`: `StaticSCError` for static messages and `ManagedSCError`, which is backed by a managed buffer.
	- Contract errors can now be triggered immediately, without the need to return them from an endpoint.
- Improved macro preprocessor: more complex patterns can now be substituted.
	- Generic API parameter needs not be specified every time.
	- Substitutions available for most managed types and storage mappers.
- Separated contract API into low-level VM API connectors and high-level utility objects to be used in the contracts.
- Denali-rs improvements:
	- Self tests synchronized with denali-go. Some missing features needed to be added to make them pass.
	- Support for DCDT tokens.
	- Support for DCDT multi-transfer.


## [numbat-wasm 0.18.2] - 2021-08-20
- Crypto API: `ripemd160` function, custom secp256k1 signature verification (`verify_custom_secp256k1`) and signature generation (`encode_secp256k1_der_signature`).

## [numbat-wasm 0.18.1] - 2021-08-05
- Added "safe" storage mappers, which serialize keys using nested encoding instead of top. The old respective mappers only kept for backwards compatibility, are now deprecated.

## [numbat-wasm 0.18.0, denali 0.8.0] - 2021-07-28

- New math hooks exposed from Andes:
	- `pow`, `log2`, `sqrt`
	- cryptography: elliptic curves
- `deploy_contract` now returns `Option<Address>`
- `deploy_from_source_contract` API
- Send API refactored for more consistency and ease of use.
- High level proxies can be used to deploy contracts.
- Denali log syntax updated, to match Andes.
- A better `#[only_owner]` annotation, which can be applied directly to endoint methods. This annotation also shows up in the ABI.
- `numbat-wasm-derive` now an optional dependency of `numbat-wasm`. Use `#[numbat_wasm::contract]` instead of `#[numbat_wasm_derive::contract]` now. Same for proxies and modules.

## [numbat-wasm 0.17.4] - 2021-06-30
- conversions from big ints to small int: `BigUint::to_u64`, `BigInt::to_i64`

## [numbat-wasm 0.17.3] - 2021-06-11
- `SingleValueMapper` `set_if_empty` method

## [numbat-wasm 0.17.2] - 2021-06-04
- callbacks can now declared in modules only (manual forwarding from the main contract no longer required)

## [numbat-wasm 0.17.1] - 2021-06-04
- `legacy-nft-transfer` feature for interacting with older versions of Andes

## [numbat-wasm 0.17.0] - 2021-05-28
- Integration tests can now call Andes-Denali (denali-go)
- Send API refactoring and cleanup
	- DCDT builtin function calls no longer require explicit gas
	- sync calls and transfer-execute no longer require explicit gas
- `#[payment_nonce]` endpoint argument annotation
- `#[payable]` annotation no longer allowed without argument

## [numbat-wasm 0.16.2, denali 0.7.2] - 2021-05-20
- New implementation for the `Try` trait for `SCResult`, in accordance to feature `try_trait_v2`
- Published DNS module, which helps contracts register usernames for themselves
- `DCDTLocalRole` more expressive type ABI

## [numbat-wasm 0.16.1, denali 0.7.1] - 2021-05-18
- Improvements in denali-rs: username, contract owner, nested async calls

## [numbat-wasm 0.16.0, denali 0.7.0, numbat-codec 0.5.3] - 2021-05-14
### Major redesign of important framework components:
- The arguments to contract/module/proxy annotations are gone. All items are generated in the same Rust module. Both submodule inclusion and contract calls are now Rust-module-aware.
- Submodule imports are now expressed as supertraits instead of the module getter annotated methods. Note: explicitly specifying the Rust module is required, in order for the framework to fetch generated types and functions from that module.
- Each contract now generates its own callable proxy to ease calling it. Caller contracts do no longer need to define a call interface, they can import it from the crate of the contract they want to call. Callable proxies contain the methods from the main contract, as well as from all the modules. Note: calling a contract requires the caller to specify the Rust module where it resides.
- We no longer have a separate syntax/parser/code generation for call proxies. They are just contracts with no implementations and annotated with `#[numbat_wasm_derive::proxy]` instead of `#[numbat_wasm_derive::contract]`.
- BigUint and BigInt are now associated types instead of generics in all API traits. Contracts need to specify them as `Self::BigUint` instead of just `BigUint`. Although more verbose, this might be more intuitive for the developer.
- `ContractCall`s, `AsyncCall`s and all other call & transfer result types now contain a reference to the Send API. This also means the `execute_on_dest_context` method no longer requires an api argument.
- `execute_on_dest_context` can now deserialize the call results automatically and provide them to the calling contract. There is a mechanism in place to deconstruct non-serialized types, e.g. `SCResult<T>` becomes `T` and `AsyncCall<Self::BigUint>` becomes `()`. 
- Callbacks and callback proxies needed to be adapted to the new system, but work similar to how they did in the past.
- Contracts can define proxy getter methods using the `#[proxy]` annotation.
- Callbacks can now have names, just like endpoints. This name gets saved in the callback closure in storage, but has no other impact on the contract. The reason I needed it was to help me with defining callback forwarders and avoiding some name collisions there. Callback forwarders are still needed for a little longer, until module callbacks are properly implemented.

### Denali
- denali-rs syntax synchronized with denali-go (`sc:` syntax, new DCDT call value syntax, _no NFTs yet_).

## [numbat-wasm 0.15.1] - 2021-04-30
- Mitigating nested sync calls with Send API `execute_on_dest_context_raw_custom_result_range`

## [numbat-wasm 0.15.0, numbat-codec 0.5.2] - 2021-04-19
- ABI
	- Constructor representation
	- Simplified ABI syntax for tuples and fixed-size arrays
- Final cleanup for the contract APIs: split off blockchain and crypto APIs
- Small fixes in the send API
- `TokenIdentifier` validation
- Minor refactoring in the numbat-codec 

## [numbat-wasm 0.14.2] - 2021-03-29
- Fixed contract call/callback logs in denali-rs

## [numbat-wasm 0.14.1] - 2021-03-25
- Unified variadic arguments with respective variadic results

## [numbat-wasm 0.14.0, denali 0.6.0, numbat-codec 0.5.1] - 2021-03-22
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

## [numbat-wasm 0.0.17, numbat-codec 0.3.0, denali 0.2.0] - 2020-11-04
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

## [numbat-wasm 0.7.0, denali 0.0.17] - 2020-10-06
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

## [numbat-wasm 0.5.3, numbat-codec 0.0.17] - 2020-07-10
- Extracted numbat-codec to separate crate
- Fixed non_snake_case endpoint handling

## [numbat-wasm 0.5.2] - 2020-07-09
- Queue type

## [numbat-wasm 0.5.1] - 2020-07-02
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
- `get_cumulated_validator_rewards` hook

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

## [numbat-wasm 0.0.17] - 2020-02-05 
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
