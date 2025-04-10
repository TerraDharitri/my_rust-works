// Code generated by the numbat-wasm multi-contract system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                           74
// Async Callback (empty):               1
// Total number of exported functions:  76

#![no_std]

numbat_wasm_node::wasm_endpoints! {
    alloc_features
    (
        compute_sha256_legacy_alloc
        compute_keccak256_legacy_alloc
        compute_ripemd160_legacy
        verify_bls_signature_legacy
        verify_ed25519_signature_legacy
        verify_secp256k1_signature_legacy
        verify_custom_secp256k1_signature_legacy
        compute_secp256k1_der_signature_legacy
        echo_h256
        echo_boxed_array_u8
        echo_boxed_bytes
        echo_slice_u8
        echo_vec_u8
        echo_string
        echo_str
        echo_str_box
        echo_async_result_empty
        echo_large_boxed_byte_array
        echo_boxed_ser_example_1
        echo_multi_value_tuples
        echo_ser_example_1
        echo_vec_of_managed_buffer
        echo_big_int_vec
        echo_varags_u32
        echo_varags_big_uint
        compute_get_values
        compute_create_ec
        compute_get_ec_length
        compute_get_priv_key_byte_length
        compute_ec_add
        compute_ec_double
        compute_is_on_curve_ec
        compute_scalar_mult
        compute_scalar_base_mult
        compute_marshal_ec
        compute_marshal_compressed_ec
        compute_unmarshal_ec
        compute_unmarshal_compressed_ec
        compute_generate_key_ec
        logLegacyEventA
        logLegacyEventB
        only_owner_legacy
        return_sc_error
        result_ok
        result_err_from_bytes_1
        result_err_from_bytes_2
        result_err_from_bytes_3
        result_err_from_string
        result_err_from_str
        result_echo
        result_echo_2
        result_echo_3
        mbuffer_from_slice
        mbuffer_from_boxed_bytes
        mbuffer_overwrite
        mbuffer_append_bytes
        mbuffer_load_slice
        mbuffer_set_slice
        managed_address_from
        load_vec_u8
        load_addr
        load_opt_addr
        is_empty_opt_addr
        load_ser_1
        store_vec_u8
        store_addr
        store_opt_addr
        store_ser_1
        compare_h256
        h256_is_zero
        boxed_bytes_zeros
        boxed_bytes_concat_2
        boxed_bytes_split
        vec_concat_const
    )
}

numbat_wasm_node::wasm_empty_callback! {}
