#[test]
fn boxed_bytes_zeros_go() {
    numbat_wasm_debug::denali_go("denali/boxed_bytes_zeros.scen.json");
}

#[test]
fn crypto_elliptic_curves_legacy_go() {
    numbat_wasm_debug::denali_go("denali/crypto_elliptic_curves_legacy.scen.json");
}

#[test]
fn crypto_keccak256_legacy_alloc_go() {
    numbat_wasm_debug::denali_go("denali/crypto_keccak256_legacy_alloc.scen.json");
}

#[test]
fn crypto_ripemd160_legacy_go() {
    numbat_wasm_debug::denali_go("denali/crypto_ripemd160_legacy.scen.json");
}

#[test]
fn crypto_sha256_legacy_alloc_go() {
    numbat_wasm_debug::denali_go("denali/crypto_sha256_legacy_alloc.scen.json");
}

#[test]
fn crypto_verify_bls_legacy_go() {
    numbat_wasm_debug::denali_go("denali/crypto_verify_bls_legacy.scen.json");
}

#[test]
fn crypto_verify_ed25519_legacy_go() {
    numbat_wasm_debug::denali_go("denali/crypto_verify_ed25519_legacy.scen.json");
}

#[test]
fn crypto_verify_secp256k1_legacy_go() {
    numbat_wasm_debug::denali_go("denali/crypto_verify_secp256k1_legacy.scen.json");
}

#[test]
fn echo_async_result_empty_go() {
    numbat_wasm_debug::denali_go("denali/echo_async_result_empty.scen.json");
}

#[test]
fn echo_big_int_nested_alloc_go() {
    numbat_wasm_debug::denali_go("denali/echo_big_int_nested_alloc.scen.json");
}

#[test]
fn echo_boxed_bytes_go() {
    numbat_wasm_debug::denali_go("denali/echo_boxed_bytes.scen.json");
}

#[test]
fn echo_multi_value_tuples_alloc_go() {
    numbat_wasm_debug::denali_go("denali/echo_multi_value_tuples_alloc.scen.json");
}

#[test]
fn echo_ser_ex_1_go() {
    numbat_wasm_debug::denali_go("denali/echo_ser_ex_1.scen.json");
}

#[test]
fn echo_slice_u8_go() {
    numbat_wasm_debug::denali_go("denali/echo_slice_u8.scen.json");
}

#[test]
fn echo_str_go() {
    numbat_wasm_debug::denali_go("denali/echo_str.scen.json");
}

#[test]
fn echo_str_box_go() {
    numbat_wasm_debug::denali_go("denali/echo_str_box.scen.json");
}

#[test]
fn echo_string_go() {
    numbat_wasm_debug::denali_go("denali/echo_string.scen.json");
}

#[test]
fn echo_varargs_u32_alloc_go() {
    numbat_wasm_debug::denali_go("denali/echo_varargs_u32_alloc.scen.json");
}

#[test]
fn echo_vec_u8_go() {
    numbat_wasm_debug::denali_go("denali/echo_vec_u8.scen.json");
}

#[test]
fn events_legacy_go() {
    numbat_wasm_debug::denali_go("denali/events_legacy.scen.json");
}

#[test]
fn managed_buffer_concat_2_go() {
    numbat_wasm_debug::denali_go("denali/managed_buffer_concat_2.scen.json");
}

#[test]
fn managed_buffer_load_slice_go() {
    numbat_wasm_debug::denali_go("denali/managed_buffer_load_slice.scen.json");
}

#[test]
fn managed_buffer_overwrite_go() {
    numbat_wasm_debug::denali_go("denali/managed_buffer_overwrite.scen.json");
}

#[test]
fn managed_buffer_set_slice_go() {
    numbat_wasm_debug::denali_go("denali/managed_buffer_set_slice.scen.json");
}

#[test]
fn only_owner_legacy_go() {
    numbat_wasm_debug::denali_go("denali/only_owner_legacy.scen.json");
}

#[test]
fn sc_result_go() {
    numbat_wasm_debug::denali_go("denali/sc_result.scen.json");
}

#[test]
fn storage_address_go() {
    numbat_wasm_debug::denali_go("denali/storage_address.scen.json");
}

#[test]
fn storage_opt_address_go() {
    numbat_wasm_debug::denali_go("denali/storage_opt_address.scen.json");
}

#[test]
fn storage_vec_u8_go() {
    numbat_wasm_debug::denali_go("denali/storage_vec_u8.scen.json");
}
