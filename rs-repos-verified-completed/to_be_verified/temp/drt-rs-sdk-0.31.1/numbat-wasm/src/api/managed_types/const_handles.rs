use super::Handle;

/// WARNING! With the current VM this still needs to be initialized before use.
pub const BIG_INT_CONST_ZERO: Handle = -10;

pub const CALL_VALUE_REWA: Handle = -11;
pub const CALL_VALUE_SINGLE_DCDT: Handle = -13;

pub const BIG_INT_TEMPORARY_1: Handle = -14;
pub const BIG_INT_TEMPORARY_2: Handle = -15;

/// WARNING! With the current VM this still needs to be initialized before use.
pub const MBUF_CONST_EMPTY: Handle = -20;
pub const CALL_VALUE_MULTI_DCDT: Handle = -21;
pub const CALL_VALUE_SINGLE_DCDT_TOKEN_NAME: Handle = -22;
pub const MBUF_TEMPORARY_1: Handle = -25;
pub const MBUF_TEMPORARY_2: Handle = -26;

pub const NEW_HANDLE_START_FROM: Handle = -100; // > -100 reserved for APIs
