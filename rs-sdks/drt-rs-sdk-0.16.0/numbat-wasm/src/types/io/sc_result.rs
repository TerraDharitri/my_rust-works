use super::sc_error::SCError;
use crate::abi::{OutputAbi, TypeAbi, TypeDescriptionContainer};
use crate::api::EndpointFinishApi;
use crate::EndpointResult;
use crate::*;

/// Default way to optionally return an error from a smart contract endpoint.
#[must_use]
#[derive(Debug, PartialEq, Eq, Clone)]
pub enum SCResult<T> {
	Ok(T),
	Err(SCError),
}

impl<T> SCResult<T> {
	pub fn is_ok(&self) -> bool {
		matches!(self, SCResult::Ok(_))
	}

	pub fn is_err(&self) -> bool {
		!self.is_ok()
	}

	#[inline]
	pub fn ok(self) -> Option<T> {
		if let SCResult::Ok(t) = self {
			Some(t)
		} else {
			None
		}
	}

	#[inline]
	pub fn err(self) -> Option<SCError> {
		if let SCResult::Err(e) = self {
			Some(e)
		} else {
			None
		}
	}

	/// Used to convert from a regular Rust result.
	/// Any error type is accepted as long as it can be converted to a SCError
	/// (`Vec<u8>`, `&[u8]`, `BoxedBytes`, `String`, `&str` are covered).
	pub fn from_result<E>(r: core::result::Result<T, E>) -> Self
	where
		E: Into<SCError>,
	{
		match r {
			Ok(t) => SCResult::Ok(t),
			Err(e) => SCResult::Err(e.into()),
		}
	}
}

/// Implementing the `Try` trait overloads the `?` operator.  #teja789
// impl<T> core::ops::Try for SCResult<T> {
// 	type Ok = T;
// 	type Error = SCError;
// 	fn into_result(self) -> Result<T, SCError> {
// 		match self {
// 			SCResult::Ok(t) => Ok(t),
// 			SCResult::Err(e) => Err(e),
// 		}
// 	}
// 	fn from_error(v: SCError) -> Self {
// 		SCResult::Err(v)
// 	}
// 	fn from_ok(v: T) -> Self {
// 		SCResult::Ok(v)
// 	}
// }                                                     #teja789

use core::ops::{ControlFlow, FromResidual, Try};

impl<T> Try for SCResult<T> {
    type Output = T;
    type Residual = SCResult<SCError>;

    fn from_output(output: Self::Output) -> Self {
        SCResult::Ok(output)
    }

    fn branch(self) -> ControlFlow<Self::Residual, Self::Output> {
        match self {
            SCResult::Ok(value) => ControlFlow::Continue(value),
            SCResult::Err(error) => ControlFlow::Break(SCResult::Err(error)),
        }
    }
}

impl<T> FromResidual<SCResult<SCError>> for SCResult<T> {
    fn from_residual(residual: SCResult<SCError>) -> Self {
        match residual {
            SCResult::Err(e) => SCResult::Err(e),
            _ => panic!("Invalid conversion from residual to SCResult"),
        }
    }
}

impl<T> EndpointResult for SCResult<T>
where
	T: EndpointResult,
{
	/// Error implies the transaction fails, so if there is a result,
	/// it is of type `T`.
	type DecodeAs = T::DecodeAs;

	#[inline]
	fn finish<FA>(&self, api: FA)
	where
		FA: EndpointFinishApi + Clone + 'static,
	{
		match self {
			SCResult::Ok(t) => {
				t.finish(api);
			},
			SCResult::Err(e) => {
				api.signal_error(e.as_bytes());
			},
		}
	}
}

impl<T: TypeAbi> TypeAbi for SCResult<T> {
	fn type_name() -> String {
		T::type_name()
	}

	/// Gives `SCResult<()>` the possibility to produce 0 output ABIs,
	/// just like `()`.
	/// It is also possible to have `SCResult<MultiResultX<...>>`,
	/// so this gives the MultiResult to dissolve into its multiple output ABIs.
	fn output_abis(output_names: &[&'static str]) -> Vec<OutputAbi> {
		T::output_abis(output_names)
	}

	fn provide_type_descriptions<TDC: TypeDescriptionContainer>(accumulator: &mut TDC) {
		T::provide_type_descriptions(accumulator);
	}
}

impl<T> SCResult<T> {
	pub fn unwrap(self) -> T {
		match self {
			SCResult::Ok(t) => t,
			SCResult::Err(_) => panic!("called `SCResult::unwrap()`"),
		}
	}
}

impl<T> From<SCResult<T>> for Result<T, SCError> {
	fn from(result: SCResult<T>) -> Self {
		match result {
			SCResult::Ok(ok) => Result::Ok(ok),
			SCResult::Err(error) => Result::Err(error),
		}
	}
}
