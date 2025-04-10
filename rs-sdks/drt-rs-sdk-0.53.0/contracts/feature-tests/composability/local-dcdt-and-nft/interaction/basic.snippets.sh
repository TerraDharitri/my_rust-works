ALICE="/home/numbat/dharitri-sdk/testwallets/latest/users/alice.pem"
ADDRESS=$(drtpy data load --key=address-testnet)
ADDRESS_DECODED=$(drtpy wallet bech32 --decode ${ADDRESS})
DEPLOY_TRANSACTION=$(drtpy data load --key=deployTransaction-testnet)
PROXY=http://localhost:7950
CHAIN_ID=local-testnet

TOKEN_DISPLAY_NAME=0x46756e6769626c65546f6b656e # "FungibleToken"
TOKEN_TICKER=0x46554e47544f4b # "FUNGTOK"
TOKEN_IDENTIFIER=0x46554e47544f4b2d333331666134 # Manually update after issue

NFT_DISPLAY_NAME=0x4d794e6674 # "MyNft"
NFT_TICKER=0x4d594e4654 # "MYNFT"
NFT_IDENTIFIER=0x4d594e46542d363030356163 # Manually update after issue

SEMI_FUNGIBLE_DISPLAY_NAME=0x53656d6946756e6769626c65 # "SemiFungible"
SEMI_FUNGIBLE_TICKER=0x53454d4946554e47 # "SEMIFUNG"
SEMI_FUNGIBLE_IDENTIFIER=0x53454d4946554e472d306535626538 # Manually update after issue

deploy() {
    drtpy --verbose contract deploy --project=${PROJECT} --recall-nonce --pem=${ALICE} --gas-limit=100000000 --send --outfile="deploy-testnet.interaction.json" --proxy=${PROXY} --chain=${CHAIN_ID} || return

    TRANSACTION=$(drtpy data parse --file="deploy-testnet.interaction.json" --expression="data['emittedTransactionHash']")
    ADDRESS=$(drtpy data parse --file="deploy-testnet.interaction.json" --expression="data['contractAddress']")

    drtpy data store --key=address-testnet --value=${ADDRESS}
    drtpy data store --key=deployTransaction-testnet --value=${TRANSACTION}

    echo ""
    echo "Smart contract address: ${ADDRESS}"
}

upgrade() {
    drtpy --verbose contract upgrade ${ADDRESS} --project=${PROJECT} --recall-nonce --pem=${ALICE} --gas-limit=100000000 --send --outfile="upgrade.json" --proxy=${PROXY} --chain=${CHAIN_ID} || return
}

# SC calls

issueFungibleToken() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=80000000 --value=5000000000000000000 --function="issueFungibleToken" --arguments ${TOKEN_DISPLAY_NAME} ${TOKEN_TICKER} 0x03E8 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

localMint() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 --function="localMint" --arguments ${TOKEN_IDENTIFIER} 0x64 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

localBurn() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=10000000 --function="localBurn" --arguments ${TOKEN_IDENTIFIER} 0x64 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

# 0x01 = localmint roles, 0x02 = localburn role
setLocalRolesFungible() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="setLocalRoles" --arguments 0x${ADDRESS_DECODED} ${TOKEN_IDENTIFIER} 0x01 0x02 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

removeLocalRolesFungible() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="unsetLocalRoles" --arguments 0x${ADDRESS_DECODED} ${TOKEN_IDENTIFIER} 0x01 0x02 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

setLocalMintBurnRaw() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="setLocalMintBurnRaw" --arguments ${TOKEN_IDENTIFIER} --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

# SC calls - NFT

issueNft() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=100000000 --value=5000000000000000000 --function="nftIssue" --arguments ${NFT_DISPLAY_NAME} ${NFT_TICKER} --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

setNftLocalRoles() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="setLocalRoles" --arguments 0x${ADDRESS_DECODED} ${NFT_IDENTIFIER} 0x03 0x05 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

# Arguments: token identifier, amount (1), name (VeryUniqueToken), royalties (1000, i.e. 10%), hash (sha256(VeryUniqueToken)), color (1,2,3), uri (www.nfts.com)
createNft() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="nftCreate" --arguments ${NFT_IDENTIFIER} 0x01 0x56657279556e69717565546f6b656e 0x03E8 0x2184749b62df2bad1b6e20f6befc965e85b52fc3ec0b2ec8ff04c71ced91de7b 0x010203 0x7777772e6e6674732e636f6d --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

nftBurn() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="nftBurn" --arguments ${NFT_IDENTIFIER} 0x01 0x01 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

# SC calls - Semi-Fungible

issueSemiFungible() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=100000000 --value=5000000000000000000 --function="sftIssue" --arguments ${SEMI_FUNGIBLE_DISPLAY_NAME} ${SEMI_FUNGIBLE_TICKER} --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

setSemiFungibleLocalRoles() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="setLocalRoles" --arguments 0x${ADDRESS_DECODED} ${SEMI_FUNGIBLE_IDENTIFIER} 0x03 0x04 0x05 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

# Arguments: token identifier, amount (50), name (VeryUniqueToken), royalties (1000, i.e. 10%), hash (sha256(VeryUniqueToken)), color (1,2,3), uri (www.nfts.com)
createSemiFungible() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="nftCreate" --arguments ${SEMI_FUNGIBLE_IDENTIFIER} 0x32 0x56657279556e69717565546f6b656e 0x03E8 0x2184749b62df2bad1b6e20f6befc965e85b52fc3ec0b2ec8ff04c71ced91de7b 0x010203 0x7777772e6e6674732e636f6d --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

semiFungibleAddQuantity() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="nftAddQuantity" --arguments ${SEMI_FUNGIBLE_IDENTIFIER} 0x01 0x64 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

semiFungibleBurn() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=500000000 --function="nftBurn" --arguments ${SEMI_FUNGIBLE_IDENTIFIER} 0x01 0x32 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

# Queries

getFungibleDcdtBalance() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=50000000 --function="getFungibleDcdtBalance" --arguments ${TOKEN_IDENTIFIER} --send --proxy=${PROXY} --chain=${CHAIN_ID}
    #drtpy --verbose contract query ${ADDRESS} --function="getFungibleDcdtBalance" --arguments ${TOKEN_IDENTIFIER} --proxy=${PROXY}
}

getNftBalance() {
    # replace with query once it's fixed
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=50000000 --function="getNftBalance" --arguments ${NFT_IDENTIFIER} 0x01 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

getSemiFungibleBalance() {
    drtpy --verbose contract call ${ADDRESS} --recall-nonce --pem=${ALICE} --gas-limit=50000000 --function="getNftBalance" --arguments ${SEMI_FUNGIBLE_IDENTIFIER} 0x01 --send --proxy=${PROXY} --chain=${CHAIN_ID}
}

getLastIssuedToken() {
    drtpy --verbose contract query ${ADDRESS} --function="lastIssuedToken" --proxy=${PROXY}
}

getLastError() {
    drtpy --verbose contract query ${ADDRESS} --function="lastErrorMessage" --proxy=${PROXY}
}
