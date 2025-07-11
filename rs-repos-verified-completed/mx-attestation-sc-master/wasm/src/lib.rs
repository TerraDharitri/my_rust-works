// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Endpoints:                           12
// Async Callback (empty):               1
// Total number of exported functions:  14

#![no_std]

// Configuration that works with rustc < 1.73.0.
// TODO: Recommended rustc version: 1.73.0 or newer.
#![feature(lang_items)]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    attestation
    (
        init => init
        version => version
        register => register
        saveAttestation => save_attestation
        confirmAttestation => confirm_attestation
        setRegisterCost => set_register_cost
        addAttestator => add_attestator
        removeAttestator => remove_attestator
        claim => claim
        getUserState => get_user_state_endpoint
        getPublicKey => get_public_key
        getRegistrationCost => registration_cost
        getMaxNonceDiff => max_nonce_diff
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
