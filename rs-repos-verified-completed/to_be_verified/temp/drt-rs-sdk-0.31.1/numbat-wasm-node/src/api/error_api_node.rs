use crate::{error_hook, VmApiImpl};
use numbat_wasm::api::{ErrorApi, ErrorApiImpl, Handle};

extern "C" {
    #[cfg(not(feature = "ei-unmanaged"))]
    fn managedSignalError(messageHandle: i32) -> !;
}

impl ErrorApi for VmApiImpl {
    type ErrorApiImpl = VmApiImpl;

    #[inline]
    fn error_api_impl() -> Self {
        VmApiImpl {}
    }
}

impl ErrorApiImpl for VmApiImpl {
    #[inline(always)]
    fn signal_error(&self, message: &[u8]) -> ! {
        error_hook::signal_error(message)
    }

    #[cfg(feature = "ei-unmanaged")]
    fn signal_error_from_buffer(&self, message_handle: Handle) -> ! {
        use numbat_wasm::api::ManagedBufferApi;
        let message = self.mb_to_boxed_bytes(message_handle);
        self.signal_error(message.as_slice())
    }

    #[inline(always)]
    #[cfg(not(feature = "ei-unmanaged"))]
    fn signal_error_from_buffer(&self, message_handle: Handle) -> ! {
        unsafe { managedSignalError(message_handle) }
    }
}
