use numbat_wasm::{api::VMApi, numbat_codec::TryStaticCast};

/// The reference to the API implementation based on Andes hooks.
/// It continas no data, can be embedded at no cost.
/// Cloning it is a no-op.
pub struct VmApiImpl {}

impl TryStaticCast for VmApiImpl {}

impl VMApi for VmApiImpl {}

/// Should be no-op. The API implementation is zero-sized.
impl Clone for VmApiImpl {
    #[inline]
    fn clone(&self) -> Self {
        VmApiImpl {}
    }
}
