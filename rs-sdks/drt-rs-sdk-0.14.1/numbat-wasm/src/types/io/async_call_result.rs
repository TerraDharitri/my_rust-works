use crate::abi::TypeAbi;
use crate::io::{ArgId, DynArg, DynArgInput};
use crate::types::BoxedBytes;
use alloc::string::String;
use numbat_codec::TopDecodeInput;

pub struct AsyncCallError {
	pub err_code: u32,
	pub err_msg: BoxedBytes,
}

pub enum AsyncCallResult<T> {
	Ok(T),
	Err(AsyncCallError),
}

impl<T> AsyncCallResult<T> {
	#[inline]
	pub fn is_ok(&self) -> bool {
		matches!(self, AsyncCallResult::Ok(_))
	}

	#[inline]
	pub fn is_err(&self) -> bool {
		!self.is_ok()
	}
}

impl<T> DynArg for AsyncCallResult<T>
where
	T: DynArg,
{
	fn dyn_load<I, D>(loader: &mut D, arg_id: ArgId) -> Self
	where
		I: TopDecodeInput,
		D: DynArgInput<I>,
	{
		let err_code = u32::dyn_load(loader, arg_id);
		if err_code == 0 {
			let arg = T::dyn_load(loader, arg_id);
			AsyncCallResult::Ok(arg)
		} else {
			let err_msg = if loader.has_next() {
				BoxedBytes::dyn_load(loader, arg_id)
			} else {
				// temporary fix, until a problem involving missing error messages in the protocol gets fixed
				// can be removed after the protocol is patched
				// error messages should not normally be missing
				BoxedBytes::empty()
			};
			AsyncCallResult::Err(AsyncCallError { err_code, err_msg })
		}
	}
}

impl<T: TypeAbi> TypeAbi for AsyncCallResult<T> {
	fn type_name() -> String {
		let mut repr = String::from("AsyncCallResult<");
		repr.push_str(T::type_name().as_str());
		repr.push('>');
		repr
	}
}
