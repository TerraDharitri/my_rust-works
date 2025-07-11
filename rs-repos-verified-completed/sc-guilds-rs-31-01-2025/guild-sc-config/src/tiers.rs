use common_structs::Percent;

use crate::tier_types::{
    GuildMasterRewardTier, GuildMasterRewardTierMultiValue, RewardTier, UserRewardTier,
    UserRewardTierMultiValue,
};

dharitri_sc::imports!();
dharitri_sc::derive_imports!();

pub static TIER_NOT_FOUND_ERR_MSG: &[u8] = b"Tier not found";
pub static INVALID_APR_ERR_MSG: &[u8] = b"Invalid APR";

pub const MAX_PERCENT: Percent = 10_000;
pub const MAX_TIERS: usize = 5;
pub const FIRST_INDEX_VEC_MAPPER: usize = 1;

#[dharitri_sc::module]
pub trait TierModule: crate::global_config::GlobalConfigModule {
    #[only_owner]
    #[endpoint(setMaxStakedTokens)]
    fn set_max_staked_tokens(&self, max_staked_tokens: BigUint) {
        let tiers_mapper = self.guild_master_tiers();
        let tiers_len = tiers_mapper.len();
        if tiers_len > 1 {
            let penultimate_tier = tiers_mapper.get(tiers_len - 1);
            require!(
                max_staked_tokens > penultimate_tier.max_stake,
                "Invalid max stake"
            );
        }

        self.max_staked_tokens().set(max_staked_tokens);
    }

    /// Pairs of (max_stake, apr)
    /// APR is scaled by two decimals, i.e. 10_000 is 100%
    /// Last max_stake value must be equal to the init value of max_staked_tokens
    #[only_owner]
    #[endpoint(addGuildMasterTiers)]
    fn add_guild_master_tiers(
        &self,
        tiers: MultiValueEncoded<GuildMasterRewardTierMultiValue<Self::Api>>,
    ) {
        let mut tiers_mapper = self.guild_master_tiers();
        self.require_empty_mapper(&tiers_mapper);

        self.set_guild_master_tiers_common(&mut tiers_mapper, tiers);
    }

    /// Pairs of (max_stake, apr)
    /// APR is scaled by two decimals, i.e. 10_000 is 100%
    /// Last max_stake value must be equal to the init value of max_staked_tokens
    #[only_owner]
    #[endpoint(updateGuildMasterTiers)]
    fn update_guild_master_tiers(
        &self,
        tiers: MultiValueEncoded<GuildMasterRewardTierMultiValue<Self::Api>>,
    ) {
        let mut tiers_mapper = self.guild_master_tiers();
        tiers_mapper.clear();

        self.set_guild_master_tiers_common(&mut tiers_mapper, tiers);
    }

    #[only_owner]
    #[endpoint(setGuildMasterTierApr)]
    fn set_guild_master_tier_apr(&self, max_stake: BigUint, new_apr: Percent) {
        let mut tiers_mapper = self.guild_master_tiers();
        let reward_tier = GuildMasterRewardTier {
            max_stake,
            apr: new_apr,
        };
        self.set_apr(&mut tiers_mapper, reward_tier);
    }

    /// Pairs of (max_percentage_staked, apr)
    /// Both percentages are scaled by two decimals, i.e. 10_000 is 100%
    /// max_percentage_staked must be <= 10_000, and the last one must be 10_000
    #[only_owner]
    #[endpoint(addUserTiers)]
    fn add_user_tiers(&self, tiers: MultiValueEncoded<UserRewardTierMultiValue>) {
        let mut tiers_mapper = self.user_tiers();
        self.require_empty_mapper(&tiers_mapper);

        self.set_user_tiers_common(&mut tiers_mapper, tiers);
    }

    /// Pairs of (max_percentage_staked, apr)
    /// Both percentages are scaled by two decimals, i.e. 10_000 is 100%
    /// max_percentage_staked must be <= 10_000, and the last one must be 10_000
    #[only_owner]
    #[endpoint(updateUserTiers)]
    fn update_user_tiers(&self, tiers: MultiValueEncoded<UserRewardTierMultiValue>) {
        let mut tiers_mapper = self.user_tiers();
        tiers_mapper.clear();

        self.set_user_tiers_common(&mut tiers_mapper, tiers);
    }

    #[only_owner]
    #[endpoint(setUserTierApr)]
    fn set_user_tier_apr(&self, max_percentage_staked: Percent, new_apr: Percent) {
        let mut tiers_mapper = self.user_tiers();
        let reward_tier = UserRewardTier {
            max_percentage_staked,
            apr: new_apr,
        };
        self.set_apr(&mut tiers_mapper, reward_tier);
    }

    fn set_guild_master_tiers_common(
        &self,
        tiers_mapper: &mut VecMapper<GuildMasterRewardTier<Self::Api>>,
        tiers: MultiValueEncoded<GuildMasterRewardTierMultiValue<Self::Api>>,
    ) {
        let tiers_len = tiers.len();
        for (i, tier_multi) in tiers.into_iter().enumerate() {
            let reward_tier = GuildMasterRewardTier::from(tier_multi);
            self.add_tier(tiers_mapper, &reward_tier);

            if i == tiers_len - 1 {
                let max_staked_tokens = self.max_staked_tokens().get();
                require!(
                    reward_tier.max_stake == max_staked_tokens,
                    "Invalid last guild master tier"
                );
            }
        }
    }

    fn set_user_tiers_common(
        &self,
        tiers_mapper: &mut VecMapper<UserRewardTier>,
        tiers: MultiValueEncoded<UserRewardTierMultiValue>,
    ) {
        let tiers_len = tiers.len();
        for (i, tier_multi) in tiers.into_iter().enumerate() {
            let reward_tier = UserRewardTier::from(tier_multi);
            self.require_valid_user_tier(&reward_tier);

            self.add_tier(tiers_mapper, &reward_tier);

            if i == tiers_len - 1 {
                require!(
                    reward_tier.max_percentage_staked == MAX_PERCENT,
                    "Invalid last user tier value"
                );
            }
        }
    }

    fn add_tier<T: TopEncode + TopDecode + RewardTier<Self::Api>>(
        &self,
        mapper: &mut VecMapper<T>,
        tier: &T,
    ) {
        let mapper_len = mapper.len();
        require!(mapper_len < MAX_TIERS, "May not add more tiers");

        if mapper_len > 0 {
            let previous_entry = mapper.get(mapper_len);
            require!(previous_entry.is_below(tier), "Invalid stake entry");
            require!(
                tier.get_apr() > previous_entry.get_apr(),
                INVALID_APR_ERR_MSG
            );
        }

        mapper.push(tier);
    }

    fn set_apr<T: TopEncode + TopDecode + RewardTier<Self::Api>>(
        &self,
        mapper: &mut VecMapper<T>,
        reward_tier: T,
    ) {
        let mut opt_found_index = None;
        for (i, tier) in mapper.iter().enumerate() {
            if tier.is_equal(&reward_tier) {
                opt_found_index = Some(i + 1);
                break;
            }
        }

        require!(opt_found_index.is_some(), TIER_NOT_FOUND_ERR_MSG);

        let index = unsafe { opt_found_index.unwrap_unchecked() };
        if index > FIRST_INDEX_VEC_MAPPER {
            let prev_index = index - 1;
            let prev_entry = mapper.get(prev_index);
            require!(
                reward_tier.get_apr() > prev_entry.get_apr(),
                INVALID_APR_ERR_MSG
            );
        }

        let last_index_vec_mapper = mapper.len();
        if index < last_index_vec_mapper {
            let next_index = index + 1;
            let next_entry = mapper.get(next_index);
            require!(
                reward_tier.get_apr() < next_entry.get_apr(),
                INVALID_APR_ERR_MSG
            );
        }

        let mut tier = mapper.get(index);
        tier.set_apr(&reward_tier);
        mapper.set(index, &tier);
    }

    fn require_valid_user_tier(&self, user_reward_tier: &UserRewardTier) {
        require!(
            user_reward_tier.max_percentage_staked > 0
                && user_reward_tier.max_percentage_staked <= MAX_PERCENT
                && user_reward_tier.apr != 0,
            "Invalid values"
        );
    }

    fn require_empty_mapper<T: TopEncode + TopDecode + RewardTier<Self::Api>>(
        &self,
        mapper: &VecMapper<T>,
    ) {
        require!(
            mapper.is_empty(),
            "May not add more tiers after contract initialized"
        );
    }

    #[view(getGuildMasterTiers)]
    #[storage_mapper("guildMasterTiers")]
    fn guild_master_tiers(&self) -> VecMapper<GuildMasterRewardTier<Self::Api>>;

    #[view(getUserTiers)]
    #[storage_mapper("userTiers")]
    fn user_tiers(&self) -> VecMapper<UserRewardTier>;
}
