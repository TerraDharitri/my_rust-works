use super::scenario_cli::AccountArgs;
use dharitri_chain_scenario_format::serde_raw::{
    AccountRaw, DcdtFullRaw, DcdtInstanceRaw, DcdtRaw, ScenarioRaw, StepRaw, ValueSubTree,
};
use dharitri_sdk::{
    blockchain::CommunicationProxy,
    data::{address::Address, dcdt::DcdtBalance},
};
use std::collections::{BTreeMap, HashMap};

pub async fn print_account_as_scenario_set_state(api: String, args: &AccountArgs) {
    let scenario_raw =
        retrieve_account_as_scenario_set_state(api, args.address.clone(), false).await;
    println!("{}", scenario_raw.to_json_string());
}

pub async fn retrieve_account_as_scenario_set_state(
    api: String,
    addr: String,
    hex_encoded: bool,
) -> ScenarioRaw {
    let address = Address::from_bech32_string(&addr).unwrap();
    let blockchain = CommunicationProxy::new(api);
    let account = blockchain.get_account(&address).await.unwrap();

    let account_dcdt = blockchain
        .get_account_dcdt_tokens(&address)
        .await
        .unwrap_or_else(|err| panic!("failed to retrieve DCDT tokens for address {addr}: {err}"));
    let account_dcdt_roles = blockchain
        .get_account_dcdt_roles(&address)
        .await
        .unwrap_or_else(|err| panic!("failed to retrieve DCDT roles for address {addr}: {err}"));
    let account_storage = blockchain
        .get_account_storage_keys(&address)
        .await
        .unwrap_or_else(|err| panic!("failed to retrieve storage for address {addr}: {err}"));

    let addr_pretty = if !hex_encoded {
        if account.code.is_empty() {
            format!("address:{addr}")
        } else {
            format!("sc:{addr}")
        }
    } else {
        format!("0x{}", hex::encode(address.to_bytes()))
    };

    let mut accounts = BTreeMap::new();
    accounts.insert(
        addr_pretty,
        AccountRaw {
            nonce: Some(ValueSubTree::Str(account.nonce.to_string())),
            balance: Some(ValueSubTree::Str(account.balance.to_string())),
            dcdt: convert_dcdt(account_dcdt, account_dcdt_roles),
            username: Some(ValueSubTree::Str(account.username.to_string())),
            storage: convert_storage(account_storage),
            comment: None,
            code: retrieve_code(account.code),
            code_metadata: None, // TODO: retrieve code metadata
            owner: None,
            developer_rewards: None,
        },
    );

    ScenarioRaw {
        check_gas: None,
        comment: None,
        gas_schedule: None,
        name: None,
        steps: vec![StepRaw::SetState {
            accounts,
            block_hashes: Vec::new(),
            new_addresses: Vec::new(),
            new_token_identifiers: Vec::new(),
            comment: None,
            current_block_info: None,
            previous_block_info: None,
        }],
    }
}

fn retrieve_code(code: String) -> Option<ValueSubTree> {
    if code.is_empty() {
        None
    } else {
        Some(ValueSubTree::Str(format!("0x{code}")))
    }
}

fn convert_storage(account_storage: HashMap<String, String>) -> BTreeMap<String, ValueSubTree> {
    account_storage
        .into_iter()
        .filter(|(k, _)| !k.starts_with("4e554d424154"))
        .map(|(k, v)| (format!("0x{k}"), ValueSubTree::Str(format!("0x{v}"))))
        .collect()
}

fn convert_dcdt(
    sdk_dcdt: HashMap<String, DcdtBalance>,
    sdk_dcdt_roles: HashMap<String, Vec<String>>,
) -> BTreeMap<String, DcdtRaw> {
    let mut result = BTreeMap::new();
    for (key, value) in sdk_dcdt.into_iter() {
        let (token_identifier, nonce) = split_token_identifer_nonce(key);
        let dcdt_raw = result
            .entry(format!("str:{}", token_identifier.clone()))
            .or_insert(DcdtRaw::Full(DcdtFullRaw::default()));
        if let DcdtRaw::Full(dcdt_full_raw) = dcdt_raw {
            dcdt_full_raw.instances.push(DcdtInstanceRaw {
                nonce: Some(ValueSubTree::Str(nonce.to_string())),
                balance: Some(ValueSubTree::Str(value.balance)),
                // TODO: add creator, royalties, etc ...
                ..Default::default()
            });
        }
    }

    for (key, roles) in sdk_dcdt_roles.into_iter() {
        let (token_identifier, _) = split_token_identifer_nonce(key);
        let dcdt_raw = result
            .entry(format!("str:{}", token_identifier.clone()))
            .or_insert(DcdtRaw::Full(DcdtFullRaw::default()));
        if let DcdtRaw::Full(dcdt_full_raw) = dcdt_raw {
            dcdt_full_raw.roles = roles;
        }
    }

    result
}

fn split_token_identifer_nonce(full_identifier: String) -> (String, u64) {
    let tokens = full_identifier.split('-').collect::<Vec<_>>();
    match tokens.len() {
        2 => (full_identifier, 0),
        3 => (
            format!("{}-{}", tokens[0], tokens[1]),
            u64::from_str_radix(tokens[2], 16).unwrap(),
        ),
        _ => panic!("could not process token identifier: {full_identifier}"),
    }
}
