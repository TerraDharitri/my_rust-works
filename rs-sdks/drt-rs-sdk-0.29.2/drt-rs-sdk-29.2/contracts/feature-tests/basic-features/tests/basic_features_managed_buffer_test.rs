use numbat_wasm::types::{BoxedBytes, ManagedAddress, ManagedBuffer};
use numbat_wasm_debug::*;

use basic_features::managed_buffer_features::ManagedBufferFeatures;

#[test]
fn test_managed_buffer_new_empty() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let result = bf.mbuffer_new();
    assert_eq!(ManagedBuffer::new(), result);
}

#[test]
#[should_panic]
fn test_managed_buffer_set_slice_should_panic() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let buffer = bf.mbuffer_from_slice(&[1, 2, 3][..]);
    let _ = bf.mbuffer_set_slice(buffer.clone(), 4, &[5]);
}

#[test]
fn test_managed_buffer_set_slice() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let buffer = bf.mbuffer_from_slice(&[1, 2, 3][..]);

    let set_result = bf.mbuffer_set_slice(buffer, 1, &[5][..]);
    let expected_set_result = bf.mbuffer_from_slice(&[1, 5, 3][..]);
    assert_eq!(expected_set_result, set_result);
}

#[test]
fn test_managed_buffer_from() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let result = bf.mbuffer_from_slice(&[1, 2, 3][..]);
    assert_eq!(ManagedBuffer::from(&[1, 2, 3][..]), result);
    let result = bf.mbuffer_from_boxed_bytes(BoxedBytes::from(&[4, 5, 6][..]));
    assert_eq!(ManagedBuffer::from(&[4, 5, 6][..]), result);
}

#[test]
fn test_managed_address_zero() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let result = bf.managed_address_zero();
    assert_eq!(ManagedAddress::zero(), result);
}

#[test]
fn test_managed_address_from() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    assert_eq!(
        bf.managed_address_zero(),
        bf.managed_address_from(&[0u8; 32])
    );
}
