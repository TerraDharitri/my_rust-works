use super::*;
use std::collections::BTreeMap;

#[derive(Debug)]
pub struct Dcdt {
    pub token_identifier: Option<BytesValue>,
    pub instances: Option<Instance>,
    pub last_nonce: Option<U64Value>,
    pub roles: Option<BTreeMap<BytesKey, BytesValue>>,
}

impl InterpretableFrom<DcdtRaw> for Dcdt {
    fn interpret_from(from: DcdtRaw, context: &InterpreterContext) -> Self {
        Dcdt {
            dcdt: from.dcdt.map(|tree| {
                tree.into_iter()
                    .map(|(k, v)| {
                        (
                            BytesKey::interpret_from(k, context),
                            BytesValue::interpret_from(v, context),
                        )
                    })
                    .collect()
            }),
        }
    }
}

#[derive(Debug)]
pub struct Instance {
    pub nonce: U64Value,
    pub value: BigIntValue,
    pub dcdt_type: U32Value,
    pub name: Option<BytesValue>,
    pub creator: Option<BytesValue>,
    pub reserved: Option<BytesValue>,
    pub royalties: Option<U32Value>,
    pub hash: Option<BytesValue>,
    pub uri: Option<BTreeMap<BytesKey, BytesValue>>,
    pub properties: Option<BytesValue>,
    pub attributes: Option<BytesValue>,
}
