use std::time::Duration;

use dharitri_sc_scenario::dharitri_sc::{
    codec::{multi_types::IgnoreValue, Empty},
    types::FunctionCall,
};

use super::*;

const ISSUE_COST: u64 = 50000000000000000; // 0.05 REWA

const COLLECTION_NAME: &str = "TestCollection1";
const COLLECTION_TICKER: &str = "TESTCOLL1";
const TOKEN_TYPE: &str = "NFT";

const NUM_ITEMS: usize = 3;
const ROYALTIES: usize = 3000;
const METADATA: &str = "tags:test,rust-interactor";

impl MultisigInteract {
    pub async fn issue_multisig_and_collection_full(&mut self) {
        self.deploy().await;
        self.feed_contract_rewa().await;
        self.issue_collection().await;
        self.set_special_role().await;
        self.interactor.sleep(Duration::from_secs(15)).await;
        self.create_items().await;
    }

    pub async fn issue_multisig_and_collection_with_all_roles_full(&mut self) {
        self.deploy().await;
        self.feed_contract_rewa().await;
        self.issue_collection_with_all_roles().await;
        self.interactor.sleep(Duration::from_secs(15)).await;
        self.create_items().await;
    }

    pub async fn propose_issue_collection_with_all_roles(&mut self) -> usize {
        let system_sc_address = bech32::decode(SYSTEM_SC_BECH32);
        let action_id = self
            .interactor
            .sc_call_get_result(
                ScCallStep::new()
                    .call(
                        self.state.multisig().propose_async_call(
                            system_sc_address,
                            ISSUE_COST,
                            FunctionCall::new("registerAndSetAllRoles")
                                .argument(&COLLECTION_NAME)
                                .argument(&COLLECTION_TICKER)
                                .argument(&TOKEN_TYPE)
                                .argument(&0u32),
                        ),
                    )
                    .from(&self.wallet_address)
                    .gas_limit("10,000,000")
                    .expect(TxExpect::ok().additional_error_message("failed to issue collection")),
            )
            .await
            .result
            .unwrap();

        println!("successfully proposed issue colllection with roles all action `{action_id}`");
        action_id
    }

    pub async fn issue_collection_with_all_roles(&mut self) {
        println!("proposing issue collection with all roles...");
        let action_id = self.propose_issue_collection_with_all_roles().await;

        println!("perfoming issue collection with all roles action `{action_id}`...");

        if !self.quorum_reached(action_id).await && !self.sign(action_id).await {
            return;
        }
        println!("quorum reached for action `{action_id}`");

        let response: TypedResponse<IgnoreValue> = self
            .interactor
            .sc_call_get_result(
                ScCallStep::new()
                    .call(self.state.multisig().perform_action_endpoint(action_id))
                    .from(&self.wallet_address)
                    .gas_limit("80,000,000")
                    .expect(TxExpect::ok().additional_error_message(
                        "perform issue collection with all roles failed: ",
                    )),
            )
            .await;
        self.collection_token_identifier = response
            .new_issued_token_identifier
            .expect("new token identifier could not be retrieved");
        println!(
            "collection token identifier: {}",
            self.collection_token_identifier
        );
    }

    pub async fn propose_issue_collection(&mut self) -> usize {
        let system_sc_address = bech32::decode(SYSTEM_SC_BECH32);
        let action_id = self
            .interactor
            .sc_call_get_result(
                ScCallStep::new()
                    .call(
                        self.state.multisig().propose_async_call(
                            system_sc_address,
                            ISSUE_COST,
                            FunctionCall::new("issueNonFungible")
                                .argument(&COLLECTION_NAME)
                                .argument(&COLLECTION_TICKER),
                        ),
                    )
                    .from(&self.wallet_address)
                    .gas_limit("10,000,000"),
            )
            .await
            .result
            .unwrap();

        println!("successfully proposed issue colllection action `{action_id}`");
        action_id
    }

    pub async fn issue_collection(&mut self) {
        println!("proposing issue collection...");
        let action_id = self.propose_issue_collection().await;

        println!("perfoming issue collection action `{action_id}`...");

        if !self.quorum_reached(action_id).await && !self.sign(action_id).await {
            return;
        }
        println!("quorum reached for action `{action_id}`");

        let response: TypedResponse<IgnoreValue> =
            self.interactor
                .sc_call_get_result(
                    ScCallStep::new()
                        .call(self.state.multisig().perform_action_endpoint(action_id))
                        .from(&self.wallet_address)
                        .gas_limit("80,000,000")
                        .expect(TxExpect::ok().additional_error_message(
                            "perform issue collection with all failed: ",
                        )),
                )
                .await;
        self.collection_token_identifier = response
            .new_issued_token_identifier
            .expect("new token identifier could not be retrieved");
        println!(
            "collection token identifier: {}",
            self.collection_token_identifier
        );
    }

    pub async fn propose_set_special_role(&mut self) -> usize {
        let multisig_address = self.state.multisig().to_address();
        let action_id = self
            .interactor
            .sc_call_get_result(
                ScCallStep::new()
                    .call(
                        self.state.multisig().propose_async_call(
                            &self.system_sc_address,
                            0u64,
                            FunctionCall::new("setSpecialRole")
                                .argument(&self.collection_token_identifier)
                                .argument(&multisig_address)
                                .argument(&"DCDTRoleNFTCreate"),
                        ),
                    )
                    .from(&self.wallet_address)
                    .gas_limit("10,000,000"),
            )
            .await
            .result
            .unwrap();

        println!("successfully proposed set special role with action `{action_id}`");
        action_id
    }

    pub async fn set_special_role(&mut self) {
        println!("proposing set special role...");
        let action_id = self.propose_set_special_role().await;

        println!("performing set special role action `{action_id}`...");
        self.perform_action(action_id, "80,000,000").await;
    }

    pub async fn create_items(&mut self) {
        println!("creating items...");

        let multisig_address = self.state.multisig().to_address();
        let mut steps = Vec::new();

        for item_index in 0..NUM_ITEMS {
            let item_name = format!("Test collection item #{item_index}");
            let image_cid = format!(
                "https://ipfs.io/ipfs/QmYyAaEf1phJS5mN6wfou5de5GbpUddBxTY1VekKcjd5PC/nft{item_index:02}.png"
            );

            let typed_sc_call = ScCallStep::new()
                .call(
                    self.state.multisig().propose_async_call(
                        &multisig_address,
                        0u64,
                        FunctionCall::new("DCDTNFTCreate")
                            .argument(&self.collection_token_identifier)
                            .argument(&1u32)
                            .argument(&item_name)
                            .argument(&ROYALTIES)
                            .argument(&Empty)
                            .argument(&METADATA)
                            .argument(&image_cid),
                    ),
                )
                .from(&self.wallet_address)
                .gas_limit("10,000,000");

            steps.push(typed_sc_call);
        }

        self.interactor
            .multi_sc_exec(StepBuffer::from_sc_call_vec(&mut steps))
            .await;

        let mut actions = Vec::new();
        for step in steps.iter() {
            let result = step.result();
            if result.is_err() {
                println!(
                    "propose DCDTNFTCreate failed with: {}",
                    result.err().unwrap()
                );
                return;
            }

            let action_id = result.unwrap();
            println!("successfully proposed DCDTNFTCreate action `{action_id}`");
            actions.push(action_id);
        }

        self.perform_actions(actions, "30,000,000").await;
    }
}
