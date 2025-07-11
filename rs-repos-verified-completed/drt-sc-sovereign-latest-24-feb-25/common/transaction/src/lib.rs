#![no_std]

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

pub mod transaction_status;

// revert protection
pub const MIN_BLOCKS_FOR_FINALITY: u64 = 10;

pub type BatchId = u64;
pub type TxId = u64;
pub type GasLimit = u64;
pub type TxNonce = u64;

pub type BlockNonce = u64;
pub type SenderAddress<M> = ManagedAddress<M>;
pub type ReceiverAddress<M> = ManagedAddress<M>;
pub type TxAsMultiValue<M> = MultiValue7<
    BlockNonce,
    TxNonce,
    SenderAddress<M>,
    ReceiverAddress<M>,
    ManagedVec<M, DcdtTokenPayment<M>>,
    ManagedVec<M, DcdtTokenData<M>>,
    Option<TransferData<M>>,
>;
pub type PaymentsVec<M> = ManagedVec<M, DcdtTokenPayment<M>>;
pub type EventPaymentTuple<M> = MultiValue3<TokenIdentifier<M>, u64, DcdtTokenData<M>>;
pub type TxBatchSplitInFields<M> = MultiValue2<BatchId, MultiValueEncoded<M, TxAsMultiValue<M>>>;
pub type ExtractedFeeResult<M> =
    MultiValue2<OptionalValue<DcdtTokenPayment<M>>, ManagedVec<M, DcdtTokenPayment<M>>>;
pub type OptionalValueTransferDataTuple<M> =
    OptionalValue<MultiValue3<GasLimit, ManagedBuffer<M>, ManagedVec<M, ManagedBuffer<M>>>>;

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct Operation<M: ManagedTypeApi> {
    pub to: ManagedAddress<M>,
    pub tokens: ManagedVec<M, OperationDcdtPayment<M>>,
    pub data: OperationData<M>,
}

impl<M: ManagedTypeApi> Operation<M> {
    #[inline]
    pub fn new(
        to: ManagedAddress<M>,
        tokens: ManagedVec<M, OperationDcdtPayment<M>>,
        data: OperationData<M>,
    ) -> Self {
        Operation { to, tokens, data }
    }

    pub fn map_tokens_to_multi_value_encoded(
        &self,
    ) -> MultiValueEncoded<M, MultiValue3<TokenIdentifier<M>, u64, DcdtTokenData<M>>> {
        let mut tuples = MultiValueEncoded::new();

        for token in &self.tokens {
            tuples.push((token.token_identifier, token.token_nonce, token.token_data).into());
        }

        tuples
    }
}

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct TransferData<M: ManagedTypeApi> {
    pub gas_limit: GasLimit,
    pub function: ManagedBuffer<M>,
    pub args: ManagedVec<M, ManagedBuffer<M>>,
}

impl<M: ManagedTypeApi> TransferData<M> {
    #[inline]
    pub fn new(
        gas_limit: GasLimit,
        function: ManagedBuffer<M>,
        args: ManagedVec<M, ManagedBuffer<M>>,
    ) -> Self {
        TransferData {
            gas_limit,
            function,
            args,
        }
    }

    pub fn from_optional_value(
        opt_value_transfer_data: OptionalValueTransferDataTuple<M>,
    ) -> Option<Self> {
        match opt_value_transfer_data {
            OptionalValue::Some(multi_value_transfer_data) => {
                Option::Some(multi_value_transfer_data.into())
            }
            OptionalValue::None => Option::None,
        }
    }
}

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct OperationData<M: ManagedTypeApi> {
    pub op_nonce: TxId,
    pub op_sender: ManagedAddress<M>,
    pub opt_transfer_data: Option<TransferData<M>>,
}

impl<M: ManagedTypeApi> OperationData<M> {
    #[inline]
    pub fn new(
        op_nonce: TxId,
        op_sender: ManagedAddress<M>,
        opt_transfer_data: Option<TransferData<M>>,
    ) -> Self {
        OperationData {
            op_nonce,
            op_sender,
            opt_transfer_data,
        }
    }
}

impl<M: ManagedTypeApi>
    From<MultiValue3<GasLimit, ManagedBuffer<M>, ManagedVec<M, ManagedBuffer<M>>>>
    for TransferData<M>
{
    fn from(
        value: MultiValue3<GasLimit, ManagedBuffer<M>, ManagedVec<M, ManagedBuffer<M>>>,
    ) -> Self {
        let (gas_limit, function, vec) = value.into_tuple();
        TransferData::new(gas_limit, function, vec)
    }
}

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct EventPayment<M: ManagedTypeApi> {
    pub identifier: TokenIdentifier<M>,
    pub nonce: u64,
    pub data: DcdtTokenData<M>,
}

impl<M: ManagedTypeApi> From<EventPaymentTuple<M>> for EventPayment<M> {
    fn from(value: EventPaymentTuple<M>) -> Self {
        let (identifier, nonce, data) = value.into_tuple();

        EventPayment::new(identifier, nonce, data)
    }
}

impl<M: ManagedTypeApi> From<EventPayment<M>> for EventPaymentTuple<M> {
    fn from(value: EventPayment<M>) -> EventPaymentTuple<M> {
        MultiValue3((value.identifier, value.nonce, value.data))
    }
}

impl<M: ManagedTypeApi> EventPayment<M> {
    pub fn new(identifier: TokenIdentifier<M>, nonce: u64, data: DcdtTokenData<M>) -> Self {
        EventPayment {
            identifier,
            nonce,
            data,
        }
    }

    pub fn map_to_tuple_multi_value(
        array: MultiValueEncoded<M, Self>,
    ) -> MultiValueEncoded<M, EventPaymentTuple<M>> {
        array.into_iter().map(|payment| payment.into()).collect()
    }
}

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct OperationTuple<M: ManagedTypeApi> {
    pub op_hash: ManagedBuffer<M>,
    pub operation: Operation<M>,
}

impl<M: ManagedTypeApi> OperationTuple<M> {
    #[inline]
    pub fn new(op_hash: ManagedBuffer<M>, operation: Operation<M>) -> Self {
        OperationTuple { op_hash, operation }
    }
}

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct OperationDcdtPayment<M: ManagedTypeApi> {
    pub token_identifier: TokenIdentifier<M>,
    pub token_nonce: u64,
    pub token_data: DcdtTokenData<M>,
}

impl<M: ManagedTypeApi> OperationDcdtPayment<M> {
    #[inline]
    pub fn new(
        token_identifier: TokenIdentifier<M>,
        token_nonce: u64,
        token_data: DcdtTokenData<M>,
    ) -> Self {
        Self {
            token_identifier,
            token_nonce,
            token_data,
        }
    }
}

impl<M: ManagedTypeApi> From<OperationDcdtPayment<M>> for DcdtTokenPayment<M> {
    #[inline]
    fn from(payment: OperationDcdtPayment<M>) -> Self {
        DcdtTokenPayment {
            token_identifier: payment.token_identifier,
            token_nonce: payment.token_nonce,
            amount: payment.token_data.amount,
        }
    }
}

impl<M: ManagedTypeApi> Default for OperationDcdtPayment<M> {
    fn default() -> Self {
        OperationDcdtPayment {
            token_identifier: TokenIdentifier::from(ManagedBuffer::new()),
            token_nonce: 0,
            token_data: DcdtTokenData::default(),
        }
    }
}

#[derive(TopEncode, TopDecode, NestedEncode, NestedDecode, TypeAbi, ManagedVecItem, Clone)]
pub struct Transaction<M: ManagedTypeApi> {
    pub block_nonce: BlockNonce,
    pub nonce: TxNonce,
    pub from: ManagedAddress<M>,
    pub to: ManagedAddress<M>,
    pub tokens: ManagedVec<M, DcdtTokenPayment<M>>,
    pub token_data: ManagedVec<M, DcdtTokenData<M>>,
    pub opt_transfer_data: Option<TransferData<M>>,
    pub is_refund_tx: bool,
}

impl<M: ManagedTypeApi> From<TxAsMultiValue<M>> for Transaction<M> {
    fn from(tx_as_multiresult: TxAsMultiValue<M>) -> Self {
        let (block_nonce, nonce, from, to, tokens, token_data, opt_transfer_data) =
            tx_as_multiresult.into_tuple();

        Transaction {
            block_nonce,
            nonce,
            from,
            to,
            tokens,
            token_data,
            opt_transfer_data,
            is_refund_tx: false,
        }
    }
}

impl<M: ManagedTypeApi> Transaction<M> {
    pub fn into_multiresult(self) -> TxAsMultiValue<M> {
        (
            self.block_nonce,
            self.nonce,
            self.from,
            self.to,
            self.tokens,
            self.token_data,
            self.opt_transfer_data,
        )
            .into()
    }
}
