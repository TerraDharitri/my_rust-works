ALICE="$HOME/pems/dev.pem"
ALICE_ADDRESS=0x9bc31161f8c0cad0af2beafe08168fc57108fc054338e8016ca5a173e0a0e3df

ADDRESS=$(drtpy data load --key=address-testnet)
DEPLOY_TRANSACTION=$(drtpy data load --key=deployTransaction-testnet)

PROXY=https://devnet-api.numbat.com
CHAIN_ID=D

PROJECT="../../liquidity_pool"

NFT_TICKER=0x57555344 # WUSD
NFT_TICKER_FULL=0x575553442d666239313333 # WUSD-fb9133
LEND_PREFIX=0x4c # L
BORROW_PREFIX=0x42 # B

ISSUE_COST=5000000000000000000

GAS_LIMIT=250000000

deploy() {
    drtpy contract deploy --project=${PROJECT} --recall-nonce --pem=${ALICE} --gas-limit=${GAS_LIMIT} --outfile="deploy.json" --arguments ${NFT_TICKER_FULL} --proxy=${PROXY} --chain=${CHAIN_ID} --send || return

    TRANSACTION=$(drtpy data parse --file="deploy.json" --expression="data['emitted_tx']['hash']")
    ADDRESS=$(drtpy data parse --file="deploy.json" --expression="data['emitted_tx']['address']")

    drtpy data store --key=address-testnet --value=${ADDRESS}
    drtpy data store --key=deployTransaction-testnet --value=${TRANSACTION}

    echo ""
    echo "Smart contract address: ${ADDRESS}"
}

upgrade() {
    drtpy contract upgrade ${ADDRESS} --project=${PROJECT} --recall-nonce --pem=${ALICE} --gas-limit=${GAS_LIMIT} --outfile="upgrade.json" --arguments ${NFT_TICKER_FULL} --proxy=${PROXY} --chain=${CHAIN_ID} --send || return
}

# SC calls

issue_lend() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=${GAS_LIMIT} --function="issue" --arguments ${NFT_TICKER} ${NFT_TICKER_FULL} ${LEND_PREFIX} --value=${ISSUE_COST} --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

issue_borrow() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=${GAS_LIMIT} --function="issue" --arguments ${NFT_TICKER} ${NFT_TICKER_FULL} ${BORROW_PREFIX} --value=${ISSUE_COST} --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

# Queries

getPoolAsset() {
    drtpy contract query ${ADDRESS} --function="poolAsset" --proxy=${PROXY}
}

getLendToken() {
    drtpy contract query ${ADDRESS} --function="lendToken" --proxy=${PROXY}
}

getBorrowToken() {
    drtpy contract query ${ADDRESS} --function="borrowToken" --proxy=${PROXY}
}