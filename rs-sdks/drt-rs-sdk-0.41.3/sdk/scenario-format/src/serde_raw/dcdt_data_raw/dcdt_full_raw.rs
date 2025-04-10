use serde::{Deserialize, Serialize};

use crate::serde_raw::{DcdtInstanceRaw, ValueSubTree};

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct DcdtFullRaw {
    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub token_identifier: Option<ValueSubTree>,

    #[serde(default)]
    pub instances: Vec<DcdtInstanceRaw>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub last_nonce: Option<ValueSubTree>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Vec::is_empty")]
    pub roles: Vec<String>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub frozen: Option<ValueSubTree>,
}
