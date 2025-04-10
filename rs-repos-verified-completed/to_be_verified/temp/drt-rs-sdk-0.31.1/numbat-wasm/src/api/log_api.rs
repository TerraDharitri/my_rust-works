use crate::types::heap::ArgBuffer;

use super::Handle;

pub trait LogApi {
    type LogApiImpl: LogApiImpl;

    fn log_api_impl() -> Self::LogApiImpl;
}

/// Interface to only be used by code generated by the macros.
/// The smart contract code doesn't have access to these methods directly.
pub trait LogApiImpl {
    /// Saves an event log.
    fn write_event_log(&self, topics_buffer: &ArgBuffer, data: &[u8]);

    /// The legacy Andes hook for saving event logs. It does the same, but only accepts 32-byte topics.
    /// Only kept for backwards compatibility.
    fn write_legacy_log(&self, topics: &[[u8; 32]], data: &[u8]);

    fn managed_write_log(&self, topics_handle: Handle, data_handle: Handle);
}
