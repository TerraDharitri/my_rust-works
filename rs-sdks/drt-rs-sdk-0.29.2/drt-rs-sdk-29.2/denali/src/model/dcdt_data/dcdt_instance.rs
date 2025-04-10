use crate::{
    interpret_trait::{InterpretableFrom, InterpreterContext},
    model::{BigUintValue, BytesValue, U64Value},
    serde_raw::InstanceRaw,
};

#[derive(Debug, Default)]
pub struct DcdtInstance {
    pub nonce: Option<U64Value>,
    pub balance: Option<BigUintValue>,
    pub creator: Option<BytesValue>,
    pub royalties: Option<U64Value>,
    pub hash: Option<BytesValue>,
    pub uri: Vec<BytesValue>,
    pub attributes: Option<BytesValue>,
}

impl InterpretableFrom<InstanceRaw> for DcdtInstance {
    fn interpret_from(from: InstanceRaw, context: &InterpreterContext) -> Self {
        DcdtInstance {
            nonce: from.nonce.map(|n| U64Value::interpret_from(n, context)),
            balance: from
                .balance
                .map(|b| BigUintValue::interpret_from(b, context)),
            creator: from.creator.map(|b| BytesValue::interpret_from(b, context)),
            royalties: from.royalties.map(|b| U64Value::interpret_from(b, context)),
            hash: from.hash.map(|b| BytesValue::interpret_from(b, context)),
            uri: from
                .uri
                .into_iter()
                .map(|b| BytesValue::interpret_from(b, context))
                .collect(),
            attributes: from
                .attributes
                .map(|b| BytesValue::interpret_from(b, context)),
        }
    }
}
