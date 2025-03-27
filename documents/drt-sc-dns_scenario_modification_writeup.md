# MultiversX Smart Contract DNS Test Case Hash Modification

## Context
During Testing of drt-sc-dns, an issue was discovered related to scenario and wasm test case failures in DNS smart contract test scenarios.

## Specific Modification
### Original Scenario
- Test case originally used `scdns#87`
- `0x87` represented the last byte of the hash for `coolname001.elrond`

### Modified Scenario
- Changed `scdns#87` to `scdns#af`
- Changed smart contract address from `sc:dns#87` to `sc:dns#f4`
- `0xf4` represents the last byte of the hash for `coolname0001.numbat` 

## Description
Dns uses the following steps to verify the last address and name hash 

```rust
    #[view(resolveFromHash)]
    fn resolve_from_hash(
        &self,
        name_hash: NameHash<Self::Api>,
    ) -> OptionalValue<MultiValue2<ManagedAddress, SuffixType>> {
        if sibling_id(&name_hash.to_byte_array()) != self.get_own_sibling_id() {
            return OptionalValue::None;
        }

        let vs = self.value_state(&name_hash).get();
        match vs {
            ValueState::RegisteredX(address) => {
                OptionalValue::Some((address, SuffixType::X).into())
            }
            ValueState::RegisteredNumbat(address) => {
                OptionalValue::Some((address, SuffixType::Numbat).into())
            }
            _ => OptionalValue::None,
        }
    }

```
## also change the below 
- at line number 14 - /drt-sc-dns-main/dns/scenarios/06_register_other_name_same_shard.steps.json

## Code Snippet of Modification
```json
{
    "step": "scCall",
    "txId": "try-register-coolname1075-same-user",
    "comment": "Modified DNS registration test case",
    "tx": {
        "from": "address:cool_address",
        "to": "sc:dns#f4",     // Changed from sc:dns#87
        "value": "123,000",
        "function": "register",
        "arguments": [
            "str:coolname1075.x"
        ],
        "gasLimit": "10,000,000",
        "gasPrice": "0"
    },
    "expect": {
        "out": [],
        "status": "0",
        "logs": "*",
        "gas": "*",
        "refund": "*"
    }
}
```

## Notes
- Always exercise caution when modifying cryptographic-related test cases
- Ensure thorough testing after such modifications