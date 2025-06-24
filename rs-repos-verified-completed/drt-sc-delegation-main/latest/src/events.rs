dharitri_sc::imports!();

/// Contains all events that can be emitted by the contract.
#[dharitri_sc::derive::module]
pub trait EventsModule {
    #[event("userStake")]
    fn stake_event(&self, #[indexed] delegator: &ManagedAddress, amount: &BigUint);

    #[event("userUnstake")]
    fn unstake_event(&self, #[indexed] delegator: &ManagedAddress, amount: &BigUint);

    #[event("nodeStakeOk")]
    fn stake_node_ok_event(&self);

    #[event("nodeStakeFail")]
    fn stake_node_fail_event(&self, reason: &ManagedBuffer);

    #[event("nodeUnstakeOk")]
    fn unstake_node_ok_event(&self);

    #[event("nodeUnstakeFail")]
    fn unstake_node_fail_event(&self, reason: &ManagedBuffer);

    #[event("nodeUnbondOk")]
    fn unbond_node_ok_event(&self);

    #[event("nodeUnbondFail")]
    fn unbond_node_fail_event(&self, reason: &ManagedBuffer);

    #[event("tokensUnstake")]
    fn unstake_tokens_event(&self, amount: &BigUint);

    #[event("tokensUnbond")]
    fn unbond_tokens_event(&self, amount: &BigUint);

    #[event("userClaimRewards")]
    fn claim_rewards_event(&self, #[indexed] user: &ManagedAddress, amount: &BigUint);
}
