use numbat_wasm::types::{ManagedBuffer, TokenIdentifier};
use numbat_wasm_debug::*;

use basic_features::token_identifier_features::TokenIdentifierFeatures;

#[test]
fn test_token_identifier_rewa() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let result = bf.token_identifier_rewa();
    assert_eq!(TokenIdentifier::rewa(), result);
}

/// This just tests the contract syntax.
/// For a complete suite of test cases, see `numbat-wasm-debug/tests/managed_token_identifier_test.rs`.
#[test]
fn test_token_identifier_is_valid() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let result = bf.token_identifier_is_valid_1(TokenIdentifier::from(&b"ALC-6258d2"[..]));
    assert!(result);
    let result = bf.token_identifier_is_valid_1(TokenIdentifier::from(&b"AL-C6258d2"[..]));
    assert!(!result);
    let result = bf.token_identifier_is_valid_2(ManagedBuffer::from(&b"12345-6258d2"[..]));
    assert!(result);
    let result = bf.token_identifier_is_valid_2(ManagedBuffer::from(&b"ALCCCCCCCCC-6258d2"[..]));
    assert!(!result);
}
