use dharitri_sc::api::{const_handles, RawHandle};

#[derive(Debug)]
pub struct TxStaticVars {
    pub external_view_target_address_handle: RawHandle,
    pub next_handle: RawHandle,
    pub num_arguments: i32,
    pub call_value_rewa_handle: RawHandle,
    pub call_value_multi_dcdt_handle: RawHandle,
}

impl Default for TxStaticVars {
    fn default() -> Self {
        TxStaticVars {
            external_view_target_address_handle: 0,
            next_handle: const_handles::NEW_HANDLE_START_FROM,
            num_arguments: -1,
            call_value_rewa_handle: const_handles::UNINITIALIZED_HANDLE,
            call_value_multi_dcdt_handle: const_handles::UNINITIALIZED_HANDLE,
        }
    }
}
