# Guide: Compiling C to WebAssembly for Blockchain Smart Contracts

## Introduction

This document outlines the process of compiling C source files into WebAssembly (WASM) modules for blockchain smart contracts in the go-chain-vm environment. WebAssembly is a binary instruction format designed as a portable compilation target for programming languages, enabling deployment on the web and other environments.

## Prerequisites

- Clang compiler (version 14 or higher recommended)
- WASM linker (`wasm-ld`)
- Header files for the blockchain environment (`drtvm` headers)
- Source C files for your smart contracts

## Compilation Process

The compilation of C files to WebAssembly for blockchain smart contracts follows these steps:

1. Prepare the C source file with appropriate imports
2. Compile using Clang with specific WebAssembly target flags
3. Allow undefined symbols that will be provided by the blockchain VM at runtime

### Command Structure

The basic command structure for compiling C to WebAssembly is:

```bash
clang --target=wasm32 -nostdlib -I<path-to-headers> -Wl,--no-entry -Wl,--export-all -Wl,--allow-undefined -o <output-file>.wasm <input-file>.c
```

### Key Flags Explained

- `--target=wasm32`: Specifies WebAssembly 32-bit as the compilation target
- `-nostdlib`: Prevents linking with standard C libraries, which aren't needed for blockchain contracts
- `-I<path-to-headers>`: Specifies the path to header files (e.g., `-I../drtvm`)
- `-Wl,--no-entry`: Tells the linker not to expect a main entry point function
- `-Wl,--export-all`: Exports all functions to make them accessible to the blockchain VM
- `-Wl,--allow-undefined`: Permits undefined symbols, as they'll be provided by the VM at runtime
- `-o <output-file>.wasm`: Specifies the output WebAssembly file name

## Example

For a contract named `example-contract.c` located in `/path/to/contracts/example-contract/`, the compilation command would be:

```bash
cd /path/to/contracts/example-contract/
clang --target=wasm32 -nostdlib -I../drtvm -Wl,--no-entry -Wl,--export-all -Wl,--allow-undefined -o example-contract.wasm example-contract.c
```

## Common Issues and Solutions

### Undefined Symbols

When compiling, you might encounter errors about undefined symbols such as:

```
wasm-ld: error: undefined symbol: storageStore
wasm-ld: error: undefined symbol: bigIntNew
```

These symbols represent blockchain-specific functions that are declared in the header files but implemented by the blockchain VM at runtime. To resolve this, use the `-Wl,--allow-undefined` flag.

### Missing Header Files

If the compiler can't find header files, ensure the include path is correct:

```bash
# If headers are in a directory named "drtvm" one level up
clang --target=wasm32 -nostdlib -I../drtvm ...
```

### Directory Structure Issues

Ensure your directory structure is consistent. A typical structure might be:

```
/go-chain-vm
  /test
    /contracts
      /contract1
        contract1.c
        contract1.wasm (output)
      /contract2
        contract2.c
        contract2.wasm (output)
    /drtvm
      context.h
      test_utils.h
      (other headers...)
```

## Automation with Shell Scripts

For projects with multiple contracts, automation via shell scripts is recommended:

```bash
#!/bin/bash

# Save current directory
working=$(pwd)

# Define contract directories
contracts=(
    "$working/test/contracts/contract1"
    "$working/test/contracts/contract2"
    # Add more contracts as needed
)

# Loop through each contract
for contract in "${contracts[@]}"; do
    # Extract folder name from path
    folder_name=$(basename "$contract")
    
    # Change to the contract directory
    cd "$contract"
    echo "Compiling in $(pwd)"
    
    # Create output directory if it doesn't exist
    mkdir -p output
    
    # Compile the contract
    clang --target=wasm32 -nostdlib -I../drtvm -Wl,--no-entry -Wl,--export-all -Wl,--allow-undefined -o output/"$folder_name".wasm "$folder_name".c
    
    # Check compilation result
    if [ $? -eq 0 ]; then
        echo "Successfully compiled $folder_name"
    else
        echo "Failed to compile $folder_name"
    fi
    
    # Return to the original directory
    cd "$working"
done
```

## Best Practices

1. **Consistent Directory Structure**: Maintain a consistent directory structure for contracts and headers
2. **Error Handling**: Implement error checking in build scripts
3. **Version Control**: Keep track of both source files and compiled WASM files
4. **Documentation**: Document any special compilation requirements for specific contracts

## Conclusion

By following this guide, you should be able to successfully compile C source files into WebAssembly modules for blockchain smart contracts in the go-chain-vm environment. The key to successful compilation is using the correct flags and understanding that blockchain-specific functions are provided by the VM at runtime rather than being linked during compilation.
