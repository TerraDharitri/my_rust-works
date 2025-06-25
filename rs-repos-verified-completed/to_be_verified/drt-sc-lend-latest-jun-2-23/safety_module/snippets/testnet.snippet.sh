ALICE="~/pems/local.pem"
ALICE_ADDRESS=0x0139472eff6886771a982f3083da5d421f24c29181e63888228dc81ca60d69e1

BOB="~/pems/bob.pem"
BOB_ADDRESS=0x8049d639e5a6980d1cd2392abcce41029cda74a1563523a202f09641cc2618f8

BUSD_POOL="~/pems/carol.pem"
BUSD_POOL_ADDRESS=0xb2a11555ce521e4944e09ab17549d85b487dcd26c84b5017a39e31a3670889ba


ADDRESS=$(drtpy data load --key=address-testnet)
BECH32_ADDRESS=drt1spyavw0956vq68xj8y4tenjpq2wd5a9p2c6j8gsz7ztyrnpxrruqlqde3c

DEPLOY_TRANSACTION=""
ESTD_ISSUE_ADDRESS=drt1yvesqqqqqqqqqqqqqqqqqqqqqqqqyvesqqqqqqqqqqqqqqqzlllsd5j0s2

PROJECT="../../safety_module"

PROXY=https://api.numbat.com
CHAIN_ID=T

# issue an dcdt token first
DCDT_TICKER=0x57524557412d636634653439 # WREWA-cf4e49
DCDT_NAME=0x5752455741 # WREWA

DCDT_BUSD_TICKER=0x425553442d323665646634 #BUSD-26edf4
DCDT_BUSD_NAME=42555344 #BUSD

NFT_TICKER=0x4e46542d623935616131 #NFT-b95aa1        
NFT_NAME=0x4e4654 #NFT

# 0,03 = 3%
APY = 30000000



sendREWAToContract(){
    drtpy tx new --receiver ${ADDRESS} --value=1000000000000000000 --pem=${BOB} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=issue --outfile="issueWREWA.json" --arguments 0X5752455741 0X5752455741 100000 10 --send
}

issueWREWA(){
    drtpy contract call ${ESTD_ISSUE_ADDRESS} --value=5000000000000000000 --pem=${BOB} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=issue --outfile="issueWREWA.json" --arguments 0X5752455741 0X5752455741 100000 0x02 --send
}

issueBUSD(){
    drtpy contract call ${ESTD_ISSUE_ADDRESS} --value=5000000000000000000 --pem=${BUSD_POOL} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=issue --outfile="issueBUSD.json" --arguments 0X42555344 0X42555344 100000 0 --send
}

deploy(){
    drtpy contract deploy --project=${PROJECT} --pem=${ALICE} --arguments ${DCDT_TICKER} ${APY} --proxy=${PROXY} --outfile="deploy.json" --recall-nonce --send --gas-limit="600000000" --chain ${CHAIN_ID} --send || return

    TRANSACTION=$(drtpy data parse --file="deploy.json" --expression="data['emitted_tx']['hash']")
    ADDRESS=$(drtpy data parse --file="deploy.json" --expression="data['emitted_tx']['address']")

    drtpy data store --key=address-testnet --value=${ADDRESS}
    drtpy data store --key=deployTransaction-testnet --value=${TRANSACTION}

    echo ""
    echo "Smart contract address: ${ADDRESS}"

}

upgrade(){
    drtpy contract upgrade ${ADDRESS} --metadata-payable --project=${PROJECT} --pem=${ALICE} --arguments ${DCDT_TICKER} 30000000 --proxy=${PROXY} --outfile="upgrade.json" --recall-nonce --send --gas-limit="600000000" --chain ${CHAIN_ID}
    echo ""
    echo "Smart contract address: ${ADDRESS}"
}

addPool(){
    echo "Smart contract address: ${ADDRESS}"
    drtpy contract call ${ADDRESS} --value=0 --pem=${ALICE} --recall-nonce --gas-limit=100000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=addPool --outfile="addPool.json" --arguments ${DCDT_BUSD_TICKER} ${BUSD_POOL_ADDRESS} --send
}

removePool(){
    echo "Smart contract address: ${ADDRESS}"
    drtpy contract call ${ADDRESS} --value=0 --pem=${ALICE} --recall-nonce --gas-limit=100000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=removePool --outfile="removePool.json" --arguments ${DCDT_BUSD_TICKER} --send
}

fundFromPool(){
    drtpy contract call ${ADDRESS} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --pem=${BUSD_POOL} --chain=${CHAIN_ID} --function=DCDTTransfer --arguments ${DCDT_BUSD_TICKER} 50015 0x66756e6446726f6d506f6f6c --send
}

takeFunds(){
    drtpy contract call ${ADDRESS} --pem=${BUSD_POOL}  --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=takeFunds --arguments ${DCDT_BUSD_TICKER} 10010 --send
}

NFTIssue(){
    drtpy contract call ${ADDRESS} --function=nftIssue --pem=${ALICE} --value=5000000000000000000 --arguments 0x4e4654 0x4e4654 --proxy=${PROXY} --outfile="NFTIssue.json" --recall-nonce --send --gas-limit="600000000" --chain ${CHAIN_ID} --send || return
}

getNFTTokenInfo(){
    drtpy contract query ${ADDRESS} --proxy=${PROXY} --function=nftToken
}

getWEGLTokenInfo(){
    drtpy contract query ${ADDRESS} --proxy=${PROXY} --function=wrewa_token
}

addLocalRoles(){
    drtpy contract call ${ADDRESS} --pem=${ALICE} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=setLocalRolesNftToken --arguments 0x03 0x04 0x05 --send
}

fund(){
    drtpy contract call ${ADDRESS} --pem=${BOB} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=DCDTTransfer --arguments ${DCDT_TICKER} 100000 0x66756e64 --send
}

withdraw(){
    drtpy contract call ${BECH32_ADDRESS} --pem=${BOB} --recall-nonce --gas-limit=1000000000 --proxy=${PROXY} --chain=${CHAIN_ID} --function=DCDTNFTTransfer --arguments ${NFT_TICKER} 0x01 50000 0x000000000000000005004888d06daef6d4ce8a01d72812d08617b4b504a369e1 0x7769746864726177 --send
    echo ${ADDRESS}
    echo ${NFT_TICKER}
}

getLastError(){
    drtpy contract query ${ADDRESS} --proxy=${PROXY} --function=lastErrorMessage
}
