use numbat_codec::{
    multi_types::MultiValue3, DecodeErrorHandler, EncodeErrorHandler, TopDecodeMulti,
    TopDecodeMultiInput, TopDecodeMultiLength, TopEncodeMulti, TopEncodeMultiOutput,
};

use crate::{
    abi::{TypeAbi, TypeName},
    api::ManagedTypeApi,
    types::{BigUint, DcdtTokenPayment, ManagedVecItem, TokenIdentifier},
};

/// Thin wrapper around DcdtTokenPayment, which has different I/O behaviour:
/// - as input, is built from 3 arguments instead of 1: token identifier, nonce, value
/// - as output, it becomes 3 results instead of 1: token identifier, nonce, value
#[derive(Clone, PartialEq, Debug)]
pub struct DcdtTokenPaymentMultiValue<M: ManagedTypeApi> {
    obj: DcdtTokenPayment<M>,
}

#[deprecated(
    since = "0.29.3",
    note = "Alias kept for backwards compatibility. Replace with `DcdtTokenPaymentMultiValue`"
)]
pub type DcdtTokenPaymentMultiArg<M> = DcdtTokenPaymentMultiValue<M>;

impl<M: ManagedTypeApi> From<DcdtTokenPayment<M>> for DcdtTokenPaymentMultiValue<M> {
    #[inline]
    fn from(obj: DcdtTokenPayment<M>) -> Self {
        DcdtTokenPaymentMultiValue { obj }
    }
}

impl<M: ManagedTypeApi> DcdtTokenPaymentMultiValue<M> {
    pub fn into_dcdt_token_payment(self) -> DcdtTokenPayment<M> {
        self.obj
    }
}

impl<M: ManagedTypeApi> ManagedVecItem for DcdtTokenPaymentMultiValue<M> {
    const PAYLOAD_SIZE: usize = DcdtTokenPayment::<M>::PAYLOAD_SIZE;
    const SKIPS_RESERIALIZATION: bool = DcdtTokenPayment::<M>::SKIPS_RESERIALIZATION;
    type Ref<'a> = Self;

    #[inline]
    fn from_byte_reader<Reader: FnMut(&mut [u8])>(reader: Reader) -> Self {
        DcdtTokenPayment::from_byte_reader(reader).into()
    }

    #[inline]
    unsafe fn from_byte_reader_as_borrow<'a, Reader: FnMut(&mut [u8])>(
        reader: Reader,
    ) -> Self::Ref<'a> {
        Self::from_byte_reader(reader)
    }

    #[inline]
    fn to_byte_writer<R, Writer: FnMut(&[u8]) -> R>(&self, writer: Writer) -> R {
        self.obj.to_byte_writer(writer)
    }
}

impl<M> TopEncodeMulti for DcdtTokenPaymentMultiValue<M>
where
    M: ManagedTypeApi,
{
    fn multi_encode_or_handle_err<O, H>(&self, output: &mut O, h: H) -> Result<(), H::HandledErr>
    where
        O: TopEncodeMultiOutput,
        H: EncodeErrorHandler,
    {
        output.push_single_value(&self.obj.token_identifier, h)?;
        output.push_single_value(&self.obj.token_nonce, h)?;
        output.push_single_value(&self.obj.amount, h)?;
        Ok(())
    }
}

impl<M> TopDecodeMulti for DcdtTokenPaymentMultiValue<M>
where
    M: ManagedTypeApi,
{
    fn multi_decode_or_handle_err<I, H>(input: &mut I, h: H) -> Result<Self, H::HandledErr>
    where
        I: TopDecodeMultiInput,
        H: DecodeErrorHandler,
    {
        let token_identifier = TokenIdentifier::multi_decode_or_handle_err(input, h)?;
        let token_nonce = u64::multi_decode_or_handle_err(input, h)?;
        let amount = BigUint::multi_decode_or_handle_err(input, h)?;
        Ok(DcdtTokenPayment::new(token_identifier, token_nonce, amount).into())
    }
}

impl<M> TopDecodeMultiLength for DcdtTokenPaymentMultiValue<M>
where
    M: ManagedTypeApi,
{
    const LEN: usize = 3;
}

impl<M> TypeAbi for DcdtTokenPaymentMultiValue<M>
where
    M: ManagedTypeApi,
{
    fn type_name() -> TypeName {
        MultiValue3::<TokenIdentifier<M>, u64, BigUint<M>>::type_name()
    }

    fn is_variadic() -> bool {
        true
    }
}
