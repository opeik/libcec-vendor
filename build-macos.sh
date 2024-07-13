#! /usr/bin/env nix
#! nix shell nixpkgs/nixos-24.05#cmake nixpkgs/nixos-24.05#ninja --command bash

set -euxo pipefail

path="$1"
kind="$2"

cd "$path/src/platform"
cmake -S . -B build -G Ninja -D "CMAKE_BUILD_TYPE=$kind" -D BUILD_STATIC_LIB=True -Wno-dev
cmake --build build

find . -name '*.dylib'
find . -name '*.a'
