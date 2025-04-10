#![allow(deprecated)] // TODO: move prepare_async calls to a test for backwards compatibility and delete from here

mod system_sc_interact_cli;
mod system_sc_interact_config;
mod system_sc_interact_state;

use clap::Parser;
use system_sc_interact_cli::NftDummyAttributes;
use system_sc_interact_config::Config;
use system_sc_interact_state::State;

use dharitri_sc_snippets::imports::*;

#[tokio::main]
async fn main() {
    env_logger::init();

    let mut basic_interact = SysFuncCallsInteract::init().await;

    let cli = system_sc_interact_cli::InteractCli::parse();
    match &cli.command {
        Some(system_sc_interact_cli::InteractCliCommand::IssueToken(args)) => {
            basic_interact
                .issue_token(
                    args.cost.clone(),
                    args.display_name.as_bytes(),
                    args.ticker.as_bytes(),
                    args.num_decimals,
                    args.token_type.into(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::Mint(args)) => {
            basic_interact
                .mint_token(
                    args.token_id.clone().as_bytes(),
                    args.nonce,
                    args.amount.clone(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::SetRoles(args)) => {
            basic_interact
                .set_roles(
                    args.token_id.as_bytes(),
                    args.roles
                        .clone()
                        .into_iter()
                        .map(DcdtLocalRole::from)
                        .collect(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::Burn(args)) => {
            basic_interact
                .burn_token(args.token_id.as_bytes(), args.nonce, args.amount.clone())
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::PauseToken(args)) => {
            basic_interact.pause_token(args.token_id.as_bytes()).await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::UnpauseToken(args)) => {
            basic_interact.unpause_token(args.token_id.as_bytes()).await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::FreezeToken(args)) => {
            basic_interact
                .freeze_token(
                    args.token_id.as_bytes(),
                    &Bech32Address::from_bech32_string(args.address.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::UnfreezeToken(args)) => {
            basic_interact
                .unfreeze_token(
                    args.token_id.as_bytes(),
                    &Bech32Address::from_bech32_string(args.address.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::FreezeNFT(args)) => {
            basic_interact
                .freeze_nft(
                    args.token_id.as_bytes(),
                    args.nft_nonce,
                    &Bech32Address::from_bech32_string(args.address.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::UnfreezeNFT(args)) => {
            basic_interact
                .unfreeze_nft(
                    args.token_id.as_bytes(),
                    args.nft_nonce,
                    &Bech32Address::from_bech32_string(args.address.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::WipeToken(args)) => {
            basic_interact
                .wipe_token(
                    args.token_id.as_bytes(),
                    &Bech32Address::from_bech32_string(args.address.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::WipeNFT(args)) => {
            basic_interact
                .wipe_nft(
                    args.token_id.as_bytes(),
                    args.nft_nonce,
                    &Bech32Address::from_bech32_string(args.address.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::IssueNFTCollection(args)) => {
            basic_interact
                .issue_non_fungible_collection(
                    args.cost.clone(),
                    args.display_name.as_bytes(),
                    args.ticker.as_bytes(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::CreateNFT(args)) => {
            basic_interact
                .mint_nft(
                    args.token_id.as_bytes(),
                    args.amount.clone(),
                    args.name.as_bytes(),
                    args.royalties,
                    args.hash.as_bytes(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::IssueFungible(args)) => {
            basic_interact
                .issue_fungible_token(
                    args.cost.clone(),
                    args.display_name.as_bytes(),
                    args.ticker.as_bytes(),
                    args.supply.clone(),
                    args.num_decimals,
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::IssueSftCollection(args)) => {
            basic_interact
                .issue_semi_fungible_collection(
                    args.cost.clone(),
                    args.display_name.as_bytes(),
                    args.ticker.as_bytes(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::MintSft(args)) => {
            basic_interact
                .mint_sft(
                    args.token_id.as_bytes(),
                    args.amount.clone(),
                    args.name.as_bytes(),
                    args.royalties,
                    args.hash.as_bytes(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::RegisterMetaDcdt(args)) => {
            basic_interact
                .register_meta_dcdt(
                    args.cost.clone(),
                    args.display_name.as_bytes(),
                    args.ticker.as_bytes(),
                    args.num_decimals,
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::ChangeSftMetaDcdt(args)) => {
            basic_interact
                .change_sft_meta_dcdt(args.token_id.as_bytes(), args.num_decimals)
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::UnsetRoles(args)) => {
            basic_interact
                .unset_roles(
                    &Bech32Address::from_bech32_string(args.address.clone()),
                    args.token_id.as_bytes(),
                    args.roles
                        .clone()
                        .into_iter()
                        .map(DcdtLocalRole::from)
                        .collect(),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::TransferOwnership(args)) => {
            basic_interact
                .transfer_ownership(
                    args.token_id.as_bytes(),
                    &Bech32Address::from_bech32_string(args.new_owner.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::TransferNftCreateRole(args)) => {
            basic_interact
                .transfer_nft_create_role(
                    args.token_id.as_bytes(),
                    &Bech32Address::from_bech32_string(args.old_owner.clone()),
                    &Bech32Address::from_bech32_string(args.new_owner.clone()),
                )
                .await;
        },
        Some(system_sc_interact_cli::InteractCliCommand::ControlChanges(args)) => {
            basic_interact
                .control_changes(args.token_id.as_bytes())
                .await;
        },

        None => {},
    }
}

#[allow(unused)]
struct SysFuncCallsInteract {
    interactor: Interactor,
    wallet_address: Bech32Address,
    state: State,
}

impl SysFuncCallsInteract {
    async fn init() -> Self {
        let config = Config::load_config();
        let mut interactor =
            Interactor::new(config.gateway_uri(), config.use_chain_simulator()).await;

        interactor.set_current_dir_from_workspace("tools/interactor-system-func-calls");
        let wallet_address = interactor.register_wallet(test_wallets::alice()).await;

        // generate blocks until DCDTSystemSCAddress is enabled
        interactor.generate_blocks_until_epoch(1).await.unwrap();

        Self {
            interactor,
            wallet_address: wallet_address.into(),
            state: State::load_state(),
        }
    }

    async fn issue_fungible_token(
        &mut self,
        issue_cost: RustBigUint,
        token_display_name: &[u8],
        token_ticker: &[u8],
        initial_supply: RustBigUint,
        num_decimals: usize,
    ) {
        println!("Issuing fungible token...");

        let res = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .issue_fungible(
                issue_cost.into(),
                token_display_name,
                token_ticker,
                initial_supply,
                FungibleTokenProperties {
                    num_decimals,
                    can_freeze: true,
                    can_wipe: true,
                    can_pause: true,
                    can_mint: true,
                    can_burn: true,
                    can_change_owner: true,
                    can_upgrade: true,
                    can_add_special_roles: true,
                },
            )
            .returns(ReturnsNewTokenIdentifier)
            .prepare_async()
            .run()
            .await;

        println!("TOKEN ID: {:?}", res);
    }

    async fn issue_non_fungible_collection(
        &mut self,
        issue_cost: RustBigUint,
        token_display_name: &[u8],
        token_ticker: &[u8],
    ) {
        println!("Issuing NFT Collection...");

        let nft_collection_id = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .issue_non_fungible(
                issue_cost.into(),
                token_display_name,
                token_ticker,
                NonFungibleTokenProperties {
                    can_freeze: true,
                    can_wipe: true,
                    can_pause: true,
                    can_transfer_create_role: true,
                    can_change_owner: true,
                    can_upgrade: true,
                    can_add_special_roles: true,
                },
            )
            .returns(ReturnsNewTokenIdentifier)
            .prepare_async()
            .run()
            .await;

        println!("NFT Collection ID: {:?}", nft_collection_id);
    }

    async fn issue_semi_fungible_collection(
        &mut self,
        issue_cost: RustBigUint,
        token_display_name: &[u8],
        token_ticker: &[u8],
    ) {
        println!("Issuing SFT Collection...");

        let sft_collection_id = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .issue_semi_fungible(
                issue_cost.into(),
                token_display_name,
                token_ticker,
                SemiFungibleTokenProperties {
                    can_freeze: true,
                    can_wipe: true,
                    can_pause: true,
                    can_transfer_create_role: true,
                    can_change_owner: true,
                    can_upgrade: true,
                    can_add_special_roles: true,
                },
            )
            .returns(ReturnsNewTokenIdentifier)
            .prepare_async()
            .run()
            .await;

        println!("SFT Collection ID: {:?}", sft_collection_id);
    }

    async fn issue_token(
        &mut self,
        issue_cost: RustBigUint,
        token_display_name: &[u8],
        token_ticker: &[u8],
        num_decimals: usize,
        token_type: DcdtTokenType,
    ) {
        println!("Registering token...");

        let token_id = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .issue_and_set_all_roles(
                issue_cost.into(),
                token_display_name,
                token_ticker,
                token_type,
                num_decimals,
            )
            .returns(ReturnsNewTokenIdentifier)
            .prepare_async()
            .run()
            .await;

        println!("TOKEN ID: {:?}", token_id);
    }

    async fn set_roles(&mut self, token_id: &[u8], roles: Vec<DcdtLocalRole>) {
        let wallet_address = &self.wallet_address.clone().into_address();
        println!("Setting the following roles: {:?}", roles);

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .set_special_roles(
                ManagedAddress::from_address(wallet_address),
                TokenIdentifier::from(token_id),
                roles.into_iter(),
            )
            .prepare_async()
            .run()
            .await;
    }

    async fn mint_sft(
        &mut self,
        token_id: &[u8],
        amount: RustBigUint,
        name: &[u8],
        royalties: u64,
        hash: &[u8],
    ) {
        println!("Minting SFT...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(UserBuiltinProxy)
            .dcdt_nft_create(
                token_id,
                amount,
                name,
                royalties,
                hash,
                &NftDummyAttributes {
                    creation_epoch: 2104,
                    cool_factor: 5,
                },
                &ManagedVec::new(),
            )
            .prepare_async()
            .run()
            .await;
    }

    async fn register_meta_dcdt(
        &mut self,
        issue_cost: RustBigUint,
        token_display_name: &[u8],
        token_ticker: &[u8],
        num_decimals: usize,
    ) {
        println!("Registering meta DCDT...");

        let meta_dcdt = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .register_meta_dcdt(
                issue_cost.into(),
                token_display_name,
                token_ticker,
                MetaTokenProperties {
                    num_decimals,
                    can_freeze: true,
                    can_wipe: true,
                    can_transfer_create_role: true,
                    can_change_owner: true,
                    can_upgrade: true,
                    can_pause: true,
                    can_add_special_roles: true,
                },
            )
            .returns(ReturnsNewTokenIdentifier)
            .prepare_async()
            .run()
            .await;

        println!("Meta-DCDT ID: {:?}", meta_dcdt);
    }

    async fn change_sft_meta_dcdt(&mut self, token_id: &[u8], num_decimals: usize) {
        println!("Changing SFT to Meta-DCDT...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .change_sft_to_meta_dcdt(token_id, num_decimals)
            .prepare_async()
            .run()
            .await;
    }

    async fn mint_token(&mut self, token_id: &[u8], nonce: u64, amount: RustBigUint) {
        println!("Minting tokens...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(UserBuiltinProxy)
            .dcdt_local_mint(token_id, nonce, amount)
            .prepare_async()
            .run()
            .await;
    }

    async fn burn_token(&mut self, token_id: &[u8], nonce: u64, amount: RustBigUint) {
        println!("Burning tokens...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(UserBuiltinProxy)
            .dcdt_local_burn(token_id, nonce, amount)
            .prepare_async()
            .run()
            .await;
    }

    async fn pause_token(&mut self, token_id: &[u8]) {
        println!("Pausing token...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .pause(token_id)
            .prepare_async()
            .run()
            .await;
    }

    async fn unpause_token(&mut self, token_id: &[u8]) {
        println!("Unpausing token...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .unpause(token_id)
            .prepare_async()
            .run()
            .await;
    }

    async fn freeze_token(&mut self, token_id: &[u8], address: &Bech32Address) {
        println!("Freezing token...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .freeze(token_id, address)
            .prepare_async()
            .run()
            .await;
    }

    async fn unfreeze_token(&mut self, token_id: &[u8], address: &Bech32Address) {
        println!("Unfreezing token...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .unfreeze(token_id, address)
            .prepare_async()
            .run()
            .await;
    }

    async fn freeze_nft(&mut self, token_id: &[u8], nonce: u64, address: &Bech32Address) {
        println!("Freezing NFT/SFT/Meta-DCDT...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .freeze_nft(token_id, nonce, address)
            .prepare_async()
            .run()
            .await;
    }

    async fn unfreeze_nft(&mut self, token_id: &[u8], nonce: u64, address: &Bech32Address) {
        println!("Unfreezing NFT/SFT/Meta-DCDT...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .unfreeze_nft(token_id, nonce, address)
            .prepare_async()
            .run()
            .await;
    }

    async fn wipe_token(&mut self, token_id: &[u8], address: &Bech32Address) {
        println!("Wiping token...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .wipe(token_id, address)
            .prepare_async()
            .run()
            .await;
    }

    async fn wipe_nft(&mut self, token_id: &[u8], nonce: u64, address: &Bech32Address) {
        println!("Wiping NFT/SFT/Meta-DCDT...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .wipe_nft(token_id, nonce, address)
            .prepare_async()
            .run()
            .await;
    }

    async fn mint_nft(
        &mut self,
        token_id: &[u8],
        amount: RustBigUint,
        name: &[u8],
        royalties: u64,
        hash: &[u8],
    ) {
        println!("Minting NFT...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(&self.wallet_address)
            .gas(100_000_000u64)
            .typed(UserBuiltinProxy)
            .dcdt_nft_create(
                token_id,
                amount,
                name,
                royalties,
                hash,
                &NftDummyAttributes {
                    creation_epoch: 2104,
                    cool_factor: 5,
                },
                &ManagedVec::new(),
            )
            .prepare_async()
            .run()
            .await;
    }

    async fn unset_roles(
        &mut self,
        address: &Bech32Address,
        token_id: &[u8],
        roles: Vec<DcdtLocalRole>,
    ) {
        println!("Unsetting the following roles: {:?}", roles);

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .unset_special_roles(address, token_id, roles.into_iter())
            .prepare_async()
            .run()
            .await;
    }

    async fn transfer_ownership(&mut self, token_id: &[u8], new_owner: &Bech32Address) {
        println!("Transferring token ownership...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .transfer_ownership(token_id, new_owner)
            .prepare_async()
            .run()
            .await;
    }

    async fn transfer_nft_create_role(
        &mut self,
        token_id: &[u8],
        old_owner: &Bech32Address,
        new_owner: &Bech32Address,
    ) {
        println!("Transferring NFT create role...");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .transfer_nft_create_role(token_id, old_owner, new_owner)
            .prepare_async()
            .run()
            .await;
    }

    async fn control_changes(&mut self, token_id: &[u8]) {
        println!("Control changes");

        self.interactor
            .tx()
            .from(&self.wallet_address)
            .to(DCDTSystemSCAddress)
            .gas(100_000_000u64)
            .typed(DCDTSystemSCProxy)
            .control_changes(
                token_id,
                &TokenPropertyArguments {
                    can_freeze: Some(true),
                    can_wipe: Some(true),
                    can_pause: Some(true),
                    can_transfer_create_role: Some(true),
                    can_mint: Some(true),
                    can_burn: Some(true),
                    can_change_owner: Some(true),
                    can_upgrade: Some(true),
                    can_add_special_roles: Some(true),
                },
            )
            .prepare_async()
            .run()
            .await;
    }
}
