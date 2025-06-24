#!/bin/sh

# builds all wasm targets

# cargo install dharitri-sc-meta 
cargo install --path ../../../my_works/rs-sdks/drt-rs-sdk-0.39.5/framework/meta

TARGET_DIR=$PWD/target

sc-meta all build --target-dir $TARGET_DIR --path ./contracts
