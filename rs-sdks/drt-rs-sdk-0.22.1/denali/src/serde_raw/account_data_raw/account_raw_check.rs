use serde::{Deserialize, Serialize};

use crate::serde_raw::{CheckBytesValueRaw, CheckDcdtMapRaw, CheckStorageRaw};

#[derive(Serialize, Deserialize)]
#[serde(rename_all = "camelCase")]
pub struct CheckAccountRaw {
    #[serde(default)]
    #[serde(skip_serializing_if = "Option::is_none")]
    pub comment: Option<String>,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckBytesValueRaw::is_unspecified")]
    pub nonce: CheckBytesValueRaw,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckBytesValueRaw::is_unspecified")]
    pub balance: CheckBytesValueRaw,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckDcdtMapRaw::is_unspecified")]
    pub dcdt: CheckDcdtMapRaw,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckBytesValueRaw::is_unspecified")]
    pub username: CheckBytesValueRaw,

    #[serde(default)]
    pub storage: CheckStorageRaw,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckBytesValueRaw::is_unspecified")]
    pub code: CheckBytesValueRaw,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckBytesValueRaw::is_unspecified")]
    pub owner: CheckBytesValueRaw,

    #[serde(default)]
    #[serde(skip_serializing_if = "CheckBytesValueRaw::is_unspecified")]
    pub async_call_data: CheckBytesValueRaw,
}
