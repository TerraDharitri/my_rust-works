// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Upgrade:                              1
// Endpoints:                           36
// Async Callback:                       1
// Total number of exported functions:  39

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    guild_sc
    (
        init => init
        upgrade => upgrade
        mergeFarmTokens => merge_farm_tokens_endpoint
        checkLocalRolesSet => check_local_roles_set
        calculateRewardsForGivenPosition => calculate_rewards_for_given_position
        topUpRewards => top_up_rewards
        startProduceRewards => start_produce_rewards_endpoint
        getAccumulatedRewards => accumulated_rewards
        getRewardCapacity => reward_capacity
        getGuildMasterRewardPerShare => guild_master_rps
        getUserRewardPerShare => user_rps
        getRewardReserve => reward_reserve
        getFarmingTokenId => farming_token_id
        getRewardTokenId => reward_token_id
        getPerBlockRewardAmount => per_block_reward_amount
        getLastRewardBlockNonce => last_reward_block_nonce
        getDivisionSafetyConstant => division_safety_constant
        registerFarmToken => register_farm_token
        setTransferRoleFarmToken => set_transfer_role_farm_token
        getFarmTokenId => farm_token
        getFarmTokenSupply => farm_token_supply
        addAdmin => add_admin_endpoint
        removeAdmin => remove_admin_endpoint
        updateOwnerOrAdmin => update_owner_or_admin_endpoint
        getPermissions => permissions
        stakeFarm => stake_farm_endpoint
        claimRewards => claim_rewards
        compoundRewards => compound_rewards
        unstakeFarm => unstake_farm
        unbondFarm => unbond_farm
        cancelUnbond => cancel_unbond
        registerUnbondToken => register_unbond_token
        setTransferRoleUnbondToken => set_transfer_role_unbond_token
        getUnbondTokenId => unbond_token
        getUserStakedTokens => get_user_staked_tokens
        closeGuild => close_guild
        migrateToOtherGuild => migrate_to_other_guild
        isGuildClosing => guild_closing
    )
}

dharitri_sc_wasm_adapter::async_callback! { guild_sc }
