#![no_std]
#![allow(clippy::type_complexity)]

pub mod call_async;
pub mod call_sync;
pub mod call_transf_exec;
pub mod contract_change_owner;
pub mod contract_deploy;
pub mod contract_upgrade;
pub mod dcdt;
pub mod forwarder_proxy;
pub mod nft;
pub mod roles;
pub mod sft;
pub mod storage;
pub mod vault_proxy;

dharitri_sc::imports!();

/// Test contract for investigating contract calls.
#[dharitri_sc::contract]
pub trait Forwarder:
    call_sync::ForwarderSyncCallModule
    + call_async::ForwarderAsyncCallModule
    + call_transf_exec::ForwarderTransferExecuteModule
    + contract_change_owner::ChangeOwnerModule
    + contract_deploy::DeployContractModule
    + contract_upgrade::UpgradeContractModule
    + dcdt::ForwarderDcdtModule
    + sft::ForwarderSftModule
    + nft::ForwarderNftModule
    + roles::ForwarderRolesModule
    + storage::ForwarderStorageModule
{
    #[init]
    fn init(&self) {}

    #[endpoint]
    fn send_rewa(&self, to: &ManagedAddress, amount: &BigUint) {
        self.tx().to(to).rewa(amount).transfer();
    }
}
