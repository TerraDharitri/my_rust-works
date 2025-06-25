mod dex_interact_cli;
mod dex_interact_config;
mod dex_interact_state;
mod energy_factory;
mod farm_locked;
mod farm_staking_proxy;
mod pair;
mod structs;

use clap::Parser;
use dex_interact_cli::AddArgs;
use dex_interact_config::Config;
use dex_interact_state::State;
use dharitri_sc_snippets::imports::*;
use proxies::*;

#[tokio::main]
async fn main() {
    env_logger::init();

    let mut dex_interact = DexInteract::init().await;
    dex_interact.register_wallets();

    let cli = dex_interact_cli::InteractCli::parse();
    match &cli.command {
        Some(dex_interact_cli::InteractCliCommand::Swap(args)) => {
            pair::swap_tokens_fixed_input(&mut dex_interact, args).await;
        }
        Some(dex_interact_cli::InteractCliCommand::Add(args)) => {
            pair::add_liquidity(&mut dex_interact, args).await;
        }
        Some(dex_interact_cli::InteractCliCommand::FullFarm(args)) => {
            dex_interact.full_farm_scenario(args).await;
        }
        None => {}
    }
}

struct DexInteract {
    interactor: Interactor,
    wallet_address: Bech32Address,
    state: State,
}

impl DexInteract {
    async fn init() -> Self {
        let config = Config::load_config();
        let mut interactor = Interactor::new(config.gateway()).await;

        let test_address = test_wallets::mike();
        let wallet_address = interactor.register_wallet(test_address);
        println!("wallet address: {:#?}", test_address.address());

        Self {
            interactor,
            wallet_address: wallet_address.into(),
            state: State::load_state(),
        }
    }

    fn register_wallets(&mut self) {
        let carol = test_wallets::carol();
        let dan = test_wallets::dan();
        let eve = test_wallets::eve();

        for wallet in &[carol, dan, eve] {
            self.interactor.register_wallet(*wallet);
        }
    }

    // mock
    async fn full_farm_scenario(&mut self, args: &AddArgs) {
        let (_, _, lp_token) = pair::add_liquidity(self, args).await.0;
        let _result = farm_locked::enter_farm(self, lp_token).await;
        let _query = energy_factory::get_energy_amount_for_user(self, Address::zero()).await;
        let _farm_token = farm_staking_proxy::stake_farm_tokens(self, Vec::new(), None).await;
        // TODO
    }
}

// Just for demo, still TODO
#[cfg(test)]
pub mod integration_tests {
    use crate::{dex_interact_cli::SwapArgs, pair, DexInteract};

    #[test]
    fn test_full_farm_scenario() {
        let rt = crate::tokio::runtime::Runtime::new().unwrap();

        rt.block_on(async {
            let mut dex_interact = DexInteract::init().await;
            dex_interact.register_wallets();
            let args = SwapArgs {
                amount: 10_000_000_000_000_000_000u128,
                min_amount: 1_000_000_000_000u128,
            };
            let result = pair::swap_tokens_fixed_input(&mut dex_interact, &args).await;
            println!("result {:#?}", result);
            // let args =PairArgs {
            //     first_payment_amount: 0u128,
            //     second_payment_amount: 0u128,
            //     first_token_amount_min: 0u128,
            //     second_token_amount_min: 0u128,
            // };
            // dex_interact.full_farm_scenario(&args).await;
        });
    }
}
