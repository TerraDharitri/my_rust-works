use super::*;
use std::collections::BTreeMap;

#[derive(Debug)]
pub enum CheckStorage {
	Star,
	Equal(BTreeMap<BytesKey, CheckValue<BytesValue>>),
}

impl InterpretableFrom<CheckStorageRaw> for CheckStorage {
	fn interpret_from(from: CheckStorageRaw, context: &InterpreterContext) -> Self {
		match from {
			CheckStorageRaw::Star => CheckStorage::Star,
			CheckStorageRaw::Equal(m) => CheckStorage::Equal(
				m.into_iter()
					.map(|(k, v)| {
						(
							BytesKey::interpret_from(k, context),
							CheckValue::<BytesValue>::interpret_from(v, context),
						)
					})
					.collect(),
			),
		}
	}
}

impl CheckStorage {
	pub fn is_star(&self) -> bool {
		matches!(self, CheckStorage::Star)
	}
}

#[derive(Debug)]
pub enum CheckDcdt {
	Star,
	Equal(BTreeMap<BytesKey, CheckValue<BigUintValue>>),
}

impl InterpretableFrom<CheckDcdtRaw> for CheckDcdt {
	fn interpret_from(from: CheckDcdtRaw, context: &InterpreterContext) -> Self {
		match from {
			CheckDcdtRaw::Unspecified => CheckDcdt::Equal(BTreeMap::new()),
			CheckDcdtRaw::Star => CheckDcdt::Star,
			CheckDcdtRaw::Equal(m) => CheckDcdt::Equal(
				m.into_iter()
					.map(|(k, v)| {
						(
							BytesKey::interpret_from(k, context),
							CheckValue::<BigUintValue>::interpret_from(v, context),
						)
					})
					.collect(),
			),
		}
	}
}

impl CheckDcdt {
	pub fn is_star(&self) -> bool {
		matches!(self, CheckDcdt::Star)
	}
}

#[derive(Debug)]
pub struct CheckAccount {
	pub comment: Option<String>,
	pub nonce: CheckValue<U64Value>,
	pub balance: CheckValue<BigUintValue>,
	pub dcdt: CheckDcdt,
	pub username: CheckValue<BytesValue>,
	pub storage: CheckStorage,
	pub code: CheckValue<BytesValue>,
	pub async_call_data: CheckValue<BytesValue>,
}

impl InterpretableFrom<CheckAccountRaw> for CheckAccount {
	fn interpret_from(from: CheckAccountRaw, context: &InterpreterContext) -> Self {
		CheckAccount {
			comment: from.comment,
			nonce: CheckValue::<U64Value>::interpret_from(from.nonce, context),
			balance: CheckValue::<BigUintValue>::interpret_from(from.balance, context),
			dcdt: CheckDcdt::interpret_from(from.dcdt, context),
			username: CheckValue::<BytesValue>::interpret_from(from.username, context),
			storage: CheckStorage::interpret_from(from.storage, context),
			code: CheckValue::<BytesValue>::interpret_from(from.code, context),
			async_call_data: CheckValue::<BytesValue>::interpret_from(
				from.async_call_data,
				context,
			),
		}
	}
}

#[derive(Debug)]
pub struct CheckAccounts {
	pub other_accounts_allowed: bool,
	pub accounts: BTreeMap<AddressKey, CheckAccount>,
}

impl InterpretableFrom<CheckAccountsRaw> for CheckAccounts {
	fn interpret_from(from: CheckAccountsRaw, context: &InterpreterContext) -> Self {
		CheckAccounts {
			other_accounts_allowed: from.other_accounts_allowed,
			accounts: from
				.accounts
				.into_iter()
				.map(|(k, v)| {
					(
						AddressKey::interpret_from(k, context),
						CheckAccount::interpret_from(v, context),
					)
				})
				.collect(),
		}
	}
}
