use std::{fs::File, io::Write};

use dharitri_sc::abi::ContractAbi;

use super::snippet_gen_common::write_newline;

pub(crate) fn write_snippet_imports(file: &mut File, contract_crate_name: &str) {
    writeln!(
        file,
        "#[allow(non_snake_case)]

use {contract_crate_name}::ProxyTrait as _;
use dharitri_sc_snippets::{{
    dharitri_sc::{{
        codec::multi_types::*,
        types::{{Address, CodeMetadata}},
    }},
    dharitri_chain_vm::{{
        bech32, scenario_format::interpret_trait::InterpreterContext, scenario_model::*, ContractInfo,
        DebugApi,
    }},
    env_logger,
    drtrs::wallet::Wallet,
    tokio, Interactor,
}};
use std::{{
    env::Args,
    io::{{Read, Write}},
}};"
    )
    .unwrap();

    write_newline(file);
}

pub(crate) fn write_snippet_constants(file: &mut File) {
    writeln!(file, "const GATEWAY: &str = dharitri_sc_snippets::drtrs::blockchain::rpc::DEVNET_GATEWAY;
const PEM: &str = \"alice.pem\";
const SC_ADDRESS: &str = \"\";

const SYSTEM_SC_BECH32: &str = \"drt1yvesqqqqqqqqqqqqqqqqqqqqqqqqyvesqqqqqqqqqqqqqqqzlllsd5j0s2\";
const DEFAULT_ADDRESS_EXPR: &str = \"0x0000000000000000000000000000000000000000000000000000000000000000\";
const DEFAULT_GAS_LIMIT: u64 = 100_000_000;
const TOKEN_ISSUE_COST: u64 = 50_000_000_000_000_000;").unwrap();

    write_newline(file);
}

pub(crate) fn write_contract_type_alias(file: &mut File, contract_crate_name: &str) {
    writeln!(
        file,
        "type ContractType = ContractInfo<{contract_crate_name}::Proxy<DebugApi>>;"
    )
    .unwrap();

    write_newline(file);
}

pub(crate) fn write_snippet_main_function(file: &mut File, abi: &ContractAbi) {
    writeln!(
        file,
        "#[tokio::main]
async fn main() {{
    env_logger::init();
    let _ = DebugApi::dummy();

    let mut args = std::env::args();
    let _ = args.next();
    let cmd = args.next().expect(\"at least one argument required\");
    let mut state = State::new().await;
    match cmd.as_str() {{"
    )
    .unwrap();

    // all contracts have a deploy snippet
    writeln!(file, r#"        "deploy" => state.deploy().await,"#).unwrap();

    for endpoint in &abi.endpoints {
        writeln!(
            file,
            r#"        "{}" => state.{}().await,"#,
            endpoint.name, endpoint.rust_method_name
        )
        .unwrap();
    }

    // general case of "command not found" + close curly brackets
    writeln!(
        file,
        "        _ => panic!(\"unknown command: {{}}\", &cmd),
    }}
}}"
    )
    .unwrap();

    write_newline(file);
}

pub(crate) fn write_state_struct_declaration(file: &mut File) {
    writeln!(
        file,
        "struct State {{
    interactor: Interactor,
    wallet_address: Address,
    contract: ContractType,
}}"
    )
    .unwrap();

    write_newline(file);
}
