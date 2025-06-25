#![allow(non_snake_case)]

mod config;
mod proxy;

use config::Config;
use dharitri_sc_snippets::imports::*;
use serde::{Deserialize, Serialize};
use std::{
    io::{Read, Write},
    path::Path,
};

const STATE_FILE: &str = "state.toml";

pub async fn delegation_latest_cli() {
    env_logger::init();

    let mut args = std::env::args();
    let _ = args.next();
    let cmd = args.next().expect("at least one argument required");
    let mut interact = ContractInteract::new().await;
    match cmd.as_str() {
        "deploy" => interact.deploy().await,
        "upgrade" => interact.upgrade().await,
        "version" => interact.version().await,
        "getNumNodes" => interact.num_nodes().await,
        "getNodeId" => interact.get_node_id().await,
        "getNodeSignature" => interact.get_node_signature_endpoint().await,
        "getNodeState" => interact.get_node_state_endpoint().await,
        "getAllNodeStates" => interact.get_all_node_states().await,
        "getNodeBlockNonceOfUnstake" => interact.get_node_bl_nonce_of_unstake_endpoint().await,
        "addNodes" => interact.add_nodes().await,
        "removeNodes" => interact.remove_nodes().await,
        "getUserId" => interact.get_user_id().await,
        "getUserAddress" => interact.get_user_address().await,
        "getNumUsers" => interact.get_num_users().await,
        "updateUserAddress" => interact.update_user_address().await,
        "userIdsWithoutAddress" => interact.user_ids_without_address().await,
        "fundById" => interact.fund_by_id().await,
        "totalStake" => interact.get_total_stake().await,
        "getUserStake" => interact.get_user_total_stake_endpoint().await,
        "getUserWithdrawOnlyStake" => interact.get_user_withdraw_only_stake().await,
        "getUserWaitingStake" => interact.get_user_waiting_stake().await,
        "getUserActiveStake" => interact.get_user_active_stake().await,
        "getUserUnstakedStake" => interact.get_user_unstaked_stake().await,
        "getUserDeferredPaymentStake" => interact.get_user_deferred_payment_stake().await,
        "getTotalWithdrawOnlyStake" => interact.get_total_withdraw_only_stake().await,
        "getTotalWaitingStake" => interact.get_total_waiting_stake().await,
        "getTotalActiveStake" => interact.get_total_active_stake().await,
        "getTotalUnstakedStake" => interact.get_total_unstaked_stake().await,
        "getTotalDeferredPaymentStake" => interact.get_total_deferred_payment_stake().await,
        "getUserStakeByType" => interact.get_user_stake_by_type_endpoint().await,
        "getTotalStakeByType" => interact.get_total_stake_by_type_endpoint().await,
        "getAllUserStakeByType" => interact.get_all_user_stake_by_type().await,
        "getUserDeferredPaymentList" => interact.get_user_deferred_payment_list().await,
        "getFullWaitingList" => interact.get_full_waiting_list().await,
        "getFullActiveList" => interact.get_full_active_list().await,
        "stakeNodes" => interact.stake_nodes().await,
        "unStakeNodes" => interact.unstake_nodes_endpoint().await,
        "unStakeNodesAndTokens" => interact.unstake_nodes_and_tokens_endpoint().await,
        "forceNodeUnBondPeriod" => interact.force_node_unbond_period().await,
        "unBondNodes" => interact.unbond_specific_nodes_endpoint().await,
        "unBondAllPossibleNodes" => interact.unbond_all_possible_nodes().await,
        "claimUnusedFunds" => interact.claim_unused_funds().await,
        "unJailNodes" => interact.unjail_nodes().await,
        "unStakeTokens" => interact.unstake_tokens().await,
        "unBondTokens" => interact.unbond_tokens().await,
        "getAuctionContractAddress" => interact.get_auction_contract_address().await,
        "getServiceFee" => interact.get_service_fee().await,
        "getTotalDelegationCap" => interact.get_total_delegation_cap().await,
        "isBootstrapMode" => interact.is_bootstrap_mode().await,
        "getOwnerMinStakeShare" => interact.get_owner_min_stake_share().await,
        "getNumBlocksBeforeUnBond" => interact.get_n_blocks_before_unbond().await,
        "setNumBlocksBeforeUnBond" => interact.set_n_blocks_before_unbond_endpoint().await,
        "getMinimumStake" => interact.get_minimum_stake().await,
        "setMinimumStake" => interact.set_minimum_stake_endpoint().await,
        "getGlobalOperationCheckpoint" => interact.global_op_checkpoint().await,
        "isGlobalOperationInProgress" => interact.is_global_op_in_progress().await,
        "getTotalCumulatedRewards" => interact.get_total_cumulated_rewards().await,
        "getClaimableRewards" => interact.get_claimable_rewards().await,
        "getTotalUnclaimedRewards" => interact.get_total_unclaimed_rewards().await,
        "getTotalUnProtected" => interact.total_unprotected().await,
        "validateOwnerStakeShare" => interact.validate_owner_stake_share().await,
        "validateDelegationCapInvariant" => interact.validate_delegation_cap_invariant().await,
        "continueGlobalOperation" => interact.continue_global_operation_endpoint().await,
        "modifyTotalDelegationCap" => interact.modify_total_delegation_cap().await,
        "setServiceFee" => interact.set_service_fee_endpoint().await,
        "claimRewards" => interact.claim_rewards().await,
        "stake" => interact.stake_endpoint().await,
        "unStake" => interact.unstake_endpoint().await,
        "getUnStakeable" => interact.get_unstakeable().await,
        "unBond" => interact.unbond_user().await,
        "getUnBondable" => interact.get_unbondable().await,
        "dustCleanupCheckpoint" => interact.dust_cleanup_checkpoint().await,
        "countDustItemsWaitingList" => interact.count_dust_items_waiting_list().await,
        "countDustItemsActive" => interact.count_dust_items_active().await,
        "dustCleanupWaitingList" => interact.dust_cleanup_waiting_list().await,
        "dustCleanupActive" => interact.dust_cleanup_active().await,
        "dnsRegister" => interact.dns_register().await,
        "setFeatureFlag" => interact.set_feature_flag_endpoint().await,
        "pause" => interact.pause_endpoint().await,
        "unpause" => interact.unpause_endpoint().await,
        "isPaused" => interact.paused_status().await,
        _ => panic!("unknown command: {}", &cmd),
    }
}

#[derive(Debug, Default, Serialize, Deserialize)]
pub struct State {
    contract_address: Option<Bech32Address>
}

impl State {
        // Deserializes state from file
        pub fn load_state() -> Self {
            if Path::new(STATE_FILE).exists() {
                let mut file = std::fs::File::open(STATE_FILE).unwrap();
                let mut content = String::new();
                file.read_to_string(&mut content).unwrap();
                toml::from_str(&content).unwrap()
            } else {
                Self::default()
            }
        }
    
        /// Sets the contract address
        pub fn set_address(&mut self, address: Bech32Address) {
            self.contract_address = Some(address);
        }
    
        /// Returns the contract address
        pub fn current_address(&self) -> &Bech32Address {
            self.contract_address
                .as_ref()
                .expect("no known contract, deploy first")
        }
    }
    
    impl Drop for State {
        // Serializes state to file
        fn drop(&mut self) {
            let mut file = std::fs::File::create(STATE_FILE).unwrap();
            file.write_all(toml::to_string(self).unwrap().as_bytes())
                .unwrap();
        }
    }

pub struct ContractInteract {
    interactor: Interactor,
    wallet_address: Address,
    contract_code: BytesValue,
    state: State
}

impl ContractInteract {
    pub async fn new() -> Self {
        let config = Config::new();
        let mut interactor = Interactor::new(config.gateway_uri())
            .await
            .use_chain_simulator(config.use_chain_simulator());

        interactor.set_current_dir_from_workspace("delegation_latest");
        let wallet_address = interactor.register_wallet(test_wallets::alice()).await;

        // Useful in the chain simulator setting
        // generate blocks until DCDTSystemSCAddress is enabled
        interactor.generate_blocks_until_epoch(1).await.unwrap();
        
        let contract_code = BytesValue::interpret_from(
            "drtsc:../output/delegation_latest.drtsc.json",
            &InterpreterContext::default(),
        );

        ContractInteract {
            interactor,
            wallet_address,
            contract_code,
            state: State::load_state()
        }
    }

    pub async fn deploy(&mut self) {
        let auction_contract_addr = bech32::decode("");
        let service_fee_per_10000 = 0u32;
        let owner_min_stake_share_per_10000 = 0u32;
        let n_blocks_before_unbond = 0u64;
        let minimum_stake = BigUint::<StaticApi>::from(0u128);
        let total_delegation_cap = BigUint::<StaticApi>::from(0u128);

        let new_address = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .init(auction_contract_addr, service_fee_per_10000, owner_min_stake_share_per_10000, n_blocks_before_unbond, minimum_stake, total_delegation_cap)
            .code(&self.contract_code)
            .returns(ReturnsNewAddress)
            .run()
            .await;
        let new_address_bech32 = bech32::encode(&new_address);
        self.state
            .set_address(Bech32Address::from_bech32_string(new_address_bech32.clone()));

        println!("new address: {new_address_bech32}");
    }

    pub async fn upgrade(&mut self) {
        let response = self
            .interactor
            .tx()
            .to(self.state.current_address())
            .from(&self.wallet_address)
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .upgrade()
            .code(&self.contract_code)
            .code_metadata(CodeMetadata::UPGRADEABLE)
            .returns(ReturnsNewAddress)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn version(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .version()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn num_nodes(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .num_nodes()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_node_id(&mut self) {
        let bls_key = BLSKey::<StaticApi>::default();

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_node_id(bls_key)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_node_signature_endpoint(&mut self) {
        let bls_key = BLSKey::<StaticApi>::default();

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_node_signature_endpoint(bls_key)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_node_state_endpoint(&mut self) {
        let bls_key = BLSKey::<StaticApi>::default();

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_node_state_endpoint(bls_key)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_all_node_states(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_all_node_states()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_node_bl_nonce_of_unstake_endpoint(&mut self) {
        let bls_key = BLSKey::<StaticApi>::default();

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_node_bl_nonce_of_unstake_endpoint(bls_key)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn add_nodes(&mut self) {
        let bls_keys_signatures = MultiValueVec::<MultiValue2::<BLSKey<StaticApi>, BLSSignature<StaticApi>>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .add_nodes(bls_keys_signatures)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn remove_nodes(&mut self) {
        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .remove_nodes(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn get_user_id(&mut self) {
        let address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_id(address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_address(&mut self) {
        let user_id = 0u32;

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_address(user_id)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_num_users(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_num_users()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn update_user_address(&mut self) {
        let addresses = MultiValueVec::from(vec![bech32::decode("")]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .update_user_address(addresses)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn user_ids_without_address(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .user_ids_without_address()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn fund_by_id(&mut self) {
        let id = 0u32;

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .fund_by_id(id)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_total_stake_endpoint(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_total_stake_endpoint(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_withdraw_only_stake(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_withdraw_only_stake(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_waiting_stake(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_waiting_stake(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_active_stake(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_active_stake(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_unstaked_stake(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_unstaked_stake(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_deferred_payment_stake(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_deferred_payment_stake(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_withdraw_only_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_withdraw_only_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_waiting_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_waiting_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_active_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_active_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_unstaked_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_unstaked_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_deferred_payment_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_deferred_payment_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_stake_by_type_endpoint(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_stake_by_type_endpoint(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_stake_by_type_endpoint(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_stake_by_type_endpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_all_user_stake_by_type(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_all_user_stake_by_type()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_user_deferred_payment_list(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_user_deferred_payment_list(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_full_waiting_list(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_full_waiting_list()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_full_active_list(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_full_active_list()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn stake_nodes(&mut self) {
        let amount_to_stake = BigUint::<StaticApi>::from(0u128);
        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .stake_nodes(amount_to_stake, bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_nodes_endpoint(&mut self) {
        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unstake_nodes_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_nodes_and_tokens_endpoint(&mut self) {
        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unstake_nodes_and_tokens_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn force_node_unbond_period(&mut self) {
        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .force_node_unbond_period(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unbond_specific_nodes_endpoint(&mut self) {
        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unbond_specific_nodes_endpoint(bls_keys)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unbond_all_possible_nodes(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unbond_all_possible_nodes()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn claim_unused_funds(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .claim_unused_funds()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unjail_nodes(&mut self) {
        let rewa_amount = BigUint::<StaticApi>::from(0u128);

        let bls_keys = MultiValueVec::<BLSKey<StaticApi>>::new();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unjail_nodes(bls_keys)
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_tokens(&mut self) {
        let amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unstake_tokens(amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unbond_tokens(&mut self) {
        let amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unbond_tokens(amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn get_auction_contract_address(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_auction_contract_address()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_service_fee(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_service_fee()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_delegation_cap(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_delegation_cap()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn is_bootstrap_mode(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .is_bootstrap_mode()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_owner_min_stake_share(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_owner_min_stake_share()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_n_blocks_before_unbond(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_n_blocks_before_unbond()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn set_n_blocks_before_unbond_endpoint(&mut self) {
        let n_blocks_before_unbond = 0u64;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .set_n_blocks_before_unbond_endpoint(n_blocks_before_unbond)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn get_minimum_stake(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_minimum_stake()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn set_minimum_stake_endpoint(&mut self) {
        let minimum_stake = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .set_minimum_stake_endpoint(minimum_stake)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn global_op_checkpoint(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .global_op_checkpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn is_global_op_in_progress(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .is_global_op_in_progress()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_cumulated_rewards(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_cumulated_rewards()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_claimable_rewards(&mut self) {
        let user = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_claimable_rewards(user)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn get_total_unclaimed_rewards(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_total_unclaimed_rewards()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn total_unprotected(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .total_unprotected()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn validate_owner_stake_share(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .validate_owner_stake_share()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn validate_delegation_cap_invariant(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .validate_delegation_cap_invariant()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn continue_global_operation_endpoint(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .continue_global_operation_endpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn modify_total_delegation_cap(&mut self) {
        let new_total_cap = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .modify_total_delegation_cap(new_total_cap)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn set_service_fee_endpoint(&mut self) {
        let service_fee_per_10000 = 0u32;

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .set_service_fee_endpoint(service_fee_per_10000)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn claim_rewards(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .claim_rewards()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn stake_endpoint(&mut self) {
        let rewa_amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .stake_endpoint()
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unstake_endpoint(&mut self) {
        let amount = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unstake_endpoint(amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn get_unstakeable(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_unstakeable(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn unbond_user(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unbond_user()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn get_unbondable(&mut self) {
        let user_address = bech32::decode("");

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .get_unbondable(user_address)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn dust_cleanup_checkpoint(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .dust_cleanup_checkpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn count_dust_items_waiting_list(&mut self) {
        let dust_limit = BigUint::<StaticApi>::from(0u128);

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .count_dust_items_waiting_list(dust_limit)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn count_dust_items_active(&mut self) {
        let dust_limit = BigUint::<StaticApi>::from(0u128);

        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .count_dust_items_active(dust_limit)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

    pub async fn dust_cleanup_waiting_list(&mut self) {
        let dust_limit = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .dust_cleanup_waiting_list(dust_limit)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn dust_cleanup_active(&mut self) {
        let dust_limit = BigUint::<StaticApi>::from(0u128);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .dust_cleanup_active(dust_limit)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn dns_register(&mut self) {
        let rewa_amount = BigUint::<StaticApi>::from(0u128);

        let dns_address = bech32::decode("");
        let name = ManagedBuffer::new_from_bytes(&b""[..]);

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .dns_register(dns_address, name)
            .rewa(rewa_amount)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn set_feature_flag_endpoint(&mut self) {
        let feature_name = ManagedBuffer::new_from_bytes(&b""[..]);
        let value = bool::<StaticApi>::default();

        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .set_feature_flag_endpoint(feature_name, value)
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn pause_endpoint(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .pause_endpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn unpause_endpoint(&mut self) {
        let response = self
            .interactor
            .tx()
            .from(&self.wallet_address)
            .to(self.state.current_address())
            .gas(30_000_000u64)
            .typed(proxy::DelegationFullProxy)
            .unpause_endpoint()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {response:?}");
    }

    pub async fn paused_status(&mut self) {
        let result_value = self
            .interactor
            .query()
            .to(self.state.current_address())
            .typed(proxy::DelegationFullProxy)
            .paused_status()
            .returns(ReturnsResultUnmanaged)
            .run()
            .await;

        println!("Result: {result_value:?}");
    }

}
?}");
    }

}
