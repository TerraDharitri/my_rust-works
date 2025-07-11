PEM="~/pems/dev.pem"
ME=drt1n0p3zc0ccr9dptetatlqs950c4cs3lq9gvuwsqtv5ksh8c9qu00ssxgqum

ADDRESS=$(drtpy data load --key=address-testnet)
DEPLOY_TRANSACTION=$(drtpy data load --key=deployTransaction-testnet)

PROXY=https://devnet-gateway.numbat.com
CHAIN_ID=D

PROJECT="../../lending_pool"

# pool params
ASSET=0x544553542d333663616365
R_BASE=0
R_SLOPE1=40000000
R_SLOPE2=1000000000
U_OPTIMAL=800000000
RESERVE_FACTOR=100000000
LIQ_THRESOLD=700000000

LTV=500000000
LIQ_BONUS=40000000

LP_TEMPLATE_ADDRESS=0x00000000000000000500e232bab756e43f850ee3733e4b98aee764fa8420e3df

# after createPool
LIQ_POOL_ADDRESS=drt1qqqqqqqqqqqqqpgqn8xx3p50927tye5n49nzspvw7qqqayjfu00sh2m90h

PLAIN_TICKER=0x54455354

LEND_ID=0x4c544553542d373661653563
BORROW_ID=0x42544553542d666635326331

AGGREGATOR_ADDR=0x00000000000000000500042bf7bea5c489c19adf7f94ad0626bb4e40ece4e3df

ISSUE_COST=50000000000000000

GAS_LIMIT=250000000

deploy() {
    drtpy contract deploy --project=${PROJECT} --recall-nonce --pem=${PEM} \
    --gas-limit=${GAS_LIMIT} --outfile="deploy.json" --arguments ${LP_TEMPLATE_ADDRESS} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send || return

    TRANSACTION=$(drtpy data parse --file="deploy.json" --expression="data['emitted_tx']['hash']")
    ADDRESS=$(drtpy data parse --file="deploy.json" --expression="data['emitted_tx']['address']")

    drtpy data store --key=address-testnet --value=${ADDRESS}
    drtpy data store --key=deployTransaction-testnet --value=${TRANSACTION}

    echo ""
    echo "Smart contract address: ${ADDRESS}"
}

upgrade() {
    drtpy contract upgrade ${ADDRESS} --project=${PROJECT} --recall-nonce \
    --arguments ${LP_TEMPLATE_ADDRESS} --pem=${PEM} --gas-limit=${GAS_LIMIT} --outfile="upgrade.json" \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send || return
}

# SC calls

create_pool() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="createLiquidityPool" --arguments ${ASSET} ${R_BASE} ${R_SLOPE1} ${R_SLOPE2} ${U_OPTIMAL} ${RESERVE_FACTOR} ${LIQ_THRESOLD} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

upgrade_pool() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="upgradeLiquidityPool" --arguments ${ASSET} ${R_BASE} ${R_SLOPE1} ${R_SLOPE2} ${U_OPTIMAL} ${RESERVE_FACTOR} ${LIQ_THRESOLD} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

issue_lend() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="issueLendToken" --value=${ISSUE_COST} --arguments ${PLAIN_TICKER} ${ASSET} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

issue_borrow() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="issueBorrowToken" --value=${ISSUE_COST} --arguments ${PLAIN_TICKER} ${ASSET} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

set_lend_roles() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="setLendRoles" --arguments ${LEND_ID} 3 4 5 \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

set_borrow_roles() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="setBorrowRoles" --arguments ${BORROW_ID} 3 4 5 \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

set_ltv() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="setAssetLoanToValue" --arguments ${ASSET} ${LTV} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

set_liq_bonus() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="setAssetLiquidationBonus" --arguments ${ASSET} ${LIQ_BONUS} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

set_aggregator() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="setAggregator" --arguments ${ASSET} ${AGGREGATOR_ADDR} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}

DEPOSIT_AMOUNT=100000000000000000000000
DEPOSIT_ENDPOINT=0x6465706f736974

deposit() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="DCDTTransfer" --arguments ${ASSET} ${DEPOSIT_AMOUNT} ${DEPOSIT_ENDPOINT} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send 
}

BORROW_AMOUNT=200000000000000000000000
BORROW_NONCE=2
BORROW_ENDPOINT=0x626f72726f77

borrow() {
    ADDR_HEX=0x$(drtpy wallet bech32 --decode ${ADDRESS})

    drtpy contract call ${ME} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} --function="DCDTNFTTransfer" \
    --arguments ${LEND_ID} ${BORROW_NONCE} ${BORROW_AMOUNT} ${ADDR_HEX} ${BORROW_ENDPOINT} ${ASSET} ${ASSET} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send 
}

WITHDRAW_AMOUNT=50000
WITHDRAW_NONCE=1
WITHDRAW_ENDPOINT=0x7769746864726177

withdraw() {
    ADDR_HEX=0x$(drtpy wallet bech32 --decode ${ADDRESS})

    drtpy contract call ${ME} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} --function="DCDTNFTTransfer" \
    --arguments ${LEND_ID} ${WITHDRAW_NONCE} ${WITHDRAW_AMOUNT} ${ADDR_HEX} ${WITHDRAW_ENDPOINT} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send 
}

# Queries

get_pool_address() {
    drtpy contract query ${ADDRESS} --function="getPoolAddress" --arguments ${ASSET} --proxy=${PROXY}
}

get_pool_address_arg() {
    drtpy contract query ${ADDRESS} --function="getPoolAddress" --arguments $1 --proxy=${PROXY}
}

get_ltv() {
    drtpy contract query ${ADDRESS} --function="getAssetLoanToValue" --arguments ${ASSET} --proxy=${PROXY}
}

get_liq_bonus() {
    drtpy contract query ${ADDRESS} --function="getAssetLiquidationBonus" --arguments ${ASSET} --proxy=${PROXY}
}
