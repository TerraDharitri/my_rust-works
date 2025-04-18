#![no_std]

numbat_wasm::imports!();

#[numbat_wasm::contract]
pub trait CryptoBubbles {
    /// constructor function
    /// is called immediately after the contract is created
    #[init]
    fn init(&self) {}

    /// player adds funds
    #[payable("REWA")]
    #[endpoint(topUp)]
    fn top_up(&self) {
        let payment = self.call_value().rewa_value();
        let caller = self.blockchain().get_caller_legacy();
        self.player_balance(&caller)
            .update(|balance| *balance += &payment);

        self.top_up_event(&caller, &payment);
    }

    /// player withdraws funds
    #[endpoint]
    fn withdraw(&self, amount: &BigUint) {
        self.transfer_back_to_player_wallet(&self.blockchain().get_caller_legacy(), amount)
    }

    /// server calls withdraw on behalf of the player
    fn transfer_back_to_player_wallet(&self, player: &Address, amount: &BigUint) {
        self.player_balance(player).update(|balance| {
            require!(
                amount <= balance,
                "amount to withdraw must be less or equal to balance"
            );

            *balance -= amount;
        });

        self.send().direct_rewa(&player.into(), amount);

        self.withdraw_event(player, amount);
    }

    /// player joins game
    fn add_player_to_game_state_change(
        &self,
        game_index: &BigUint,
        player: &Address,
        bet: &BigUint,
    ) {
        self.player_balance(player).update(|balance| {
            require!(bet <= balance, "insufficient funds to join game");

            *balance -= bet;
        });

        self.player_joins_game_event(game_index, player, bet);
    }

    // player tops up + joins a game
    #[payable("REWA")]
    #[endpoint(joinGame)]
    fn join_game(&self, game_index: BigUint) {
        let bet = self.call_value().rewa_value();
        let player = self.blockchain().get_caller_legacy();
        self.top_up();
        self.add_player_to_game_state_change(&game_index, &player, &bet)
    }

    // owner transfers prize into winner SC account
    #[only_owner]
    #[endpoint(rewardWinner)]
    fn reward_winner(&self, game_index: &BigUint, winner: &Address, prize: &BigUint) {
        self.player_balance(winner)
            .update(|balance| *balance += prize);

        self.reward_winner_event(game_index, winner, prize);
    }

    // owner transfers prize into winner SC account, then transfers funds to player wallet
    #[endpoint(rewardAndSendToWallet)]
    fn reward_and_send_to_wallet(&self, game_index: &BigUint, winner: &Address, prize: &BigUint) {
        self.reward_winner(game_index, winner, prize);
        self.transfer_back_to_player_wallet(winner, prize);
    }

    // Storage

    #[view(balanceOf)]
    #[storage_mapper("playerBalance")]
    fn player_balance(&self, player: &Address) -> SingleValueMapper<BigUint>;

    // Events

    #[legacy_event("0x1000000000000000000000000000000000000000000000000000000000000001")]
    fn top_up_event(&self, player: &Address, amount: &BigUint);

    #[legacy_event("0x1000000000000000000000000000000000000000000000000000000000000002")]
    fn withdraw_event(&self, player: &Address, amount: &BigUint);

    #[legacy_event("0x1000000000000000000000000000000000000000000000000000000000000003")]
    fn player_joins_game_event(&self, game_index: &BigUint, player: &Address, bet: &BigUint);

    #[legacy_event("0x1000000000000000000000000000000000000000000000000000000000000004")]
    fn reward_winner_event(&self, game_index: &BigUint, winner: &Address, prize: &BigUint);
}
