use numbat_wasm::{
    api::{const_handles, Handle, StaticVarApi, StaticVarApiImpl},
    types::LockableStaticBuffer,
};

use crate::VmApiImpl;

static mut STATIC_BUFFER: LockableStaticBuffer = LockableStaticBuffer::new();
static mut EXTERNAL_VIEW_TARGET_ADDRESS_HANDLE: i32 = 0;
static mut NEXT_HANDLE: i32 = const_handles::NEW_HANDLE_START_FROM;
static mut NUM_ARGUMENTS: i32 = 0;

// The compiler seems to enjoy inlining this method no matter how many times it shows up.
// Hence the rather drastic directive.
#[inline(never)]
fn next_handle() -> Handle {
    unsafe {
        NEXT_HANDLE -= 1;
        NEXT_HANDLE
    }
}

impl StaticVarApi for VmApiImpl {
    type StaticVarApiImpl = VmApiImpl;

    fn static_var_api_impl() -> Self::StaticVarApiImpl {
        VmApiImpl {}
    }
}

impl StaticVarApiImpl for VmApiImpl {
    fn with_lockable_static_buffer<R, F: FnOnce(&mut LockableStaticBuffer) -> R>(&self, f: F) -> R {
        unsafe { f(&mut STATIC_BUFFER) }
    }

    fn set_external_view_target_address_handle(&self, handle: Handle) {
        unsafe {
            EXTERNAL_VIEW_TARGET_ADDRESS_HANDLE = handle;
        }
    }

    fn get_external_view_target_address_handle(&self) -> Handle {
        unsafe { EXTERNAL_VIEW_TARGET_ADDRESS_HANDLE }
    }

    fn next_handle(&self) -> Handle {
        next_handle()
    }

    fn set_num_arguments(&self, num_arguments: i32) {
        unsafe {
            NUM_ARGUMENTS = num_arguments;
        }
    }

    fn get_num_arguments(&self) -> i32 {
        unsafe { NUM_ARGUMENTS }
    }
}
