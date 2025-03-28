#[derive(Clone, Debug)]
pub enum EndpointLocationMetadata {
    MainContract,
    ViewContract,
}

impl EndpointLocationMetadata {
    pub fn to_tokens(&self) -> proc_macro2::TokenStream {
        match self {
            EndpointLocationMetadata::MainContract => {
                quote! { numbat_wasm::abi::EndpointLocationAbi::MainContract }
            },
            EndpointLocationMetadata::ViewContract => {
                quote! { numbat_wasm::abi::EndpointLocationAbi::ViewContract }
            },
        }
    }
}
