numbat_wasm::derive_imports!();

/// Copied from numbat-wasm serialization tests.
#[derive(NestedEncode, NestedDecode, TopEncode, TopDecode, TypeAbi)]
pub enum ExampleEnumSimple {
    /// Variant 0 doc comment.
    /// This will show up in the ABI.
    Variant0,

    Variant1,

    /// One line is enough. The one above doesn't have any.
    Variant2,
}
