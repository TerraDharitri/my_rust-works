use dharitri_sc_scenario::{
    api::StaticApi,
    dharitri_sc::types::{ManagedAddress, ManagedBuffer, Tx, TxBaseWithEnv, TxEnv},
    scenario_model::TxExpect,
    ScenarioTxEnv, ScenarioTxEnvData,
};

use crate::Interactor;

impl Interactor {
    pub fn tx(&mut self) -> TxBaseWithEnv<InteractorExecEnv<'_>> {
        let data = self.new_env_data();
        let env = InteractorExecEnv { world: self, data };
        Tx::new_with_env(env)
    }
}

/// Environment for executing transactions.
pub struct InteractorExecEnv<'w> {
    pub world: &'w mut Interactor,
    pub data: ScenarioTxEnvData,
}

impl<'w> TxEnv for InteractorExecEnv<'w> {
    type Api = StaticApi;

    type RHExpect = TxExpect;

    fn resolve_sender_address(&self) -> ManagedAddress<Self::Api> {
        panic!("Explicit sender address expected")
    }

    fn default_gas_annotation(&self) -> ManagedBuffer<Self::Api> {
        self.data.default_gas_annotation()
    }

    fn default_gas_value(&self) -> u64 {
        self.data.default_gas_value()
    }
}

impl<'w> ScenarioTxEnv for InteractorExecEnv<'w> {
    fn env_data(&self) -> &ScenarioTxEnvData {
        &self.data
    }
}
