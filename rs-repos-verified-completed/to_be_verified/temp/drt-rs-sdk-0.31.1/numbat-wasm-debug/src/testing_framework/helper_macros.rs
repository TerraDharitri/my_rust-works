#[macro_export]
macro_rules! rust_biguint {
    ($value:expr) => {{
        numbat_wasm_debug::num_bigint::BigUint::from($value as u64)
    }};
}

#[macro_export]
macro_rules! managed_biguint {
    ($value:expr) => {{
        numbat_wasm::types::BigUint::from($value as u64)
    }};
}

#[macro_export]
macro_rules! managed_buffer {
    ($value:expr) => {{
        numbat_wasm::types::ManagedBuffer::new_from_bytes($value)
    }};
}

#[macro_export]
macro_rules! managed_address {
    ($address:expr) => {{
        numbat_wasm::types::ManagedAddress::from_address($address)
    }};
}

#[macro_export]
macro_rules! managed_token_id {
    ($bytes:expr) => {{
        if $bytes == &numbat_wasm::types::TokenIdentifier::<numbat_wasm_debug::DebugApi>::REWA_REPRESENTATION[..] {
            numbat_wasm::types::TokenIdentifier::rewa()
        } else {
            numbat_wasm::types::TokenIdentifier::from_dcdt_bytes($bytes)
        }
    }};
}

#[macro_export]
macro_rules! assert_sc_error {
    ($sc_result:expr, $expected_string:expr) => {{
        match $sc_result {
            numbat_wasm::types::SCResult::Ok(t) => {
                panic!("Expected SCError, but got SCResult::Ok: {:?}", t)
            },
            numbat_wasm::types::SCResult::Err(err) => {
                let as_str = String::from_utf8(err.as_bytes().to_vec()).unwrap();
                assert_eq!(as_str, $expected_string);
            },
        }
    }};
}

#[macro_export]
macro_rules! assert_values_eq {
    ($left:expr, $right:expr) => {{
        assert!(
            $left == $right,
            "Assert mismatch: \n Left: {:?} \n Right: {:?}",
            $left,
            $right
        )
    }};
}

#[macro_export]
macro_rules! unwrap_or_panic {
    ($sc_result:expr) => {{
        match $sc_result {
            numbat_wasm::types::SCResult::Ok(t) => t,
            numbat_wasm::types::SCResult::Err(err) => {
                let as_str = String::from_utf8(err.as_bytes().to_vec()).unwrap();
                panic!("{}", as_str);
            },
        }
    }};
}
