use crate::{
    abi::{OutputAbi, TypeAbi, TypeDescriptionContainer},
    api::SendApi,
    io::EndpointResult,
    types::{BigUint, ManagedAddress, ManagedBuffer},
};
use alloc::{string::String, vec::Vec};

pub struct SendRewa<SA>
where
    SA: SendApi + 'static,
{
    pub api: SA,
    pub to: ManagedAddress<SA>,
    pub amount: BigUint<SA>,
    pub data: ManagedBuffer<SA>,
}

impl<SA> EndpointResult for SendRewa<SA>
where
    SA: SendApi + 'static,
{
    type DecodeAs = ();

    #[inline]
    fn finish<FA>(&self, _api: FA) {
        self.api
            .direct_rewa(&self.to, &self.amount, self.data.clone());
    }
}

impl<SA> TypeAbi for SendRewa<SA>
where
    SA: SendApi + 'static,
{
    fn type_name() -> String {
        "SendRewa".into()
    }

    /// No ABI output.
    fn output_abis(_: &[&'static str]) -> Vec<OutputAbi> {
        Vec::new()
    }

    fn provide_type_descriptions<TDC: TypeDescriptionContainer>(_: &mut TDC) {}
}
