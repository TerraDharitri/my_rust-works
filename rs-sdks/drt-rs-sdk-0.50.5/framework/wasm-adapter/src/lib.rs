#![no_std]
#![allow(unknown_lints)]

// Allows us to use alloc::vec::Vec;
// TODO: get rid of the legacy API and also of this.
extern crate alloc;

pub use dharitri_sc;

pub mod api;
pub mod error_hook;
pub mod panic;
pub mod wasm_alloc;
mod wasm_macros;
