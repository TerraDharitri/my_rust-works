use crate::api::{VMHooksApi, VMHooksApiBackend};
use dharitri_sc::{
    api::{RawHandle, StaticVarApi, StaticVarApiFlags, StaticVarApiImpl},
    types::LockableStaticBuffer,
};

impl<VHB: VMHooksApiBackend> StaticVarApi for VMHooksApi<VHB> {
    type StaticVarApiImpl = Self;

    fn static_var_api_impl() -> Self::StaticVarApiImpl {
        Self::api_impl()
    }
}

impl<VHB: VMHooksApiBackend> StaticVarApiImpl for VMHooksApi<VHB> {
    fn with_lockable_static_buffer<R, F: FnOnce(&mut LockableStaticBuffer) -> R>(&self, f: F) -> R {
        self.with_static_data(|data| {
            let mut lockable_static_buffer = data.lockable_static_buffer_cell.borrow_mut();
            f(&mut lockable_static_buffer)
        })
    }

    fn set_external_view_target_address_handle(&self, handle: RawHandle) {
        self.with_static_data(|data| {
            data.static_vars_cell
                .borrow_mut()
                .external_view_target_address_handle = handle;
        });
    }

    fn get_external_view_target_address_handle(&self) -> RawHandle {
        self.with_static_data(|data| {
            data.static_vars_cell
                .borrow()
                .external_view_target_address_handle
        })
    }

    fn next_handle(&self) -> RawHandle {
        self.with_static_data(|data| {
            let mut ref_tx_static_vars = data.static_vars_cell.borrow_mut();
            let new_handle = ref_tx_static_vars.next_handle;
            ref_tx_static_vars.next_handle -= 1;
            new_handle
        })
    }

    fn set_num_arguments(&self, num_arguments: i32) {
        self.with_static_data(|data| {
            data.static_vars_cell.borrow_mut().num_arguments = num_arguments;
        })
    }

    fn get_num_arguments(&self) -> i32 {
        self.with_static_data(|data| data.static_vars_cell.borrow().num_arguments)
    }

    fn set_flags(&self, flags: StaticVarApiFlags) {
        self.with_static_data(|data| {
            data.static_vars_cell.borrow_mut().flags = flags;
        })
    }

    fn get_flags(&self) -> StaticVarApiFlags {
        self.with_static_data(|data| data.static_vars_cell.borrow().flags)
    }

    fn is_scaling_factor_cached(&self, decimals: usize) -> bool {
        self.with_static_data(|data| data.static_vars_cell.borrow().scaling_factor_init[decimals])
    }

    fn set_scaling_factor_cached(&self, decimals: usize) {
        self.with_static_data(|data| {
            data.static_vars_cell.borrow_mut().scaling_factor_init[decimals] = true
        })
    }
}
