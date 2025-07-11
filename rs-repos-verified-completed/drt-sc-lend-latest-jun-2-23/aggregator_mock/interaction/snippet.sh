PEM="~/pems/dev.pem"

ADDRESS=$(drtpy data load --key=address-testnet)
DEPLOY_TRANSACTION=$(drtpy data load --key=deployTransaction-testnet)

PROXY=https://devnet-gateway.numbat.com
CHAIN_ID=D

PROJECT="../../aggregator_mock"

FROM=0x
TO=0x
PRICE=0x

GAS_LIMIT=150000000

AGGREGATOR_ADDR=0x

deploy() {
    drtpy contract deploy --project=${PROJECT} --recall-nonce --pem=${PEM} \
    --gas-limit=${GAS_LIMIT} --outfile="deploy.json" \
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
    --pem=${PEM} --gas-limit=${GAS_LIMIT} --outfile="upgrade.json" \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send || return
}

# SC calls

set_price() {
    drtpy contract call ${ADDRESS} --recall-nonce --pem=${PEM} --gas-limit=${GAS_LIMIT} \
    --function="setLatestPriceFeed" --arguments ${FROM} ${TO} ${PRICE} \
    --proxy=${PROXY} --chain=${CHAIN_ID} --send
}
