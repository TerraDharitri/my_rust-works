use dharitri_sc::storage::StorageKey;

dharitri_sc::imports!();

static GUILD_IDS_BASE_KEY: &[u8] = b"guildIds";

mod guild_factory_proxy {
    dharitri_sc::imports!();

    #[dharitri_sc::proxy]
    pub trait GuildFactoryProxy {
        #[view(getGuildId)]
        fn get_guild_id(&self, guild_address: ManagedAddress);
    }
}

#[dharitri_sc::module]
pub trait RequestIdModule {
    fn get_guild_id(&self) -> AddressId {
        let own_sc_address = self.blockchain().get_sc_address();
        let factory = self.blockchain().get_owner_address();
        let mapper = AddressToIdMapper::<_, ManagedAddress>::new_from_address(
            factory,
            StorageKey::new(GUILD_IDS_BASE_KEY),
        );

        mapper.get_id_non_zero(&own_sc_address)
    }

    fn build_token_display_name(
        &self,
        base_display_name: ManagedBuffer,
        guild_id: AddressId,
        opt_prefix: Option<ManagedBuffer>,
    ) -> ManagedBuffer {
        let mut display_name = opt_prefix.unwrap_or_default();
        display_name.append(&base_display_name);

        let mut encoded_id = ManagedBuffer::new();
        let human_readable_id = sc_format!("{}", guild_id);
        let encode_result = human_readable_id.top_encode(&mut encoded_id);
        require!(
            encode_result.is_ok(),
            "Failed encoding ID to managed buffer"
        );

        display_name.append(&encoded_id);

        display_name
    }
}
