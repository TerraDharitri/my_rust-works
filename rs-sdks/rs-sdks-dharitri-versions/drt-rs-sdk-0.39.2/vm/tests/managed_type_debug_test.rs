use dharitri_chain_vm::DebugApi;
use dharitri_sc::{
    hex_literal::hex,
    types::{
        BigInt, BigUint, RewaOrDcdtTokenIdentifier, ManagedAddress, ManagedBuffer,
        ManagedByteArray, ManagedVec, TokenIdentifier,
    },
};

#[test]
fn test_big_uint_format() {
    let _ = DebugApi::dummy();
    let s = format!("{:?}", BigUint::<DebugApi>::from(0x1234u32));
    assert_eq!("BigUint { handle: -100, hex-value-be: \"1234\" }", s);
}

#[test]
fn test_big_int_format_1() {
    let _ = DebugApi::dummy();
    let s = format!("{:?}", BigInt::<DebugApi>::from(0x1234));
    assert_eq!("BigInt { handle: -100, hex-value-be: \"1234\" }", s);
}

#[test]
fn test_big_int_format_2() {
    let _ = DebugApi::dummy();
    let s = format!("{:?}", BigInt::<DebugApi>::from(-0x1234));
    assert_eq!("BigInt { handle: -100, hex-value-be: \"edcc\" }", s);
}

#[test]
fn test_managed_buffer() {
    let _ = DebugApi::dummy();
    let _ = dharitri_sc::hex_literal::hex!("abcd");
    let s = format!("{:?}", ManagedBuffer::<DebugApi>::from(&[0x12, 0x34]));
    assert_eq!("ManagedBuffer { handle: -100, hex-value: \"1234\" }", s);
}

#[test]
fn test_managed_byte_array() {
    let _ = DebugApi::dummy();
    let addr = hex!("01020304050607");
    let s = format!("{:?}", ManagedByteArray::<DebugApi, 7>::from(&addr));
    assert_eq!(
        "ManagedByteArray { handle: -100, size: 7, hex-value: \"01020304050607\" }",
        s
    );
}

#[test]
fn test_managed_address() {
    let _ = DebugApi::dummy();
    let addr = hex!("233300000000000000000000000000000002333000000000000000000002ffff");
    let s = format!("{:?}", ManagedAddress::<DebugApi>::from(&addr));
    assert_eq!("ManagedAddress { handle: -100, hex-value: \"233300000000000000000000000000000002333000000000000000000002ffff\" }", s);
}

#[test]
fn test_managed_address_pretty() {
    let _ = DebugApi::dummy();
    let addr = hex!("233300000000000000000000000000000002333000000000000000000002ffff");
    let s = format!("{:#?}", ManagedAddress::<DebugApi>::from(&addr));
    assert_eq!(
        "ManagedAddress {
    handle: -100,
    hex-value: \"233300000000000000000000000000000002333000000000000000000002ffff\",
}",
        s
    );
}

#[test]
fn test_managed_vec_format_biguint() {
    let _ = DebugApi::dummy();
    let mut mv = ManagedVec::<DebugApi, BigUint<DebugApi>>::new();
    mv.push(BigUint::from(1u32));
    mv.push(BigUint::from(2u32));
    let s = format!("{:?}", &mv);
    assert_eq!("[BigUint { handle: -101, hex-value-be: \"01\" }, BigUint { handle: -102, hex-value-be: \"02\" }]", s);
}

#[test]
fn test_managed_vec_format_rewa_or_dcdt() {
    let _ = DebugApi::dummy();
    let mut mv = ManagedVec::<DebugApi, RewaOrDcdtTokenIdentifier<DebugApi>>::new();
    mv.push(RewaOrDcdtTokenIdentifier::rewa());
    mv.push(RewaOrDcdtTokenIdentifier::dcdt(TokenIdentifier::from(
        "MYTOKEN-5678",
    )));
    let s = format!("{:?}", &mv);
    assert_eq!(
        "[RewaOrDcdtTokenIdentifier::Rewa, RewaOrDcdtTokenIdentifier::Dcdt(\"MYTOKEN-5678\")]",
        s
    );
}
