#![no_std]

numbat_wasm::imports!();

use crate::auction::PERCENTAGE_TOTAL;

pub mod auction;
pub mod bidding;
pub mod common_util_functions;
pub mod events;
pub mod offer;
pub mod token_distribution;
pub mod token_whitelist;

#[numbat_wasm::contract]
pub trait DcdtNftMarketplace:
    auction::AuctionModule
    + offer::OfferModule
    + bidding::BiddingModule
    + token_distribution::TokenDistributionModule
    + token_whitelist::TokenWhitelistModule
    + events::EventsModule
    + common_util_functions::CommonUtilFunctions
    + numbat_wasm_modules::pause::PauseModule
{
    #[init]
    fn init(
        &self,
        bid_cut_percentage: u64,
        tokens_to_whitelist: MultiValueEncoded<RewaOrDcdtTokenIdentifier>,
    ) {
        self.try_set_bid_cut_percentage(bid_cut_percentage);
        self.add_tokens_to_whitelist(tokens_to_whitelist);
    }

    #[only_owner]
    #[endpoint(setCutPercentage)]
    fn set_percentage_cut(&self, new_cut_percentage: u64) {
        self.try_set_bid_cut_percentage(new_cut_percentage);
    }

    fn try_set_bid_cut_percentage(&self, new_cut_percentage: u64) {
        require!(
            new_cut_percentage > 0 && new_cut_percentage < PERCENTAGE_TOTAL,
            "Invalid percentage value, should be between 0 and 10,000"
        );

        self.bid_cut_percentage()
            .set(BigUint::from(new_cut_percentage));
    }
}
