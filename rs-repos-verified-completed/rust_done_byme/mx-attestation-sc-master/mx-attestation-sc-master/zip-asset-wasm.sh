#!/bin/sh

## Creates a zip files with all the .wasm and .abi.json outputs from examples.
## Used in generating an output artefact for each numbat-wasm release.

ZIP_OUTPUT="attestation-wasm.zip"

# start fresh
rm -f $ZIP_OUTPUT

rm -rf /output
(set -x; drtpy --verbose contract build .)

# add to zip
zip -ur --junk-paths $ZIP_OUTPUT ./output
