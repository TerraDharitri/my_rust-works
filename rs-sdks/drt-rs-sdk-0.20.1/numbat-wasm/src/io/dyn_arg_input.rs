use crate::{
    api::{ErrorApi, ManagedTypeApi},
    err_msg,
};
use numbat_codec::{try_cast_ref, TopDecodeInput};

/// Abstracts away the loading of multi-arguments.
/// Acts as an abstract source for these arguments.
///
/// The main method, `next_arg_input` will provide a decode input,
/// from which any deserializable object can be deserialized.
///
/// Structs implementing this trait are also responsible with
/// error handling, such as:
/// - deserialization errors
/// - insufficient arguments
/// - too many arguments
/// For this reason it also requires the ErrorApi trait.
///
/// There are 2 main scenarios for it:
/// - deserializing endpoint arguments directly from the API
/// - deserializing callback arguments saved to storage, from a call data string
///
pub trait DynArgInput {
    type ItemInput: TopDecodeInput;

    type ErrorApi: ErrorApi + ManagedTypeApi + Sized;

    fn dyn_arg_vm_api(&self) -> Self::ErrorApi;

    fn vm_api_cast<CastApi: Clone + 'static>(&self) -> CastApi {
        let api = self.dyn_arg_vm_api();
        if let Some(cast_api_ref) = try_cast_ref::<Self::ErrorApi, CastApi>(&api) {
            cast_api_ref.clone()
        } else {
            self.dyn_arg_vm_api().signal_error(b"unsupported operation")
        }
    }

    /// Check if there are more arguments that can be loaded.
    fn has_next(&self) -> bool;

    /// Retrieves an input for deserializing an argument.
    /// If the loader is out of arguments, it will crash by itself with an appropriate error,
    /// without returning.
    /// Use if the next argument is optional, use `has_next` beforehand.
    fn next_arg_input(&mut self) -> Self::ItemInput;

    /// Called after retrieving all arguments to validate that extra arguments were not provided.
    fn assert_no_more_args(&self) {
        if self.has_next() {
            self.dyn_arg_vm_api()
                .signal_error(err_msg::ARG_WRONG_NUMBER);
        }
    }
}
