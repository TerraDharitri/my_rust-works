// Code generated by the dharitri-sc proxy generator. DO NOT EDIT.

////////////////////////////////////////////////////
////////////////// AUTO-GENERATED //////////////////
////////////////////////////////////////////////////

#![allow(dead_code)]
#![allow(clippy::all)]

use dharitri_sc::proxy_imports::*;

pub struct AuctionMockProxy;

impl<Env, From, To, Gas> TxProxyTrait<Env, From, To, Gas> for AuctionMockProxy
where
    Env: TxEnv,
    From: TxFrom<Env>,
    To: TxTo<Env>,
    Gas: TxGas<Env>,
{
    type TxProxyMethods = AuctionMockProxyMethods<Env, From, To, Gas>;

    fn proxy_methods(self, tx: Tx<Env, From, To, (), Gas, (), ()>) -> Self::TxProxyMethods {
        AuctionMockProxyMethods { wrapped_tx: tx }
    }
}

pub struct AuctionMockProxyMethods<Env, From, To, Gas>
where
    Env: TxEnv,
    From: TxFrom<Env>,
    To: TxTo<Env>,
    Gas: TxGas<Env>,
{
    wrapped_tx: Tx<Env, From, To, (), Gas, (), ()>,
}

#[rustfmt::skip]
impl<Env, From, Gas> AuctionMockProxyMethods<Env, From, (), Gas>
where
    Env: TxEnv,
    Env::Api: VMApi,
    From: TxFrom<Env>,
    Gas: TxGas<Env>,
{
    pub fn init(
        self,
    ) -> TxTypedDeploy<Env, From, NotPayable, Gas, ()> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_deploy()
            .original_result()
    }
}

#[rustfmt::skip]
impl<Env, From, To, Gas> AuctionMockProxyMethods<Env, From, To, Gas>
where
    Env: TxEnv,
    Env::Api: VMApi,
    From: TxFrom<Env>,
    To: TxTo<Env>,
    Gas: TxGas<Env>,
{
    pub fn stake<
        Arg0: ProxyArg<usize>,
        Arg1: ProxyArg<MultiValueEncoded<Env::Api, MultiValue2<ManagedBuffer<Env::Api>, ManagedBuffer<Env::Api>>>>,
    >(
        self,
        num_nodes: Arg0,
        bls_keys_signatures: Arg1,
    ) -> TxTypedCall<Env, From, To, (), Gas, MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>> {
        self.wrapped_tx
            .raw_call("stake")
            .argument(&num_nodes)
            .argument(&bls_keys_signatures)
            .original_result()
    }

    pub fn unstake_endpoint<
        Arg0: ProxyArg<MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>>,
    >(
        self,
        bls_keys: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("unStake")
            .argument(&bls_keys)
            .original_result()
    }

    pub fn unstake_nodes_endpoint<
        Arg0: ProxyArg<MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>>,
    >(
        self,
        bls_keys: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("unStakeNodes")
            .argument(&bls_keys)
            .original_result()
    }

    pub fn unbond_endpoint<
        Arg0: ProxyArg<MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>>,
    >(
        self,
        bls_keys: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("unBond")
            .argument(&bls_keys)
            .original_result()
    }

    pub fn unbond_nodes_endpoint<
        Arg0: ProxyArg<MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>>,
    >(
        self,
        bls_keys: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, MultiValueEncoded<Env::Api, ManagedBuffer<Env::Api>>> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("unBondNodes")
            .argument(&bls_keys)
            .original_result()
    }

    pub fn unstake_tokens<
        Arg0: ProxyArg<BigUint<Env::Api>>,
    >(
        self,
        _amount: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, ()> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("unStakeTokens")
            .argument(&_amount)
            .original_result()
    }

    pub fn unbond_tokens<
        Arg0: ProxyArg<BigUint<Env::Api>>,
    >(
        self,
        amount: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, ()> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("unBondTokens")
            .argument(&amount)
            .original_result()
    }

    pub fn claim(
        self,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, ()> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("claim")
            .original_result()
    }

    pub fn unjail_endpoint<
        Arg0: ProxyArg<MultiValueManagedVec<Env::Api, node_storage::types::bls_key::BLSKey<Env::Api>>>,
    >(
        self,
        bls_keys: Arg0,
    ) -> TxTypedCall<Env, From, To, (), Gas, ()> {
        self.wrapped_tx
            .raw_call("unJail")
            .argument(&bls_keys)
            .original_result()
    }

    pub fn set_bls_deliberate_error<
        Arg0: ProxyArg<Box<[u8]>>,
        Arg1: ProxyArg<u8>,
    >(
        self,
        bls_key: Arg0,
        err_code: Arg1,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, ()> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("setBlsDeliberateError")
            .argument(&bls_key)
            .argument(&err_code)
            .original_result()
    }

    pub fn get_bls_deliberate_error<
        Arg0: ProxyArg<Box<[u8]>>,
    >(
        self,
        bls_key: Arg0,
    ) -> TxTypedCall<Env, From, To, NotPayable, Gas, u8> {
        self.wrapped_tx
            .payment(NotPayable)
            .raw_call("getBlsDeliberateError")
            .argument(&bls_key)
            .original_result()
    }
}
