dharitri_sc::imports!();

use core::marker::PhantomData;

use crate::config::ConfigModule;
use crate::contexts::storage_cache::StorageCache;
use crate::custom_rewards::CustomRewardsModule;
use crate::rewards::RewardsModule;
use crate::tiered_rewards::total_tokens::TokenPerTierModule;
use crate::tokens::farm_token::FarmTokenModule;
use crate::tokens::token_attributes::{LocalFarmToken, StakingFarmTokenAttributes};
use crate::user_actions::close_guild::CloseGuildModule;
use common_structs::Nonce;

pub trait FarmStakingTraits:
    crate::custom_rewards::CustomRewardsModule
    + crate::rewards::RewardsModule
    + crate::config::ConfigModule
    + crate::tokens::farm_token::FarmTokenModule
    + permissions_module::PermissionsModule
    + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
    + crate::tiered_rewards::read_config::ReadConfigModule
    + crate::tiered_rewards::total_tokens::TokenPerTierModule
    + crate::user_actions::close_guild::CloseGuildModule
{
}

impl<T> FarmStakingTraits for T where
    T: crate::custom_rewards::CustomRewardsModule
        + crate::rewards::RewardsModule
        + crate::config::ConfigModule
        + crate::tokens::farm_token::FarmTokenModule
        + permissions_module::PermissionsModule
        + dharitri_sc_modules::default_issue_callbacks::DefaultIssueCallbacksModule
        + crate::tiered_rewards::read_config::ReadConfigModule
        + crate::tiered_rewards::total_tokens::TokenPerTierModule
        + crate::user_actions::close_guild::CloseGuildModule
{
}

pub struct TotalRewards<M: ManagedTypeApi> {
    pub guild_master: BigUint<M>,
    pub users: BigUint<M>,
}

impl<M: ManagedTypeApi> TotalRewards<M> {
    pub fn zero() -> Self {
        Self {
            guild_master: BigUint::zero(),
            users: BigUint::zero(),
        }
    }

    pub fn total(&self) -> BigUint<M> {
        &self.guild_master + &self.users
    }
}

pub trait FarmContract {
    type FarmSc: FarmStakingTraits;

    fn calculate_per_block_rewards(
        sc: &Self::FarmSc,
        current_block_nonce: Nonce,
        last_reward_block_nonce: Nonce,
    ) -> BigUint<<Self::FarmSc as ContractBase>::Api> {
        if current_block_nonce <= last_reward_block_nonce || !sc.produces_per_block_rewards() {
            return BigUint::zero();
        }

        let per_block_reward = sc.per_block_reward_amount().get();
        let block_nonce_diff = current_block_nonce - last_reward_block_nonce;

        per_block_reward * block_nonce_diff
    }

    fn mint_per_block_rewards(
        sc: &Self::FarmSc,
    ) -> TotalRewards<<Self::FarmSc as ContractBase>::Api> {
        let current_block_nonce = sc.blockchain().get_block_nonce();
        let last_reward_nonce = sc.last_reward_block_nonce().get();
        if current_block_nonce <= last_reward_nonce || sc.guild_closing().get() {
            return TotalRewards::zero();
        }

        sc.last_reward_block_nonce().set(current_block_nonce);

        let extra_rewards_unbounded =
            Self::calculate_per_block_rewards(sc, current_block_nonce, last_reward_nonce);
        if extra_rewards_unbounded == 0 {
            return TotalRewards::zero();
        }

        if sc.guild_master_tokens().is_empty() {
            return TotalRewards::zero();
        }

        let guild_master_tokens = sc.guild_master_tokens().get();
        let total_user_tokens = sc.farm_token_supply().get();
        let guild_master_rewards =
            &guild_master_tokens * &extra_rewards_unbounded / total_user_tokens;
        let user_rewards = &extra_rewards_unbounded - &guild_master_rewards;
        let extra_rewards_unbounded_split = TotalRewards {
            guild_master: guild_master_rewards,
            users: user_rewards,
        };

        let extra_rewards_apr_bounded_per_block = sc.get_amount_apr_bounded();
        let block_nonce_diff = current_block_nonce - last_reward_nonce;
        let extra_rewards_apr_bounded = TotalRewards {
            guild_master: extra_rewards_apr_bounded_per_block.guild_master * block_nonce_diff,
            users: extra_rewards_apr_bounded_per_block.users * block_nonce_diff,
        };

        TotalRewards {
            guild_master: core::cmp::min(
                extra_rewards_unbounded_split.guild_master,
                extra_rewards_apr_bounded.guild_master,
            ),
            users: core::cmp::min(
                extra_rewards_unbounded_split.users,
                extra_rewards_apr_bounded.users,
            ),
        }
    }

    fn generate_aggregated_rewards(
        sc: &Self::FarmSc,
        storage_cache: &mut StorageCache<Self::FarmSc>,
    ) {
        let accumulated_rewards_mapper = sc.accumulated_rewards();
        let mut accumulated_rewards = accumulated_rewards_mapper.get();
        let reward_capacity = sc.reward_capacity().get();
        let mut remaining_rewards = &reward_capacity - &accumulated_rewards;
        let split_rewards = Self::mint_per_block_rewards(sc);
        let total_reward = split_rewards.total();
        if total_reward > remaining_rewards {
            let caller = sc.blockchain().get_caller();
            let own_sc_address = sc.blockchain().get_sc_address();
            let is_query = caller == own_sc_address;

            let needed_rewards = &total_reward - &remaining_rewards;
            let received_rewards = sc.request_rewards(needed_rewards, is_query);
            remaining_rewards += received_rewards;
        }

        // If needed rewards STILL more than remaining rewards, just return instead of doing additional math
        if total_reward > remaining_rewards {
            sc.update_all();

            return;
        }

        storage_cache.reward_reserve += &total_reward;
        accumulated_rewards += &total_reward;
        accumulated_rewards_mapper.set(&accumulated_rewards);

        if storage_cache.farm_token_supply == 0 {
            sc.update_all();

            return;
        }

        let guild_master_tokens = sc.guild_master_tokens().get();
        if guild_master_tokens > 0 {
            let increase_guild_master = (split_rewards.guild_master
                * &storage_cache.division_safety_constant)
                / &guild_master_tokens;
            storage_cache.guild_master_rps += increase_guild_master;
        }

        let total_user_tokens = &sc.farm_token_supply().get() - &guild_master_tokens;
        if total_user_tokens > 0 {
            let increase_users = (split_rewards.users * &storage_cache.division_safety_constant)
                / &total_user_tokens;
            storage_cache.user_rps += increase_users;
        }

        sc.update_all();
    }

    fn calculate_rewards(
        sc: &Self::FarmSc,
        caller: &ManagedAddress<<Self::FarmSc as ContractBase>::Api>,
        farm_token_amount: &BigUint<<Self::FarmSc as ContractBase>::Api>,
        token_attributes: &StakingFarmTokenAttributes<<Self::FarmSc as ContractBase>::Api>,
        storage_cache: &StorageCache<Self::FarmSc>,
    ) -> BigUint<<Self::FarmSc as ContractBase>::Api> {
        let storage_rps = sc.get_rps_by_user(caller, storage_cache);
        let token_rps = token_attributes.get_reward_per_share();
        if storage_rps <= &token_rps {
            return BigUint::zero();
        }

        let rps_diff = storage_rps - &token_rps;
        farm_token_amount * &rps_diff / &storage_cache.division_safety_constant
    }

    fn create_enter_farm_initial_attributes(
        farming_token_amount: BigUint<<Self::FarmSc as ContractBase>::Api>,
        current_reward_per_share: BigUint<<Self::FarmSc as ContractBase>::Api>,
    ) -> StakingFarmTokenAttributes<<Self::FarmSc as ContractBase>::Api> {
        StakingFarmTokenAttributes {
            reward_per_share: current_reward_per_share,
            compounded_reward: BigUint::zero(),
            current_farm_amount: farming_token_amount,
        }
    }

    fn create_claim_rewards_initial_attributes(
        first_token_attributes: StakingFarmTokenAttributes<<Self::FarmSc as ContractBase>::Api>,
        current_reward_per_share: BigUint<<Self::FarmSc as ContractBase>::Api>,
    ) -> StakingFarmTokenAttributes<<Self::FarmSc as ContractBase>::Api> {
        StakingFarmTokenAttributes {
            reward_per_share: current_reward_per_share,
            compounded_reward: first_token_attributes.compounded_reward,
            current_farm_amount: first_token_attributes.current_farm_amount,
        }
    }

    fn create_compound_rewards_initial_attributes(
        first_token_attributes: StakingFarmTokenAttributes<<Self::FarmSc as ContractBase>::Api>,
        current_reward_per_share: BigUint<<Self::FarmSc as ContractBase>::Api>,
        reward: &BigUint<<Self::FarmSc as ContractBase>::Api>,
    ) -> StakingFarmTokenAttributes<<Self::FarmSc as ContractBase>::Api> {
        let new_pos_compounded_reward = first_token_attributes.compounded_reward + reward;
        let new_pos_current_farm_amount = first_token_attributes.current_farm_amount + reward;
        StakingFarmTokenAttributes {
            reward_per_share: current_reward_per_share,
            compounded_reward: new_pos_compounded_reward,
            current_farm_amount: new_pos_current_farm_amount,
        }
    }
}

pub struct FarmStakingWrapper<T>
where
    T:,
{
    _phantom: PhantomData<T>,
}

impl<T> FarmContract for FarmStakingWrapper<T>
where
    T: FarmStakingTraits,
{
    type FarmSc = T;
}
