# numbat-codec

Lightweight binary serializer/deserializer, written especially for Numbat smart contracts.

Designed to:
- produce minimal WASM bytecode
- be fast
- avoid data copy as much as possible

Largely inspired by the Parity SCALE codec, but a completely different format and implementation.

For more info about the serialization format, see [the developer reference](https://docs.numbat.com/developers/developer-reference/numbat-serialization-format/).

# no-std

Being designed for numbat-wasm smart contracts, it needs to be able to run in a no-std environment.
