numbat_wasm::imports!();

/// Example of a module that lies in the same crate.
#[numbat_wasm::module]
pub trait InternalModuleB {
    #[view]
    fn call_mod_b(&self) {}

    #[external_view]
    fn external_view_mod_b(&self) {}

    #[event("eventInModule")]
    fn event_in_module(&self, #[indexed] arg: u32);
}
