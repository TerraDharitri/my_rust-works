use dharitri_sc::proxy_imports::*;

pub struct SimpleLockEnergyProxy;

impl<Env, From, To, Gas> TxProxyTrait<Env, From, To, Gas> for SimpleLockEnergyProxy
where
    Env: TxEnv,
    From: TxFrom<Env>,
    To: TxTo<Env>,
    Gas: TxGas<Env>,
{
    type TxProxyMethods = SimpleLockEnergyProxyMethods<Env, From, To, Gas>;

    fn proxy_methods(self, tx: Tx<Env, From, To, (), Gas, (), ()>) -> Self::TxProxyMethods {
        SimpleLockEnergyProxyMethods { wrapped_tx: tx }
    }
}

pub struct SimpleLockEnergyProxyMethods<Env, From, To, Gas>
where
    Env: TxEnv,
    From: TxFrom<Env>,
    To: TxTo<Env>,
    Gas: TxGas<Env>,
{
    wrapped_tx: Tx<Env, From, To, (), Gas, (), ()>,
}

#[rustfmt::skip]
impl<Env, From, To, Gas> SimpleLockEnergyProxyMethods<Env, From, To, Gas>
where
    Env: TxEnv,
    Env::Api: VMApi,
    From: TxFrom<Env>,
    To: TxTo<Env>,
    Gas: TxGas<Env>,
{
    /// Locks a whitelisted token until `unlock_epoch` and receive meta DCDT LOCKED tokens 
    /// on a 1:1 ratio. Accepted input tokens: 
    /// - base asset token 
    /// - old factory token -> extends all periods to the provided option 
    /// - previously locked token -> extends period to the provided option 
    ///  
    /// Arguments: 
    /// - lock_epochs - Number of epochs for which the tokens are locked for. 
    ///     Caller may only choose from the available options, 
    ///     which can be seen by querying getLockOptions 
    /// - opt_destination - OPTIONAL: destination address for the LOCKED tokens. Default is caller. 
    ///  
    /// Output payment: LOCKED tokens 
    pub fn lock_tokens_endpoint<
        Arg0: ProxyArg<u64>,
        Arg1: ProxyArg<OptionalValue<ManagedAddress<Env::Api>>>,
    >(
        self,
        lock_epochs: Arg0,
        opt_destination: Arg1,
    ) -> TxProxyCall<Env, From, To, Gas, DcdtTokenPayment<Env::Api>> {
        self.wrapped_tx
            .raw_call("lockTokens")
            .argument(&lock_epochs)
            .argument(&opt_destination)
            .original_result()
    }

    pub fn lock_virtual<
        Arg0: ProxyArg<TokenIdentifier<Env::Api>>,
        Arg1: ProxyArg<BigUint<Env::Api>>,
        Arg2: ProxyArg<u64>,
        Arg3: ProxyArg<ManagedAddress<Env::Api>>,
        Arg4: ProxyArg<ManagedAddress<Env::Api>>,
    >(
        self,
        token_id: Arg0,
        amount: Arg1,
        lock_epochs: Arg2,
        dest_address: Arg3,
        energy_address: Arg4,
    ) -> TxProxyCall<Env, From, To, Gas, DcdtTokenPayment<Env::Api>> {
        self.wrapped_tx
            .raw_call("lockVirtual")
            .argument(&token_id)
            .argument(&amount)
            .argument(&lock_epochs)
            .argument(&dest_address)
            .argument(&energy_address)
            .original_result()
    }
}
