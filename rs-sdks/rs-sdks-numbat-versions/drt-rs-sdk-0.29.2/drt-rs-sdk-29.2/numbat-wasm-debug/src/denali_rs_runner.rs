#![allow(unused_variables)] // for now

use crate::{denali_step, world_mock::BlockchainMock};

use denali::model::Step;
use std::{path::Path, rc::Rc};

/// Runs denali test using the Rust infrastructure and the debug mode.
/// Uses a contract map to replace the references to the wasm bytecode
/// with the contracts running in debug mode.
pub fn denali_rs<P: AsRef<Path>>(relative_path: P, world: BlockchainMock) {
    let mut absolute_path = world.current_dir.clone();
    absolute_path.push(relative_path);
    let mut state = Rc::new(world);
    parse_execute_denali_steps(absolute_path.as_ref(), &mut state);
}

fn parse_execute_denali_steps(steps_path: &Path, state: &mut Rc<BlockchainMock>) {
    let scenario = denali::parse_scenario(steps_path);

    for step in scenario.steps.iter() {
        match step {
            Step::ExternalSteps { path } => {
                let parent_path = steps_path.parent().unwrap();
                let new_path = parent_path.join(path);
                parse_execute_denali_steps(new_path.as_path(), state);
            },
            Step::SetState {
                comment,
                accounts,
                new_addresses,
                block_hashes,
                previous_block_info,
                current_block_info,
            } => denali_step::set_state::execute(
                Rc::get_mut(state).unwrap(),
                accounts,
                new_addresses,
                previous_block_info,
                current_block_info,
            ),
            Step::ScCall {
                tx_id,
                comment,
                tx,
                expect,
            } => denali_step::sc_call::execute(state, tx_id, tx, expect),
            Step::ScQuery {
                tx_id,
                comment,
                tx,
                expect,
            } => denali_step::sc_query::execute(state.clone(), tx_id, tx, expect),
            Step::ScDeploy {
                tx_id,
                comment,
                tx,
                expect,
            } => denali_step::sc_deploy::execute(state, tx_id, tx, expect),
            Step::Transfer { tx_id, comment, tx } => denali_step::transfer::execute(state, tx),
            Step::ValidatorReward { tx_id, comment, tx } => {
                Rc::get_mut(state)
                    .unwrap()
                    .increase_validator_reward(&tx.to.value.into(), &tx.rewa_value.value);
            },
            Step::CheckState { comment, accounts } => {
                denali_step::check_state::execute(accounts, Rc::get_mut(state).unwrap());
            },
            Step::DumpState { .. } => {
                state.print_accounts();
            },
        }
    }
}
