#![allow(unused_variables)] // for now

use super::*;
use numbat_wasm::*;
use denali::*;
use num_bigint::BigUint;
use std::path::Path;

const DCDT_TRANSFER_STRING: &[u8] = b"DCDTTransfer";

pub fn parse_execute_denali<P: AsRef<Path>>(path: P, contract_map: &ContractMap<TxContext>) {
	let mut state = BlockchainMock::new();
	parse_execute_denali_steps(path.as_ref(), &mut state, contract_map);
}

fn parse_execute_denali_steps(
	steps_path: &Path,
	state: &mut BlockchainMock,
	contract_map: &ContractMap<TxContext>,
) {
	let scenario = denali::parse_scenario(steps_path);

	for step in scenario.steps.iter() {
		match step {
			Step::ExternalSteps { path } => {
				let parent_path = steps_path.parent().unwrap();
				let new_path = parent_path.join(path);
				parse_execute_denali_steps(&new_path.as_path(), state, contract_map);
			},
			Step::SetState {
				comment,
				accounts,
				new_addresses,
				block_hashes,
				previous_block_info,
				current_block_info,
			} => {
				for (address, account) in accounts.iter() {
					state.add_account(AccountData {
						address: address.value.into(),
						nonce: account.nonce.value,
						balance: account.balance.value.clone(),
						storage: account
							.storage
							.iter()
							.map(|(k, v)| (k.value.clone(), v.value.clone()))
							.collect(),
						dcdt: account.dcdt.as_ref().map(|tree| {
							tree.iter()
								.map(|(k, v)| (k.value.clone(), v.value.clone()))
								.collect()
						}),
						contract_path: account
							.code
							.as_ref()
							.map(|bytes_value| bytes_value.value.clone()),
						contract_owner: None, // TODO: add contract owner in denali
					});
				}
				for new_address in new_addresses.iter() {
					state.put_new_address(
						new_address.creator_address.value.into(),
						new_address.creator_nonce.value,
						new_address.new_address.value.into(),
					)
				}
				if let Some(block_info_obj) = &**previous_block_info {
					if let Some(u64_value) = &block_info_obj.block_timestamp {
						state.previous_block_info.block_timestamp = u64_value.value;
					}
					if let Some(u64_value) = &block_info_obj.block_nonce {
						state.previous_block_info.block_nonce = u64_value.value;
					}
					if let Some(u64_value) = &block_info_obj.block_epoch {
						state.previous_block_info.block_epoch = u64_value.value;
					}
					if let Some(u64_value) = &block_info_obj.block_round {
						state.previous_block_info.block_round = u64_value.value;
					}
					if let Some(bytes_value) = &block_info_obj.block_random_seed {
						const SEED_LEN: usize = 48;
						let val = &bytes_value.value;

						assert!(
							val.len() <= SEED_LEN,
							"block random seed input value too long!"
						);

						let mut seed = [0u8; SEED_LEN];
						&seed[SEED_LEN - val.len()..].copy_from_slice(val.as_slice());
						state.previous_block_info.block_random_seed = Box::from(seed);
					}
				}
				if let Some(block_info_obj) = &**current_block_info {
					if let Some(u64_value) = &block_info_obj.block_timestamp {
						state.current_block_info.block_timestamp = u64_value.value;
					}
					if let Some(u64_value) = &block_info_obj.block_nonce {
						state.current_block_info.block_nonce = u64_value.value;
					}
					if let Some(u64_value) = &block_info_obj.block_epoch {
						state.current_block_info.block_epoch = u64_value.value;
					}
					if let Some(u64_value) = &block_info_obj.block_round {
						state.current_block_info.block_round = u64_value.value;
					}
					if let Some(bytes_value) = &block_info_obj.block_random_seed {
						const SEED_LEN: usize = 48;
						let val = &bytes_value.value;

						assert!(
							val.len() <= SEED_LEN,
							"block random seed input value too long!"
						);

						let mut seed = [0u8; SEED_LEN];
						&seed[SEED_LEN - val.len()..].copy_from_slice(val.as_slice());
						state.current_block_info.block_random_seed = Box::from(seed);
					}
				}
			},
			Step::ScCall {
				tx_id,
				comment,
				tx,
				expect,
			} => {
				let tx_input = TxInput {
					from: tx.from.value.into(),
					to: tx.to.value.into(),
					call_value: tx.call_value.value.clone(),
					dcdt_value: tx.dcdt_value.value.clone(),
					dcdt_token_name: tx.dcdt_token_name.value.clone(),
					func_name: tx.function.as_bytes().to_vec(),
					args: tx
						.arguments
						.iter()
						.map(|scen_arg| scen_arg.value.clone())
						.collect(),
					gas_limit: tx.gas_limit.value,
					gas_price: tx.gas_price.value,
					tx_hash: generate_tx_hash_dummy(tx_id.as_str()),
				};
				state.increase_nonce(&tx_input.from);
				let (mut tx_result, opt_async_data) =
					execute_sc_call(tx_input, state, contract_map);
				if tx_result.result_status == 0 {
					if let Some(async_data) = opt_async_data {
						let contract_address = tx.to.value.into();
						if state.accounts.contains_key(&async_data.to) {
							let async_input = async_call_tx_input(&async_data, &contract_address);

							if async_input.func_name == DCDT_TRANSFER_STRING {
								execute_dcdt_async_call(async_input, state);
								return;
							}

							let (async_result, opt_more_async) =
								execute_sc_call(async_input, state, contract_map);
							assert!(
								opt_more_async.is_none(),
								"nested asyncs currently not supported"
							);
							tx_result = merge_results(tx_result, async_result.clone());

							let callback_input = async_callback_tx_input(
								&async_data,
								&contract_address,
								&async_result,
							);
							let (callback_result, opt_more_async) =
								execute_sc_call(callback_input, state, contract_map);
							assert!(
								opt_more_async.is_none(),
								"successive asyncs currently not supported"
							);
							tx_result = merge_results(tx_result, callback_result);
						} else {
							state.subtract_tx_payment(&contract_address, &async_data.call_value);
							state.add_account(AccountData {
								address: async_data.to.clone(),
								nonce: 0,
								balance: async_data.call_value.clone(),
								storage: HashMap::new(),
								dcdt: None,
								contract_path: None,
								contract_owner: None,
							});
							state.print_accounts();
						}
					}
				}
				if let Some(tx_expect) = expect {
					check_tx_output(tx_id.as_str(), &tx_expect, &tx_result);
				}
			},
			Step::ScDeploy {
				tx_id,
				comment,
				tx,
				expect,
			} => {
				let tx_input = TxInput {
					from: tx.from.value.into(),
					to: Address::zero(),
					call_value: tx.call_value.value.clone(),
					dcdt_value: tx.dcdt_value.value.clone(),
					dcdt_token_name: tx.dcdt_token_name.value.clone(),
					func_name: b"init".to_vec(),
					args: tx
						.arguments
						.iter()
						.map(|scen_arg| scen_arg.value.clone())
						.collect(),
					gas_limit: tx.gas_limit.value,
					gas_price: tx.gas_price.value,
					tx_hash: generate_tx_hash_dummy(tx_id.as_str()),
				};
				state.increase_nonce(&tx_input.from);
				let (tx_result, _) =
					execute_sc_create(tx_input, &tx.contract_code.value, state, contract_map);
				if let Some(tx_expect) = expect {
					check_tx_output(tx_id.as_str(), &tx_expect, &tx_result);
				}
			},
			Step::Transfer { tx_id, comment, tx } => {
				let sender_address = &tx.from.value.into();
				state.increase_nonce(sender_address);
				state.subtract_tx_payment(sender_address, &tx.value.value);
				let recipient_address = &tx.to.value.into();
				state.increase_balance(recipient_address, &tx.value.value);
				let dcdt_token_name = tx.dcdt_token_name.value.clone();
				let dcdt_value = tx.dcdt_value.value.clone();

				if !dcdt_token_name.is_empty() && dcdt_value > 0u32.into() {
					state.substract_dcdt_balance(sender_address, &dcdt_token_name[..], &dcdt_value);
					state.increase_dcdt_balance(
						recipient_address,
						&dcdt_token_name[..],
						&dcdt_value,
					);
				}
			},
			Step::ValidatorReward { tx_id, comment, tx } => {
				state.increase_validator_reward(&tx.to.value.into(), &tx.value.value);
			},
			Step::CheckState { comment, accounts } => {
				check_state(accounts, state);
			},
			Step::DumpState { .. } => {
				state.print_accounts();
			},
		}
	}
}

fn execute_dcdt_async_call(tx_input: TxInput, state: &mut BlockchainMock) {
	let from = tx_input.from.clone();
	let to = tx_input.to.clone();
	let dcdt_token_name = tx_input.dcdt_token_name.clone();
	let dcdt_value = tx_input.dcdt_value;

	state.substract_dcdt_balance(&from, &dcdt_token_name, &dcdt_value);
	state.increase_dcdt_balance(&to, &dcdt_token_name, &dcdt_value);
}

fn execute_sc_call(
	tx_input: TxInput,
	state: &mut BlockchainMock,
	contract_map: &ContractMap<TxContext>,
) -> (TxResult, Option<AsyncCallTxData>) {
	let from = tx_input.from.clone();
	let to = tx_input.to.clone();
	let call_value = tx_input.call_value.clone();
	let blockchain_info = state.create_tx_info(&to);

	state.subtract_tx_payment(&from, &call_value);
	state.subtract_tx_gas(&from, tx_input.gas_limit, tx_input.gas_price);

	let dcdt_token_name = tx_input.dcdt_token_name.clone();
	let dcdt_value = tx_input.dcdt_value.clone();
	let dcdt_used = !dcdt_token_name.is_empty() && dcdt_value > 0u32.into();

	if dcdt_used {
		state.substract_dcdt_balance(&from, &dcdt_token_name, &dcdt_value)
	}

	let contract_account = state
		.accounts
		.get_mut(&to)
		.unwrap_or_else(|| panic!("Recipient account not found: {}", address_hex(&to)));

	let contract_path = &contract_account
		.contract_path
		.clone()
		.unwrap_or_else(|| panic!("Recipient account is not a smart contract"));

	let tx_context = TxContext::new(
		blockchain_info,
		tx_input,
		TxOutput {
			contract_storage: contract_account.storage.clone(),
			result: TxResult::empty(),
			send_balance_list: Vec::new(),
			async_call: None,
		},
	);

	let tx_output = execute_tx(tx_context, contract_path, contract_map);
	let tx_result = tx_output.result;

	if tx_result.result_status == 0 {
		// replace storage with new one
		let _ = std::mem::replace(&mut contract_account.storage, tx_output.contract_storage);

		state.increase_balance(&to, &call_value);
		state.send_balance(&to, tx_output.send_balance_list.as_slice());

		if dcdt_used {
			state.increase_dcdt_balance(&to, &dcdt_token_name, &dcdt_value);
		}
	} else {
		state.increase_balance(&from, &call_value);

		if dcdt_used {
			state.increase_dcdt_balance(&from, &dcdt_token_name, &dcdt_value);
		}
	}

	(tx_result, tx_output.async_call)
}

fn execute_sc_create(
	tx_input: TxInput,
	contract_path: &Vec<u8>,
	state: &mut BlockchainMock,
	contract_map: &ContractMap<TxContext>,
) -> (TxResult, Option<AsyncCallTxData>) {
	let from = tx_input.from.clone();
	let to = tx_input.to.clone();
	let call_value = tx_input.call_value.clone();
	let blockchain_info = state.create_tx_info(&to);

	state.subtract_tx_payment(&from, &call_value);
	state.subtract_tx_gas(&from, tx_input.gas_limit, tx_input.gas_price);

	let dcdt_token_name = tx_input.dcdt_token_name.clone();
	let dcdt_value = tx_input.dcdt_value.clone();
	let dcdt_used = !dcdt_token_name.is_empty() && dcdt_value > 0u32.into();

	if dcdt_used {
		state.substract_dcdt_balance(&from, &dcdt_token_name, &dcdt_value)
	}

	let tx_context = TxContext::new(blockchain_info, tx_input.clone(), TxOutput::default());
	let tx_output = execute_tx(tx_context, contract_path, contract_map);

	if tx_output.result.result_status == 0 {
		let new_address = state.create_account_after_deploy(
			&tx_input,
			tx_output.contract_storage,
			contract_path.clone(),
		);
		state.send_balance(&new_address, tx_output.send_balance_list.as_slice());
	} else {
		state.increase_balance(&from, &call_value);

		if dcdt_used {
			state.increase_dcdt_balance(&from, &dcdt_token_name, &dcdt_value);
		}
	}

	(tx_output.result, tx_output.async_call)
}

fn check_tx_output(tx_id: &str, tx_expect: &TxExpect, tx_result: &TxResult) {
	assert_eq!(
		tx_expect.out.len(),
		tx_result.result_values.len(),
		"bad out value. Tx id: {}. Want: {:?}. Have: {:?}",
		tx_id,
		tx_expect.out,
		tx_result.result_values
	);
	for (i, expected_out) in tx_expect.out.iter().enumerate() {
		let actual_value = &tx_result.result_values[i];
		assert!(
			expected_out.check(actual_value.as_slice()),
			"bad out value. Tx id: {}. Want: {}. Have: {}",
			tx_id,
			expected_out,
			verbose_hex(actual_value.as_slice())
		);
	}

	if let Some(expected_message) = &tx_expect.message {
		let want_str = std::str::from_utf8(expected_message.value.as_slice()).unwrap();
		let have_str = std::str::from_utf8(tx_result.result_message.as_slice()).unwrap();
		assert_eq!(
			want_str, have_str,
			"bad error message. Tx id: {}. Want: \"{}\". Have: \"{}\"",
			tx_id, want_str, have_str
		);
	}

	assert!(
		tx_expect.status.check(tx_result.result_status),
		"bad tx status. Tx id: {}. Want: \"{}\". Have: \"{}\"",
		tx_id,
		tx_expect.status,
		tx_result.result_status
	);
}

fn check_state(accounts: &denali::CheckAccounts, state: &mut BlockchainMock) {
	for (expected_address, expected_account) in accounts.accounts.iter() {
		if let Some(account) = state.accounts.get(&expected_address.value.into()) {
			assert!(
				expected_account.nonce.check(account.nonce),
				"bad account nonce. Address: {}. Want: {}. Have: {}",
				expected_address,
				expected_account.nonce,
				account.nonce
			);

			assert!(
				expected_account.balance.check(&account.balance),
				"bad account balance. Address: {}. Want: {}. Have: {}",
				expected_address,
				expected_account.balance,
				account.balance
			);

			if let CheckStorage::Equal(eq) = &expected_account.storage {
				let default_value = &Vec::new();
				for (expected_key, expected_value) in eq.iter() {
					let actual_value = account
						.storage
						.get(&expected_key.value)
						.unwrap_or(default_value);
					assert!(
						expected_value.check(actual_value),
						"bad storage value. Address: {}. Key: {}. Want: {}. Have: {}",
						expected_address,
						expected_key,
						expected_value,
						verbose_hex(actual_value)
					);
				}

				let default_check_value = CheckValue::Equal(BytesValue::empty());
				for (actual_key, actual_value) in account.storage.iter() {
					let expected_value = eq
						.get(&actual_key.clone().into())
						.unwrap_or(&default_check_value);
					assert!(
						expected_value.check(actual_value),
						"bad storage value. Address: {}. Key: {}. Want: {}. Have: {}",
						expected_address,
						verbose_hex(actual_key),
						expected_value,
						verbose_hex(actual_value)
					);
				}
			}

			match &expected_account.dcdt {
				Some(CheckDcdt::Equal(eq)) => {
					let default_value = &BigUint::from(0u32);
					let default_hashmap = &HashMap::new();
					let actual_dcdt = account.dcdt.as_ref().unwrap_or(default_hashmap);
					for (expected_key, expected_value) in eq.iter() {
						let actual_value = actual_dcdt
							.get(&expected_key.value)
							.unwrap_or(default_value);
						assert!(
							expected_value.check(actual_value),
							"bad dcdt value. Address: {}. Token Name: {}. Want: {}. Have: {}",
							expected_address,
							expected_key,
							expected_value,
							actual_value
						);
					}

					let default_check_value = CheckValue::Equal(BigUintValue::default());

					for (actual_key, actual_value) in
						account.dcdt.as_ref().unwrap_or(default_hashmap).iter()
					{
						let expected_value = eq
							.get(&actual_key.clone().into())
							.unwrap_or(&default_check_value);
						assert!(
							expected_value.check(actual_value),
							"bad dcdt value. Address: {}. Token: {}. Want: {}. Have: {}",
							expected_address,
							verbose_hex(actual_key),
							expected_value,
							actual_value
						);
					}
				},

				Some(CheckDcdt::Star) => {
					// nothing to be done for *
				},

				// we still have to check that the actual storage is empty
				None => {
					let default_check_value = CheckValue::Equal(BigUintValue::default());
					let default_hashmap = &HashMap::new();

					for (actual_key, actual_value) in
						account.dcdt.as_ref().unwrap_or(default_hashmap).iter()
					{
						assert!(
							default_check_value.check(actual_value),
							"bad dcdt value. Address: {}. Token: {}. Want: {}. Have: {}",
							expected_address,
							verbose_hex(actual_key),
							default_check_value,
							actual_value
						);
					}
				},
			}

			if let Some(CheckDcdt::Equal(eq)) = &expected_account.dcdt {
				let default_value = &BigUint::from(0u32);
				let default_hashmap = &HashMap::new();
				let actual_dcdt = account.dcdt.as_ref().unwrap_or(default_hashmap);
				for (expected_key, expected_value) in eq.iter() {
					let actual_value = actual_dcdt
						.get(&expected_key.value)
						.unwrap_or(default_value);
					assert!(
						expected_value.check(actual_value),
						"bad dcdt value. Address: {}. Token Name: {}. Want: {}. Have: {}",
						expected_address,
						expected_key,
						expected_value,
						actual_value
					);
				}

				let default_check_value = CheckValue::Equal(BigUintValue::default());

				for (actual_key, actual_value) in
					account.dcdt.as_ref().unwrap_or(default_hashmap).iter()
				{
					let expected_value = eq
						.get(&actual_key.clone().into())
						.unwrap_or(&default_check_value);
					assert!(
						expected_value.check(actual_value),
						"bad dcdt value. Address: {}. Token: {}. Want: {}. Have: {}",
						expected_address,
						verbose_hex(actual_key),
						expected_value,
						actual_value
					);
				}
			}
		} else if !accounts.other_accounts_allowed {
			panic!("Expected account not found");
		}
	}
}

fn generate_tx_hash_dummy(tx_id: &str) -> H256 {
	let bytes = tx_id.as_bytes();
	let mut result = [b'.'; 32];
	if bytes.len() > 32 {
		result[..].copy_from_slice(&bytes[..32]);
	} else {
		result[..bytes.len()].copy_from_slice(bytes);
	}
	result.into()
}
