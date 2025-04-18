use crate::{
    interpret_trait::{InterpretableFrom, InterpreterContext},
    model::BytesKey,
    serde_raw::CheckDcdtMapContentsRaw,
};

use std::collections::BTreeMap;

use super::CheckDcdt;

#[derive(Debug)]
pub struct CheckDcdtMapContents {
    pub contents: BTreeMap<BytesKey, CheckDcdt>,
    pub other_dcdts_allowed: bool,
}

impl CheckDcdtMapContents {
    pub fn contains_token(&self, token_identifier: &[u8]) -> bool {
        let token_id_conv = BytesKey::from(token_identifier.to_vec());
        self.contents.contains_key(&token_id_conv)
    }
}

impl InterpretableFrom<CheckDcdtMapContentsRaw> for CheckDcdtMapContents {
    fn interpret_from(from: CheckDcdtMapContentsRaw, context: &InterpreterContext) -> Self {
        CheckDcdtMapContents {
            contents: from
                .contents
                .into_iter()
                .map(|(k, v)| {
                    (
                        BytesKey::interpret_from(k, context),
                        CheckDcdt::interpret_from(v, context),
                    )
                })
                .collect(),
            other_dcdts_allowed: from.other_dcdts_allowed,
        }
    }
}
