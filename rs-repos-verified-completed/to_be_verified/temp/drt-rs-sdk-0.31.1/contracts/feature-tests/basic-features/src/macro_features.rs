numbat_wasm::imports!();

/// Various macros provided by numbat-wasm.
#[numbat_wasm::module]
pub trait Macros {
    #[only_owner]
    #[endpoint]
    fn only_owner_endpoint(&self) {}

    #[view]
    fn require_equals(&self, a: u32, b: u32) {
        require!(a == b, "a must equal b");
    }

    #[view]
    fn sc_panic(&self) {
        sc_panic!("sc_panic test");
    }

    // TODO: add panic formatting here?
}
