#![no_std]
#![allow(deprecated)]

use factory::GuildLocalConfig;

dharitri_sc::imports!();

pub mod config;
pub mod factory;
pub mod guild_interactions;

const MIN_DIV_SAFETY: u64 = 1_000_000_000_000_000_000;

#[dharitri_sc::contract]
pub trait GuildFactory:
    config::ConfigModule
    + factory::FactoryModule
    + guild_interactions::GuildInteractionsModule
    + dharitri_sc_modules::only_admin::OnlyAdminModule
    + utils::UtilsModule
{
    #[init]
    fn init(
        &self,
        guild_sc_source_address: ManagedAddress,
        farming_token_id: TokenIdentifier,
        division_safety_constant: BigUint,
        max_active_guilds: usize,
        admins: MultiValueEncoded<ManagedAddress>,
    ) {
        self.require_sc_address(&guild_sc_source_address);
        self.require_valid_token_id(&farming_token_id);

        require!(
            division_safety_constant >= MIN_DIV_SAFETY,
            "Division safety constant too small"
        );

        self.guild_sc_source_address().set(guild_sc_source_address);
        self.guild_local_config().set(GuildLocalConfig {
            farming_token_id,
            division_safety_constant,
        });

        self.set_max_active_guilds(max_active_guilds);

        self.admins().extend(admins);
    }

    #[upgrade]
    fn upgrade(&self) {}
}
