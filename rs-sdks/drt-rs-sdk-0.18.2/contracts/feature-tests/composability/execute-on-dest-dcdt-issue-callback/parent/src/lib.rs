#![no_std]

numbat_wasm::imports!();

// Base cost for standalone + estimate cost of actual sc call
const ISSUE_EXPECTED_GAS_COST: u64 = 90_000_000 + 25_000_000;

#[numbat_wasm::contract]
pub trait Parent {
    #[proxy]
    fn child_proxy(&self, to: Address) -> child::Proxy<Self::SendApi>;

    #[init]
    fn init(&self) {}

    #[payable("REWA")]
    #[endpoint]
    fn deposit(&self) {}

    #[endpoint(deployChildContract)]
    fn deploy_child_contract(&self, code: BoxedBytes) -> SCResult<()> {
        let child_contract_address = self
            .send()
            .deploy_contract(
                self.blockchain().get_gas_left(),
                &Self::BigUint::zero(),
                &code,
                CodeMetadata::DEFAULT,
                &ArgBuffer::new(),
            )
            .ok_or("Child contract deployment failed")?;

        self.child_contract_address().set(&child_contract_address);
        Ok(())
    }

    #[payable("REWA")]
    #[endpoint(executeOnDestIssueToken)]
    fn execute_on_dest_issue_token(
        &self,
        token_display_name: BoxedBytes,
        token_ticker: BoxedBytes,
        initial_supply: Self::BigUint,
        #[payment] issue_cost: Self::BigUint,
    ) {
        let child_contract_adress = self.child_contract_address().get();
        self.child_proxy(child_contract_adress)
            .issue_wrapped_rewa(token_display_name, token_ticker, initial_supply, issue_cost)
            .with_gas_limit(ISSUE_EXPECTED_GAS_COST)
            .execute_on_dest_context_ignore_result();
    }

    // storage

    #[view(getChildContractAddress)]
    #[storage_mapper("childContractAddress")]
    fn child_contract_address(&self) -> SingleValueMapper<Self::Storage, Address>;
}
