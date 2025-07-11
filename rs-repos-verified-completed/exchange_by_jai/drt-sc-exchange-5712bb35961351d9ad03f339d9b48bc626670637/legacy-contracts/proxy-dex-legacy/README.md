# DEX Proxy Smart Contract

This document presents how one can deploy and configure a DEX Proxy Contract.
The bigger picture about what a DEX Proxy Contract can do can be found in the Repository's Root Readme.

## Deployment

The DEX Proxy contract can be deployed using `drtpy` and using the interraction snippets.

The init parameters are:

- asset_token_id. The TokenId of the asset that a locked asset represents. In case of Durian Exchange it will be MOA.

- locked_asset_token_id. The TokenId of the locked asset represents. In case of Durian Exchange it will be Locked MOA.

## Configuration workflow

1. In order to complete the setup of the dex proxy contracts, Wrapped LP Token and Wrapped Farm token must be issued via `issueSftProxyPair` and `issueSftProxyFarm`. After this, setLocalRoles has to be called once for each of the two tokens, using for address the Proxy Address itself.

2. In order to add a pair to intermediate, meaning a pair that is eligible to function with MOA, the admin should use `addPairToIntermediate` and `removeIntermediatedPair`.

3. In order to add a farm to intermediate, meaning a farm that is eligible to function with MOA or with Wrapped LP Tokens, the admin should use `addFarmToIntermediate` and `removeIntermediatedFarm`.

4. In order for the Setup to be complete, LocalMint + LocalBurn roles for MOA and NftBurn role for Locked MOA should be granted to the Proxy Contract.
