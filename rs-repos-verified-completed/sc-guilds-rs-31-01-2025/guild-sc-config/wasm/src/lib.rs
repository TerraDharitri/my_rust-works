// Code generated by the dharitri-sc build system. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

// Init:                                 1
// Upgrade:                              1
// Endpoints:                           32
// Async Callback (empty):               1
// Total number of exported functions:  35

#![no_std]

dharitri_sc_wasm_adapter::allocator!();
dharitri_sc_wasm_adapter::panic_handler!();

dharitri_sc_wasm_adapter::endpoints! {
    guild_sc_config
    (
        init => init
        upgrade => upgrade
        setMaxStakedTokens => set_max_staked_tokens
        addGuildMasterTiers => add_guild_master_tiers
        updateGuildMasterTiers => update_guild_master_tiers
        setGuildMasterTierApr => set_guild_master_tier_apr
        addUserTiers => add_user_tiers
        updateUserTiers => update_user_tiers
        setUserTierApr => set_user_tier_apr
        getGuildMasterTiers => guild_master_tiers
        getUserTiers => user_tiers
        setMinStakeUser => set_min_stake_user
        setMinStakeGuildMaster => set_min_stake_guild_master
        setTotalStakingTokenMinted => set_total_staking_token_minted
        increaseStakedTokens => increase_staked_tokens
        decreaseStakedTokens => decrease_staked_tokens
        setSecondsPerBlock => set_seconds_per_block
        setPerBlockRewardAmount => set_per_block_reward_amount
        pauseAllGuilds => pause_all_guilds
        unpauseAllGuilds => unpause_all_guilds
        getMaxStakedTokens => max_staked_tokens
        getMinUnbondEpochsUser => min_unbond_epochs_user
        getMinUnbondEpochsGuildMaster => min_unbond_epochs_guild_master
        getMinStakeUser => min_stake_user
        getMinStakeGuildMaster => min_stake_guild_master
        getTotalStakingTokenMinted => total_staking_token_minted
        getTotalStakingTokenStaked => total_staking_token_staked
        getBaseFarmTokenId => base_farm_token_id
        getBaseUnbondTokenId => base_unbond_token_id
        getBaseTokenDisplayName => base_token_display_name
        getTokenDecimals => tokens_decimals
        getSecondsPerBlock => seconds_per_block
        getPerBlockRewardAmount => per_block_reward_amount
        areAllGuildsPaused => global_pause_status
    )
}

dharitri_sc_wasm_adapter::async_callback_empty! {}
