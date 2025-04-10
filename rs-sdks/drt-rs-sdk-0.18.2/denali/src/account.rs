use super::*;
use std::collections::BTreeMap;

#[derive(Debug)]
pub struct Account {
    pub comment: Option<String>,
    pub nonce: U64Value,
    pub balance: BigUintValue,
    pub dcdt: Option<BTreeMap<BytesKey, BigUintValue>>,
    pub username: Option<BytesValue>,
    pub storage: BTreeMap<BytesKey, BytesValue>,
    pub code: Option<BytesValue>,
    pub owner: Option<AddressValue>,
}

impl InterpretableFrom<AccountRaw> for Account {
    fn interpret_from(from: AccountRaw, context: &InterpreterContext) -> Self {
        Account {
            comment: from.comment,
            nonce: U64Value::interpret_from(from.nonce, context),
            balance: BigUintValue::interpret_from(from.balance, context),
            dcdt: from.dcdt.map(|tree| {
                tree.into_iter()
                    .map(|(k, v)| {
                        (
                            BytesKey::interpret_from(k, context),
                            BigUintValue::interpret_from(v, context),
                        )
                    })
                    .collect()
            }),
            username: from
                .username
                .map(|c| BytesValue::interpret_from(c, context)),
            storage: from
                .storage
                .into_iter()
                .map(|(k, v)| {
                    (
                        BytesKey::interpret_from(k, context),
                        BytesValue::interpret_from(v, context),
                    )
                })
                .collect(),
            code: from.code.map(|c| BytesValue::interpret_from(c, context)),
            owner: from.owner.map(|v| AddressValue::interpret_from(v, context)),
        }
    }
}
