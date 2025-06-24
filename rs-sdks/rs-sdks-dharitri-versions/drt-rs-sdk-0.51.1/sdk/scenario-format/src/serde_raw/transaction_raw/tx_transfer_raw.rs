use serde::{Deserialize, Serialize};

use crate::serde_raw::{TxDCDTRaw, ValueSubTree};

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct TxTransferRaw {
    pub from: ValueSubTree,
    pub to: ValueSubTree,

    /// Backwards compatibility only.
    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub value: Option<ValueSubTree>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub rewa_value: Option<ValueSubTree>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Vec::is_empty")]
    pub dcdt_value: Vec<TxDCDTRaw>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub gas_limit: Option<ValueSubTree>,

    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub gas_price: Option<ValueSubTree>,
}
