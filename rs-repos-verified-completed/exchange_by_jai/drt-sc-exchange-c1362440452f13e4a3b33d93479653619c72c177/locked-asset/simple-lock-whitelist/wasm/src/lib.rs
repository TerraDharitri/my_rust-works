// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Upgrade:                              1
// Endpoints:                           25
// Async Callback:                       1
// Total number of exported functions:  28

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    simple_lock_whitelist
    (
        init => init
        upgrade => upgrade
        setTransferRoleLockedToken => set_transfer_role
        setTransferRolesStatus => set_transfer_roles_status
        setTransferRoleProxyLpToken => set_transfer_role_proxy_lp
        setTransferRoleProxyFarmToken => set_transfer_role_proxy_farm
        lockTokens => lock_tokens_endpoint
        unlockTokens => unlock_tokens_endpoint
        getTokenWhitelist => token_whitelist
        getTransferRolesNotSet => transfer_roles_not_set
        issueLockedToken => issue_locked_token
        getLockedTokenId => locked_token
        issueLpProxyToken => issue_lp_proxy_token
        addLpToWhitelist => add_lp_to_whitelist
        removeLpFromWhitelist => remove_lp_from_whitelist
        addLiquidityLockedToken => add_liquidity_locked_token
        removeLiquidityLockedToken => remove_liquidity_locked_token
        getKnownLiquidityPools => known_liquidity_pools
        getLpProxyTokenId => lp_proxy_token
        issueFarmProxyToken => issue_farm_proxy_token
        addFarmToWhitelist => add_farm_to_whitelist
        removeFarmFromWhitelist => remove_farm_from_whitelist
        enterFarmLockedToken => enter_farm_locked_token
        exitFarmLockedToken => exit_farm_locked_token
        farmClaimRewardsLockedToken => farm_claim_rewards_locked_token
        getKnownFarms => known_farms
        getFarmProxyTokenId => farm_proxy_token
    )
}

dharitri_sc_wasm_adapter::async_callback! { simple_lock_whitelist }
