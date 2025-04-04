use numbat_wasm::types::{SCResult, StaticSCError};
use numbat_wasm_debug::*;

use basic_features::macro_features::Macros;

#[test]
fn test_sc_error() {
    let _ = DebugApi::dummy();
    let bf = basic_features::contract_obj::<DebugApi>();
    let result = bf.return_sc_error();
    assert_eq!(
        SCResult::Err(StaticSCError::from(&b"return_sc_error"[..])),
        result
    );
}
