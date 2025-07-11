numbat_wasm::imports!();

use crate::{
    auction::{Auction, AuctionType, NFT_AMOUNT, PERCENTAGE_TOTAL},
    offer::Offer,
};

pub struct BidSplitAmounts<M: ManagedTypeApi> {
    pub creator: BigUint<M>,
    pub marketplace: BigUint<M>,
    pub seller: BigUint<M>,
}

#[numbat_wasm::module]
pub trait TokenDistributionModule:
    crate::common_util_functions::CommonUtilFunctions + numbat_wasm_modules::pause::PauseModule
{
    #[endpoint(claimTokens)]
    fn claim_tokens(
        &self,
        claim_destination: ManagedAddress,
        token_nonce_pairs: MultiValueEncoded<MultiValue2<RewaOrDcdtTokenIdentifier, u64>>,
    ) -> MultiValue2<BigUint, ManagedVec<DcdtTokenPayment<Self::Api>>> {
        self.require_not_paused();

        let caller = self.blockchain().get_caller();
        let mut rewa_payment_amount = BigUint::zero();
        let mut output_payments = ManagedVec::new();

        for pair in token_nonce_pairs {
            let (token_id, token_nonce) = pair.into_tuple();
            let amount = self
                .claimable_amount(&caller, &token_id, token_nonce)
                .take();
            if amount == 0 {
                continue;
            }
            if token_id.is_rewa() {
                rewa_payment_amount = amount;
            } else {
                output_payments.push(DcdtTokenPayment::new(
                    token_id.unwrap_dcdt(),
                    token_nonce,
                    amount,
                ));
            }
        }

        if rewa_payment_amount > 0 {
            self.send()
                .direct_rewa(&claim_destination, &rewa_payment_amount);
        }
        if !output_payments.is_empty() {
            self.send()
                .direct_multi(&claim_destination, &output_payments);
        }

        (rewa_payment_amount, output_payments).into()
    }

    fn calculate_cut_amount(&self, total_amount: &BigUint, cut_percentage: &BigUint) -> BigUint {
        total_amount * cut_percentage / PERCENTAGE_TOTAL
    }

    fn calculate_winning_bid_split(
        &self,
        auction: &Auction<Self::Api>,
    ) -> BidSplitAmounts<Self::Api> {
        self.calculate_sale_split_values(
            &auction.current_bid,
            &auction.creator_royalties_percentage,
            &auction.marketplace_cut_percentage,
        )
    }

    fn calculate_accepted_offer_split(
        &self,
        offer: &Offer<Self::Api>,
        creator_royalties_percentage: &BigUint,
        marketplace_cut_percentage: &BigUint,
    ) -> BidSplitAmounts<Self::Api> {
        self.calculate_sale_split_values(
            &offer.payment.amount,
            creator_royalties_percentage,
            marketplace_cut_percentage,
        )
    }

    fn calculate_sale_split_values(
        &self,
        amount: &BigUint,
        creator_royalties_percentage: &BigUint,
        marketplace_cut_percentage: &BigUint,
    ) -> BidSplitAmounts<Self::Api> {
        let creator_royalties = self.calculate_cut_amount(amount, creator_royalties_percentage);
        let bid_cut_amount = self.calculate_cut_amount(amount, marketplace_cut_percentage);
        let mut seller_amount_to_send = amount.clone();
        seller_amount_to_send -= &creator_royalties;
        seller_amount_to_send -= &bid_cut_amount;

        BidSplitAmounts {
            creator: creator_royalties,
            marketplace: bid_cut_amount,
            seller: seller_amount_to_send,
        }
    }

    fn distribute_tokens_after_auction_end(
        &self,
        auction: &Auction<Self::Api>,
        opt_sft_amount: Option<&BigUint>,
    ) {
        let nft_type = &auction.auctioned_tokens.token_identifier;
        let nft_nonce = auction.auctioned_tokens.token_nonce;

        if !auction.current_winner.is_zero() {
            let nft_info = self.get_nft_info(nft_type, nft_nonce);
            let bid_split_amounts = self.calculate_winning_bid_split(auction);

            // send NFT to auction winner
            let nft_amount = BigUint::from(NFT_AMOUNT);
            let nft_amount_to_send = match auction.auction_type {
                AuctionType::Nft => &nft_amount,
                AuctionType::SftOnePerPayment => match opt_sft_amount {
                    Some(amt) => amt,
                    None => &nft_amount,
                },
                _ => &auction.auctioned_tokens.amount,
            };

            self.distribute_tokens_common(
                &RewaOrDcdtTokenIdentifier::dcdt(nft_type.clone()),
                nft_nonce,
                nft_amount_to_send,
                &auction.payment_token,
                auction.payment_nonce,
                &nft_info.creator,
                &auction.original_owner,
                &auction.current_winner,
                &bid_split_amounts,
            );
        } else {
            // return to original owner
            self.transfer_or_save_payment(
                &auction.original_owner,
                &RewaOrDcdtTokenIdentifier::dcdt(nft_type.clone()),
                nft_nonce,
                &auction.auctioned_tokens.amount,
            );
        }
    }

    fn distribute_tokens_after_offer_accept(
        &self,
        offer: &Offer<Self::Api>,
        seller: &ManagedAddress,
        marketplace_cut_percentage: &BigUint,
    ) {
        let nft_type = &offer.offer_token.token_identifier;
        let nft_nonce = offer.offer_token.token_nonce;
        let nft_info = self.get_nft_info(nft_type, nft_nonce);
        let bid_split_amounts = self.calculate_accepted_offer_split(
            offer,
            &nft_info.royalties,
            marketplace_cut_percentage,
        );

        self.distribute_tokens_common(
            &RewaOrDcdtTokenIdentifier::dcdt(nft_type.clone()),
            nft_nonce,
            &offer.offer_token.amount,
            &offer.payment.token_identifier,
            offer.payment.token_nonce,
            &nft_info.creator,
            seller,
            &offer.offer_owner,
            &bid_split_amounts,
        );
    }

    fn distribute_tokens_common(
        &self,
        nft_type: &RewaOrDcdtTokenIdentifier,
        nft_nonce: u64,
        nft_amount_to_send: &BigUint,
        payment_token_id: &RewaOrDcdtTokenIdentifier,
        payment_token_nonce: u64,
        creator: &ManagedAddress,
        original_owner: &ManagedAddress,
        new_owner: &ManagedAddress,
        bid_split_amounts: &BidSplitAmounts<Self::Api>,
    ) {
        // send part as cut for contract owner
        let sc_owner = self.blockchain().get_owner_address();
        self.transfer_or_save_payment(
            &sc_owner,
            payment_token_id,
            payment_token_nonce,
            &bid_split_amounts.marketplace,
        );

        // send part as royalties to creator
        self.transfer_or_save_payment(
            creator,
            payment_token_id,
            payment_token_nonce,
            &bid_split_amounts.creator,
        );

        // send rest of the bid to original owner
        self.transfer_or_save_payment(
            original_owner,
            payment_token_id,
            payment_token_nonce,
            &bid_split_amounts.seller,
        );

        // send NFT to new owner
        self.transfer_or_save_payment(new_owner, nft_type, nft_nonce, nft_amount_to_send);
    }

    fn transfer_or_save_payment(
        &self,
        to: &ManagedAddress,
        token_id: &RewaOrDcdtTokenIdentifier,
        nonce: u64,
        amount: &BigUint,
    ) {
        if amount == &0 {
            return;
        }

        if self.blockchain().is_smart_contract(to) {
            self.claimable_amount(to, token_id, nonce)
                .update(|amt| *amt += amount);
        } else {
            self.send().direct(to, token_id, nonce, amount);
        }
    }

    #[view(getClaimableAmount)]
    #[storage_mapper("claimableAmount")]
    fn claimable_amount(
        &self,
        address: &ManagedAddress,
        token_id: &RewaOrDcdtTokenIdentifier,
        token_nonce: u64,
    ) -> SingleValueMapper<BigUint>;
}
