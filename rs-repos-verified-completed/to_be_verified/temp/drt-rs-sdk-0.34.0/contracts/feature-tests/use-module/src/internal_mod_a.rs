numbat_wasm::imports!();

/// Example of a module that lies in the same crate.
/// It also includes another module, also from the same crate.
#[numbat_wasm::module]
pub trait InternalModuleA:
    super::internal_mod_b::InternalModuleB + super::internal_mod_init::InternalModuleInit
{
    #[view]
    fn call_mod_a(&self) {}

    #[external_view]
    fn external_view_mod_a(&self) {}
}
