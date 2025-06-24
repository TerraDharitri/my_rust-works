use numbat_wasm::*;
use numbat_wasm_debug::*;

fn world() -> BlockchainMock {
    let mut blockchain = BlockchainMock::new();
    blockchain.set_current_dir_from_workspace("contracts/feature-tests/basic-features");

    blockchain.register_contract(
        "file:output/basic-features.wasm",
        Box::new(|context| Box::new(basic_features::contract_obj(context))),
    );
    blockchain
}

#[test]
fn big_int_to_i64_rs() {
    numbat_wasm_debug::denali_rs("denali/big_int_to_i64.scen.json", world());
}

#[test]
fn big_num_conversions_rs() {
    numbat_wasm_debug::denali_rs("denali/big_num_conversions.scen.json", world());
}

#[test]
fn big_uint_sqrt_rs() {
    numbat_wasm_debug::denali_rs("denali/big_uint_sqrt.scen.json", world());
}

#[test]
fn big_uint_to_u64_rs() {
    numbat_wasm_debug::denali_rs("denali/big_uint_to_u64.scen.json", world());
}

#[test]
fn block_info_rs() {
    numbat_wasm_debug::denali_rs("denali/block_info.scen.json", world());
}

#[test]
fn boxed_bytes_zeros_rs() {
    numbat_wasm_debug::denali_rs("denali/boxed_bytes_zeros.scen.json", world());
}

#[test]
fn codec_err_rs() {
    numbat_wasm_debug::denali_rs("denali/codec_err.scen.json", world());
}

#[test]
fn count_ones_rs() {
    numbat_wasm_debug::denali_rs("denali/count_ones.scen.json", world());
}

// #[test]
// fn crypto_elliptic_curves_rs() {
//     numbat_wasm_debug::denali_rs("denali/crypto_elliptic_curves.scen.json", world());
// }

#[test]
fn crypto_keccak256_rs() {
    numbat_wasm_debug::denali_rs("denali/crypto_keccak256.scen.json", world());
}

// #[test]
// fn crypto_ripemd160_rs() {
//     numbat_wasm_debug::denali_rs("denali/crypto_ripemd160.scen.json", world());
// }

#[test]
fn crypto_sha256_rs() {
    numbat_wasm_debug::denali_rs("denali/crypto_sha256.scen.json", world());
}

// #[test]
// fn crypto_verify_funcs_rs() {
//     numbat_wasm_debug::denali_rs("denali/crypto_verify_funcs.scen.json", world());
// }

#[test]
fn echo_array_u8_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_array_u8.scen.json", world());
}

#[test]
fn echo_async_result_empty_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_async_result_empty.scen.json", world());
}

#[test]
fn echo_async_result_empty_managed_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_async_result_empty_managed.scen.json", world());
}

#[test]
fn echo_big_int_nested_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_big_int_nested.scen.json", world());
}

#[test]
fn echo_big_int_top_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_big_int_top.scen.json", world());
}

#[test]
fn echo_big_uint_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_big_uint.scen.json", world());
}

#[test]
fn echo_boxed_bytes_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_boxed_bytes.scen.json", world());
}

#[test]
fn echo_i32_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_i32.scen.json", world());
}

#[test]
fn echo_i64_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_i64.scen.json", world());
}

#[test]
fn echo_managed_bytes_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_managed_bytes.scen.json", world());
}

#[test]
fn echo_managed_vec_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_managed_vec.scen.json", world());
}

#[test]
fn echo_nothing_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_nothing.scen.json", world());
}

#[test]
fn echo_ser_ex_1_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_ser_ex_1.scen.json", world());
}

#[test]
fn echo_slice_u8_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_slice_u8.scen.json", world());
}

#[test]
fn echo_str_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_str.scen.json", world());
}

#[test]
fn echo_str_box_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_str_box.scen.json", world());
}

#[test]
fn echo_string_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_string.scen.json", world());
}

#[test]
fn echo_tuple_into_multiresult_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_tuple_into_multiresult.scen.json", world());
}

#[test]
fn echo_u64_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_u64.scen.json", world());
}

#[test]
fn echo_usize_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_usize.scen.json", world());
}

#[test]
fn echo_varags_tuples_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_varags_tuples.scen.json", world());
}

#[test]
fn echo_varargs_u32_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_varargs_u32.scen.json", world());
}

#[test]
fn echo_vec_u8_rs() {
    numbat_wasm_debug::denali_rs("denali/echo_vec_u8.scen.json", world());
}

#[test]
fn events_rs() {
    numbat_wasm_debug::denali_rs("denali/events.scen.json", world());
}

#[test]
fn events_legacy_rs() {
    numbat_wasm_debug::denali_rs("denali/events_legacy.scen.json", world());
}

#[test]
fn get_caller_rs() {
    numbat_wasm_debug::denali_rs("denali/get_caller.scen.json", world());
}

#[test]
fn get_cumulated_validator_rewards_rs() {
    numbat_wasm_debug::denali_rs("denali/get_cumulated_validator_rewards.scen.json", world());
}

// TODO: uncomment after implemented the full DCDT format in denali-rs
// #[test]
// fn get_dcdt_local_roles_rs() {
// 	numbat_wasm_debug::denali_rs(
// 		"denali/get_dcdt_local_roles.scen.json",
// 		world(),
// 	);
// }

#[test]
fn managed_buffer_concat_1_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_buffer_concat_1.scen.json", world());
}

#[test]
fn managed_buffer_concat_2_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_buffer_concat_2.scen.json", world());
}

#[test]
fn managed_buffer_eq_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_buffer_eq.scen.json", world());
}

#[test]
fn managed_buffer_overwrite_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_buffer_overwrite.scen.json", world());
}

#[test]
fn managed_buffer_slice_1_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_buffer_slice_1.scen.json", world());
}

#[test]
fn managed_buffer_slice_2_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_buffer_slice_2.scen.json", world());
}

#[test]
fn managed_vec_address_push_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_vec_address_push.scen.json", world());
}

#[test]
fn managed_vec_biguint_push_rs() {
    numbat_wasm_debug::denali_rs("denali/managed_vec_biguint_push.scen.json", world());
}

#[test]
fn only_owner_rs() {
    numbat_wasm_debug::denali_rs("denali/only_owner.scen.json", world());
}

// Will never run in denali-rs.
// #[test]
// fn out_of_gas_rs() {
//     numbat_wasm_debug::denali_rs("denali/out_of_gas.scen.json", world());
// }

#[test]
fn panic_rs() {
    numbat_wasm_debug::denali_rs("denali/panic.scen.json", world());
}

#[test]
fn return_codes_rs() {
    numbat_wasm_debug::denali_rs("denali/return_codes.scen.json", world());
}

#[test]
fn sc_properties_rs() {
    numbat_wasm_debug::denali_rs("denali/sc_properties.scen.json", world());
}

#[test]
fn sc_result_rs() {
    numbat_wasm_debug::denali_rs("denali/sc_result.scen.json", world());
}

#[test]
fn storage_addr_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_addr.scen.json", world());
}

#[test]
fn storage_big_int_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_big_int.scen.json", world());
}

#[test]
fn storage_big_uint_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_big_uint.scen.json", world());
}

#[test]
fn storage_bool_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_bool.scen.json", world());
}

#[test]
fn storage_clear_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_clear.scen.json", world());
}

#[test]
fn storage_i64_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_i64.scen.json", world());
}

#[test]
fn storage_i64_bad_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_i64_bad.scen.json", world());
}

#[test]
fn storage_map1_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_map1.scen.json", world());
}

#[test]
fn storage_map2_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_map2.scen.json", world());
}

#[test]
fn storage_map3_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_map3.scen.json", world());
}

#[test]
fn storage_mapper_linked_list_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_linked_list.scen.json", world());
}

#[test]
fn storage_mapper_queue_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_queue.scen.json", world());
}

#[test]
fn storage_mapper_map_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_map.scen.json", world());
}

#[test]
fn storage_mapper_map_storage_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_map_storage.scen.json", world());
}

#[test]
fn storage_mapper_set_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_set.scen.json", world());
}

#[test]
fn storage_mapper_single_value_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_single_value.scen.json", world());
}

#[test]
fn storage_mapper_token_attributes_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_token_attributes.scen.json", world());
}

#[test]
fn storage_mapper_vec_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_mapper_vec.scen.json", world());
}

#[test]
fn storage_opt_addr_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_opt_addr.scen.json", world());
}

#[test]
fn storage_reserved_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_reserved.scen.json", world());
}

#[test]
fn storage_u64_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_u64.scen.json", world());
}

#[test]
fn storage_u64_bad_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_u64_bad.scen.json", world());
}

#[test]
fn storage_usize_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_usize.scen.json", world());
}

#[test]
fn storage_usize_bad_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_usize_bad.scen.json", world());
}

#[test]
fn storage_vec_u8_rs() {
    numbat_wasm_debug::denali_rs("denali/storage_vec_u8.scen.json", world());
}
