use dharitri_sc_scenario::{
    dharitri_sc::types::{Tx, TxFromSpecified, TxGas, TxPayment, TxToSpecified},
    scenario::tx_to_step::TxToStep,
    scenario_model::TransferStep,
};
use dharitri_sdk::gateway::GatewayAsyncService;

use super::{InteractorEnvExec, InteractorExecStep, InteractorPrepareAsync, InteractorRunAsync};

async fn run_async_transfer<'w, GatewayProxy, From, To, Payment, Gas>(
    tx: Tx<InteractorEnvExec<'w, GatewayProxy>, From, To, Payment, Gas, (), ()>,
) where
    GatewayProxy: GatewayAsyncService,
    From: TxFromSpecified<InteractorEnvExec<'w, GatewayProxy>>,
    To: TxToSpecified<InteractorEnvExec<'w, GatewayProxy>>,
    Payment: TxPayment<InteractorEnvExec<'w, GatewayProxy>>,
    Gas: TxGas<InteractorEnvExec<'w, GatewayProxy>>,
{
    let step_wrapper = tx.tx_to_step();
    step_wrapper.env.world.transfer(step_wrapper.step).await;
}

impl<'w, GatewayProxy, From, To, Payment, Gas> InteractorRunAsync
    for Tx<InteractorEnvExec<'w, GatewayProxy>, From, To, Payment, Gas, (), ()>
where
    GatewayProxy: GatewayAsyncService,
    From: TxFromSpecified<InteractorEnvExec<'w, GatewayProxy>>,
    To: TxToSpecified<InteractorEnvExec<'w, GatewayProxy>>,
    Payment: TxPayment<InteractorEnvExec<'w, GatewayProxy>>,
    Gas: TxGas<InteractorEnvExec<'w, GatewayProxy>>,
{
    type Result = ();

    fn run(self) -> impl std::future::Future<Output = Self::Result> {
        run_async_transfer(self)
    }
}

impl<'w, GatewayProxy, From, To, Payment, Gas> InteractorPrepareAsync
    for Tx<InteractorEnvExec<'w, GatewayProxy>, From, To, Payment, Gas, (), ()>
where
    GatewayProxy: GatewayAsyncService,
    From: TxFromSpecified<InteractorEnvExec<'w, GatewayProxy>>,
    To: TxToSpecified<InteractorEnvExec<'w, GatewayProxy>>,
    Payment: TxPayment<InteractorEnvExec<'w, GatewayProxy>>,
    Gas: TxGas<InteractorEnvExec<'w, GatewayProxy>>,
{
    type Exec = InteractorExecStep<'w, GatewayProxy, TransferStep, ()>;

    fn prepare_async(self) -> Self::Exec {
        InteractorExecStep {
            step_wrapper: self.tx_to_step(),
        }
    }
}

impl<'w, GatewayProxy> InteractorExecStep<'w, GatewayProxy, TransferStep, ()>
where
    GatewayProxy: GatewayAsyncService,
{
    pub async fn run(self) {
        self.step_wrapper
            .env
            .world
            .transfer(self.step_wrapper.step)
            .await;
    }
}
