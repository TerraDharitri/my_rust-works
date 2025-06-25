#![no_std]

dharitri_sc::imports!();

pub mod create_farm_pos;
pub mod create_locked_pos;
pub mod create_pair_pos;
pub mod external_sc_interactions;

use auto_pos_creator::{
    configs::{self},
    external_sc_interactions::router_actions::SwapOperationType,
};
use common_structs::Epoch;

#[dharitri_sc::contract]
pub trait LockedTokenPosCreatorContract:
    configs::pairs_config::PairsConfigModule
    + utils::UtilsModule
    + read_external_storage::ReadExternalStorageModule
    + energy_query::EnergyQueryModule
    + create_locked_pos::CreateLockedPosModule
    + create_pair_pos::CreatePairPosModule
    + create_farm_pos::CreateFarmPosModule
    + external_sc_interactions::energy_factory_actions::EnergyFactoryActionsModule
    + external_sc_interactions::proxy_dex_actions::ProxyDexActionsModule
    + auto_pos_creator::multi_contract_interactions::create_pos::CreatePosModule
    + auto_pos_creator::external_sc_interactions::rewa_wrapper_actions::RewaWrapperActionsModule
    + auto_pos_creator::external_sc_interactions::pair_actions::PairActionsModule
    + auto_pos_creator::external_sc_interactions::router_actions::RouterActionsModule
    + auto_pos_creator::external_sc_interactions::farm_actions::FarmActionsModule
    + auto_pos_creator::external_sc_interactions::metastaking_actions::MetastakingActionsModule
{
    #[init]
    fn init(
        &self,
        energy_factory_adddress: ManagedAddress,
        rewa_wrapper_address: ManagedAddress,
        moa_wrewa_lp_pair_address: ManagedAddress,
        moa_wrewa_lp_farm_address: ManagedAddress,
        proxy_dex_address: ManagedAddress,
        router_address: ManagedAddress,
    ) {
        self.require_sc_address(&rewa_wrapper_address);
        self.require_sc_address(&moa_wrewa_lp_pair_address);
        self.require_sc_address(&moa_wrewa_lp_farm_address);
        self.require_sc_address(&proxy_dex_address);
        self.require_sc_address(&router_address);

        self.rewa_wrapper_address().set(rewa_wrapper_address);
        self.pair_address().set(moa_wrewa_lp_pair_address);
        self.farm_address().set(moa_wrewa_lp_farm_address);
        self.proxy_dex_address().set(proxy_dex_address);
        self.router_address().set(router_address);

        self.set_energy_factory_address(energy_factory_adddress);
    }

    #[upgrade]
    fn upgrade(&self) {}

    #[payable("*")]
    #[endpoint(createEnergyPosition)]
    fn create_energy_position(
        &self,
        lock_epochs: Epoch,
        min_amount_out: BigUint,
        swap_operations: MultiValueEncoded<SwapOperationType<Self::Api>>,
    ) -> DcdtTokenPayment {
        let caller = self.blockchain().get_caller();
        let payment = self.call_value().rewa_or_single_dcdt();
        let moa_payment = self.process_payment(payment, swap_operations);

        let output_payment = self.call_lock_virtual(moa_payment, lock_epochs, caller.clone());

        require!(output_payment.amount >= min_amount_out, "Slippage exceeded");

        self.send().direct_dcdt(
            &caller,
            &output_payment.token_identifier,
            output_payment.token_nonce,
            &output_payment.amount,
        );

        output_payment
    }
}
