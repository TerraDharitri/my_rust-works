// The purpose of this test is to directly showcase how the various
// API traits are being used, without the aid of macros.
// All this code is of course always macro-generated.
//
// Since it is more difficult to debug macros directly,
// it is helpful to keep this test as a reference for macro development
// and maintenance.

use numbat_wasm::{
    contract_base::{ContractBase, ProxyObjBase},
    types::{BigInt, ManagedAddress},
};

use crate::module_1::VersionModule;

mod module_1 {
    use numbat_wasm::abi::EndpointMutabilityAbi;

    numbat_wasm::imports!();

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //////// CONTRACT TRAIT /////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    pub trait VersionModule: numbat_wasm::contract_base::ContractBase + Sized {
        fn version(&self) -> BigInt<Self::Api>;

        fn some_async(&self) -> AsyncCall<Self::Api>;

        fn callback(&self);
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //////// AUTO-IMPLEMENTED METHODS ///////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    pub trait AutoImpl: numbat_wasm::contract_base::ContractBase {}

    impl<C> VersionModule for C
    where
        C: AutoImpl,
    {
        fn version(&self) -> BigInt<Self::Api> {
            BigInt::from_i64(self.type_manager(), 100)
        }

        fn some_async(&self) -> AsyncCall<Self::Api> {
            panic!("wooo")
        }

        fn callback(&self) {}
    }

    pub trait EndpointWrappers: VersionModule + numbat_wasm::contract_base::ContractBase {
        #[inline]
        fn call_version(&self) {
            numbat_wasm::api::CallValueApi::check_not_payable(&self.raw_vm_api());
            let result = self.version();
            numbat_wasm::io::EndpointResult::finish(&result, self.raw_vm_api())
        }

        fn call_some_async(&self) {
            let result = self.some_async();
            numbat_wasm::io::EndpointResult::finish(&result, self.raw_vm_api())
        }

        fn call(&self, fn_name: &[u8]) -> bool {
            if match fn_name {
                b"callBack" => {
                    self.callback();
                    return true;
                },
                b"version" => {
                    self.call_version();
                    true
                },
                _other => false,
            } {
                return true;
            }
            false
        }
    }
    pub struct AbiProvider {}

    impl numbat_wasm::contract_base::ContractAbiProvider for AbiProvider {
        type Api = numbat_wasm::api::uncallable::UncallableApi;

        fn abi() -> numbat_wasm::abi::ContractAbi {
            let mut contract_abi = numbat_wasm :: abi :: ContractAbi { build_info : numbat_wasm :: abi :: BuildInfoAbi { contract_crate : numbat_wasm :: abi :: ContractCrateBuildAbi { name : "adder" , version : "0.0.0" , } , framework : numbat_wasm :: abi :: FrameworkBuildAbi :: create () , } , docs : & ["One of the simplest smart contracts possible," , "it holds a single variable in storage, which anyone can increment."] , name : "Adder" , constructor : None , endpoints : Vec :: new () , type_descriptions : < numbat_wasm :: abi :: TypeDescriptionContainerImpl as numbat_wasm :: abi :: TypeDescriptionContainer > :: new () , } ;
            let mut endpoint_abi = numbat_wasm::abi::EndpointAbi {
                docs: &[],
                name: "version",
                only_owner: false,
                mutability: EndpointMutabilityAbi::Mutable,
                payable_in_tokens: &[],
                inputs: Vec::new(),
                outputs: Vec::new(),
            };
            endpoint_abi.add_output::<BigInt<Self::Api>>(&[]);
            contract_abi.add_type_descriptions::<BigInt<Self::Api>>();
            contract_abi.endpoints.push(endpoint_abi);
            contract_abi
        }
    }

    pub trait ProxyTrait: numbat_wasm::contract_base::ProxyObjBase + Sized {
        fn version(
            self,
        ) -> ContractCall<Self::Api, <BigInt<Self::Api> as numbat_wasm::io::EndpointResult>::DecodeAs>
        {
            let (___api___, ___address___) = self.into_fields();
            let mut ___contract_call___ = numbat_wasm::types::new_contract_call(
                ___api___.clone(),
                ___address___,
                &b"version"[..],
                ManagedVec::new(___api___.clone()),
            );
            ___contract_call___
        }
    }
}

mod sample_adder {
    use numbat_wasm::abi::EndpointMutabilityAbi;

    numbat_wasm::imports!();

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //////// CONTRACT TRAIT /////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    pub trait Adder:
        super::module_1::VersionModule + numbat_wasm::contract_base::ContractBase + Sized
    {
        fn init(&self, initial_value: &BigInt<Self::Api>) {
            self.set_sum(initial_value);
        }
        fn add(&self, value: BigInt<Self::Api>) -> SCResult<()> {
            let mut sum = self.get_sum();
            sum.add_assign(value);
            self.set_sum(&sum);
            Ok(())
        }
        fn get_sum(&self) -> BigInt<Self::Api>;
        fn set_sum(&self, sum: &BigInt<Self::Api>);
        fn add_version(&self) -> SCResult<()> {
            self.add(self.version())
        }
        fn callback(&self);
        fn callbacks(&self) -> self::CallbackProxyObj<Self::Api>;
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //////// AUTO-IMPLEMENTED METHODS ///////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    pub trait AutoImpl: numbat_wasm::contract_base::ContractBase {}

    // impl<C> super::module_1::AutoImpl for C where C: AutoImpl {}

    impl<C> Adder for C
    where
        C: AutoImpl + super::module_1::AutoImpl,
    {
        fn get_sum(&self) -> BigInt<Self::Api> {
            let mut ___key___ =
                numbat_wasm::storage::StorageKey::<Self::Api>::new(self.raw_vm_api(), &b"sum"[..]);
            numbat_wasm::storage_get(self.raw_vm_api(), &___key___)
        }
        fn set_sum(&self, sum: &BigInt<Self::Api>) {
            let mut ___key___ =
                numbat_wasm::storage::StorageKey::<Self::Api>::new(self.raw_vm_api(), &b"sum"[..]);
            numbat_wasm::storage_set(self.raw_vm_api(), &___key___, &sum);
        }
        fn callback(&self) {}
        fn callbacks(&self) -> self::CallbackProxyObj<Self::Api> {
            <self::CallbackProxyObj::<Self::Api> as numbat_wasm::contract_base::CallbackProxyObjBase>::new_cb_proxy_obj(self.raw_vm_api())
        }
    }

    pub trait EndpointWrappers:
        Adder + numbat_wasm::contract_base::ContractBase + super::module_1::EndpointWrappers
    {
        #[inline]
        fn call_get_sum(&self) {
            numbat_wasm::api::CallValueApi::check_not_payable(&self.raw_vm_api());
            numbat_wasm::api::EndpointArgumentApi::check_num_arguments(&self.raw_vm_api(), 0i32);
            let result = self.get_sum();
            numbat_wasm::io::EndpointResult::finish(&result, self.raw_vm_api());
        }
        #[inline]
        fn call_init(&self) {
            numbat_wasm::api::CallValueApi::check_not_payable(&self.raw_vm_api());
            numbat_wasm::api::EndpointArgumentApi::check_num_arguments(&self.raw_vm_api(), 1i32);
            let initial_value = numbat_wasm::load_single_arg::<Self::Api, BigInt<Self::Api>>(
                self.raw_vm_api(),
                0i32,
                ArgId::from(&b"initial_value"[..]),
            );
            self.init(&initial_value);
        }
        #[inline]
        fn call_add(&self) {
            numbat_wasm::api::CallValueApi::check_not_payable(&self.raw_vm_api());
            numbat_wasm::api::EndpointArgumentApi::check_num_arguments(&self.raw_vm_api(), 1i32);
            let value = numbat_wasm::load_single_arg::<Self::Api, BigInt<Self::Api>>(
                self.raw_vm_api(),
                0i32,
                ArgId::from(&b"value"[..]),
            );
            let result = self.add(value);
            numbat_wasm::io::EndpointResult::finish(&result, self.raw_vm_api());
        }

        fn call(&self, fn_name: &[u8]) -> bool {
            if match fn_name {
                b"callBack" => {
                    Adder::callback(self);
                    return true;
                },
                [103u8, 101u8, 116u8, 83u8, 117u8, 109u8] => {
                    self.call_get_sum();
                    true
                },
                [105u8, 110u8, 105u8, 116u8] => {
                    self.call_init();
                    true
                },
                [97u8, 100u8, 100u8] => {
                    self.call_add();
                    true
                },
                _other => false,
            } {
                return true;
            }
            if super::module_1::EndpointWrappers::call(self, fn_name) {
                return true;
            }
            false
        }
    }

    pub trait ProxyTrait:
        numbat_wasm::contract_base::ProxyObjBase + super::module_1::ProxyTrait
    {
        fn get_sum(
            self,
        ) -> numbat_wasm::types::ContractCall<
            Self::Api,
            <BigInt<Self::Api> as numbat_wasm::io::EndpointResult>::DecodeAs,
        > {
            let (___api___, ___address___) = self.into_fields();
            let mut ___contract_call___ = numbat_wasm::types::new_contract_call(
                ___api___.clone(),
                ___address___,
                &b"get_sum"[..],
                ManagedVec::new(___api___.clone()),
            );
            ___contract_call___
        }
        fn add(
            self,
            amount: &BigInt<Self::Api>,
        ) -> ContractCall<Self::Api, <SCResult<()> as numbat_wasm::io::EndpointResult>::DecodeAs>
        {
            let (___api___, ___address___) = self.into_fields();
            let mut ___contract_call___ = numbat_wasm::types::new_contract_call(
                ___api___.clone(),
                ___address___,
                &b"add"[..],
                ManagedVec::new(___api___.clone()),
            );
            ___contract_call___.push_endpoint_arg(amount);
            ___contract_call___
        }
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //////// CONTRACT OBJECT ////////////////////////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    pub struct ContractObj<A>
    where
        A: numbat_wasm::api::VMApi + Clone + 'static,
    {
        api: A,
    }

    /////////////////////////////////////////////////////////////////////////////////////////////////
    //////// CONTRACT OBJECT as CONTRACT BASE ///////////////////////////////////////////////////////
    /////////////////////////////////////////////////////////////////////////////////////////////////
    impl<A> numbat_wasm::contract_base::ContractBase for ContractObj<A>
    where
        A: numbat_wasm::api::VMApi + Clone + 'static,
    {
        type Api = A;

        fn raw_vm_api(&self) -> Self::Api {
            self.api.clone()
        }
    }

    impl<A> super::module_1::AutoImpl for ContractObj<A> where
        A: numbat_wasm::api::VMApi + Clone + 'static
    {
    }

    impl<A> AutoImpl for ContractObj<A> where A: numbat_wasm::api::VMApi + Clone + 'static {}

    impl<A> super::module_1::EndpointWrappers for ContractObj<A> where
        A: numbat_wasm::api::VMApi + Clone + 'static
    {
    }

    impl<A> EndpointWrappers for ContractObj<A> where A: numbat_wasm::api::VMApi + Clone + 'static {}

    impl<A> numbat_wasm::contract_base::CallableContract<A> for ContractObj<A>
    where
        A: numbat_wasm::api::VMApi + Clone + 'static,
    {
        fn call(&self, fn_name: &[u8]) -> bool {
            EndpointWrappers::call(self, fn_name)
        }
        fn into_api(self: Box<Self>) -> A {
            self.api
        }
    }

    pub struct AbiProvider {}

    impl numbat_wasm::contract_base::ContractAbiProvider for AbiProvider {
        type Api = numbat_wasm::api::uncallable::UncallableApi;

        fn abi() -> numbat_wasm::abi::ContractAbi {
            let mut contract_abi = numbat_wasm :: abi :: ContractAbi { build_info : numbat_wasm :: abi :: BuildInfoAbi { contract_crate : numbat_wasm :: abi :: ContractCrateBuildAbi { name : "adder" , version : "0.0.0" , } , framework : numbat_wasm :: abi :: FrameworkBuildAbi :: create () , } , docs : & ["One of the simplest smart contracts possible," , "it holds a single variable in storage, which anyone can increment."] , name : "Adder" , constructor : None , endpoints : Vec :: new () , type_descriptions : < numbat_wasm :: abi :: TypeDescriptionContainerImpl as numbat_wasm :: abi :: TypeDescriptionContainer > :: new () , } ;
            let mut endpoint_abi = numbat_wasm::abi::EndpointAbi {
                docs: &[],
                name: "getSum",
                only_owner: false,
                mutability: EndpointMutabilityAbi::Readonly,
                payable_in_tokens: &[],
                inputs: Vec::new(),
                outputs: Vec::new(),
            };
            endpoint_abi.add_output::<BigInt<Self::Api>>(&[]);
            contract_abi.add_type_descriptions::<BigInt<Self::Api>>();
            contract_abi.endpoints.push(endpoint_abi);
            let mut endpoint_abi = numbat_wasm::abi::EndpointAbi {
                docs: &[],
                name: "init",
                only_owner: false,
                mutability: EndpointMutabilityAbi::Pure,
                payable_in_tokens: &[],
                inputs: Vec::new(),
                outputs: Vec::new(),
            };
            endpoint_abi.add_input::<&BigInt<Self::Api>>("initial_value");
            contract_abi.add_type_descriptions::<&BigInt<Self::Api>>();
            contract_abi.constructor = Some(endpoint_abi);
            let mut endpoint_abi = numbat_wasm::abi::EndpointAbi {
                docs: &["Add desired amount to the storage variable."],
                name: "add",
                only_owner: false,
                mutability: EndpointMutabilityAbi::Mutable,
                payable_in_tokens: &[],
                inputs: Vec::new(),
                outputs: Vec::new(),
            };
            endpoint_abi.add_input::<&BigInt<Self::Api>>("value");
            contract_abi.add_type_descriptions::<&BigInt<Self::Api>>();
            endpoint_abi.add_output::<SCResult<()>>(&[]);
            contract_abi.add_type_descriptions::<SCResult<()>>();
            contract_abi.endpoints.push(endpoint_abi);
            contract_abi.coalesce(
                <super::module_1::AbiProvider as numbat_wasm::contract_base::ContractAbiProvider>::abi(),
            );
            contract_abi
        }
    }

    pub fn contract_obj<A>(api: A) -> ContractObj<A>
    where
        A: numbat_wasm::api::VMApi + Clone + 'static,
    {
        ContractObj { api }
    }

    pub struct Proxy<A>
    where
        A: numbat_wasm::api::VMApi + 'static,
    {
        pub api: A,
        pub address: numbat_wasm::types::ManagedAddress<A>,
    }

    impl<A> numbat_wasm::contract_base::ProxyObjBase for Proxy<A>
    where
        A: numbat_wasm::api::VMApi + 'static,
    {
        type Api = A;

        fn new_proxy_obj(api: A) -> Self {
            let zero_address = ManagedAddress::zero(api.clone());
            Proxy {
                api,
                address: zero_address,
            }
        }

        fn contract(mut self, address: ManagedAddress<Self::Api>) -> Self {
            self.address = address;
            self
        }

        #[inline]
        fn into_fields(self) -> (Self::Api, ManagedAddress<Self::Api>) {
            (self.api, self.address)
        }
    }

    impl<A> super::module_1::ProxyTrait for Proxy<A> where A: numbat_wasm::api::VMApi {}

    impl<A> ProxyTrait for Proxy<A> where A: numbat_wasm::api::VMApi {}

    pub struct CallbackProxyObj<A>
    where
        A: numbat_wasm::api::VMApi + 'static,
    {
        pub api: A,
    }

    impl<A> numbat_wasm::contract_base::CallbackProxyObjBase for CallbackProxyObj<A>
    where
        A: numbat_wasm::api::VMApi + 'static,
    {
        type Api = A;

        fn new_cb_proxy_obj(api: A) -> Self {
            CallbackProxyObj { api }
        }
        fn cb_call_api(self) -> Self::Api {
            self.api.clone()
        }
    }

    pub trait CallbackProxy: numbat_wasm::contract_base::CallbackProxyObjBase + Sized {
        fn my_callback(self, caller: &Address) -> numbat_wasm::types::CallbackClosure<Self::Api> {
            let mut ___callback_call___ =
                numbat_wasm::types::new_callback_call(self.cb_call_api(), &b"my_callback"[..]);
            ___callback_call___.push_endpoint_arg(caller);
            ___callback_call___
        }
    }
    impl<A> self::CallbackProxy for CallbackProxyObj<A> where A: numbat_wasm::api::VMApi + 'static {}
}

#[test]
fn test_add() {
    use numbat_wasm_debug::DebugApi;
    use sample_adder::{Adder, EndpointWrappers, ProxyTrait};

    let tx_context = DebugApi::dummy();

    let adder = sample_adder::contract_obj(tx_context.clone());

    adder.init(&BigInt::from_i64(adder.type_manager(), 5));
    assert_eq!(BigInt::from_i64(adder.type_manager(), 5), adder.get_sum());

    let _ = adder.add(BigInt::from_i64(adder.type_manager(), 7));
    assert_eq!(BigInt::from_i64(adder.type_manager(), 12), adder.get_sum());

    let _ = adder.add(BigInt::from_i64(adder.type_manager(), -1));
    assert_eq!(BigInt::from_i64(adder.type_manager(), 11), adder.get_sum());

    assert_eq!(BigInt::from_i64(adder.type_manager(), 100), adder.version());

    let _ = adder.add_version();
    assert_eq!(BigInt::from_i64(adder.type_manager(), 111), adder.get_sum());

    assert!(!adder.call(b"invalid_endpoint"));

    assert!(adder.call(b"version"));

    let own_proxy = sample_adder::Proxy::new_proxy_obj(tx_context.clone())
        .contract(ManagedAddress::zero(tx_context));
    let _ = own_proxy.get_sum();

    let _ = numbat_wasm_debug::abi_json::contract_abi::<sample_adder::AbiProvider>();
}

fn world() -> numbat_wasm_debug::BlockchainMock {
    let mut blockchain = numbat_wasm_debug::BlockchainMock::new();
    blockchain.register_contract(
        "file:../contracts/examples/adder/output/adder.wasm",
        Box::new(|context| Box::new(sample_adder::contract_obj(context))),
    );
    blockchain
}

#[test]
fn test_denali() {
    numbat_wasm_debug::denali_rs(
        "../contracts/examples/adder/denali/adder.scen.json",
        world(),
    );
}
