use alloc::vec::Vec;
use numbat_wasm::abi::*;

use super::*;
use serde::de::{self, Deserializer, MapAccess, Visitor};
use serde::ser::{SerializeMap, Serializer};
use serde::{Deserialize, Serialize};
use std::collections::BTreeMap;
use std::fmt;

#[derive(Serialize, Deserialize)]
pub struct InputAbiJson {
	#[serde(rename = "name")]
	pub arg_name: String,
	#[serde(rename = "type")]
	pub type_name: String,
	/// Bool that is only serialized when true
	#[serde(skip_serializing_if = "Option::is_none")]
	pub multi_arg: Option<bool>,
}

impl From<&InputAbi> for InputAbiJson {
	fn from(abi: &InputAbi) -> Self {
		InputAbiJson {
			arg_name: abi.arg_name.to_string(),
			type_name: abi.type_name.clone(),
			multi_arg: if abi.multi_arg { Some(true) } else { None },
		}
	}
}

#[derive(Serialize, Deserialize)]
pub struct OutputAbiJson {
	#[serde(rename = "name")]
	#[serde(skip_serializing_if = "String::is_empty")]
	pub output_name: String,
	#[serde(rename = "type")]
	pub type_name: String,
	/// Bool that is only serialized when true
	#[serde(skip_serializing_if = "Option::is_none")]
	pub multi_result: Option<bool>,
}

impl From<&OutputAbi> for OutputAbiJson {
	fn from(abi: &OutputAbi) -> Self {
		OutputAbiJson {
			output_name: abi.output_name.into(),
			type_name: abi.type_name.clone(),
			multi_result: if abi.multi_result { Some(true) } else { None },
		}
	}
}

#[derive(Serialize, Deserialize)]
pub struct EndpointAbiJson {
	#[serde(skip_serializing_if = "Vec::is_empty")]
	pub docs: Vec<String>,
	pub name: String,
	#[serde(rename = "payableInTokens")]
	#[serde(skip_serializing_if = "Vec::is_empty")]
	pub payable_in_tokens: Vec<String>,
	pub inputs: Vec<InputAbiJson>,
	pub outputs: Vec<OutputAbiJson>,
}

impl From<&EndpointAbi> for EndpointAbiJson {
	fn from(abi: &EndpointAbi) -> Self {
		let mut payable_in_tokens = Vec::new();
		if abi.payable {
			payable_in_tokens.push("REWA".to_string());
		}
		EndpointAbiJson {
			docs: abi.docs.iter().map(|d| d.to_string()).collect(),
			name: abi.name.to_string(),
			payable_in_tokens,
			inputs: abi
				.inputs
				.iter()
				.map(|input| InputAbiJson::from(input))
				.collect(),
			outputs: abi
				.outputs
				.iter()
				.map(|output| OutputAbiJson::from(output))
				.collect(),
		}
	}
}
