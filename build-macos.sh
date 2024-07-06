#! /usr/bin/env nix
#! nix shell nixpkgs/nixos-24.05#python311 nixpkgs/nixos-24.05#cmake nixpkgs/nixos-24.05#ninja nixpkgs/nixos-24.05#tree --command bash

set -euxo pipefail

path="$1"
kind="$2"

(
    set -euxo pipefail

    cd "$path/src/platform"
    cmake -S . -B build -G Ninja -D "CMAKE_BUILD_TYPE=$kind" -Wno-dev
    cmake --build build
    sudo cmake --install build
)

(
    set -euxo pipefail

    cd "$path"
    cmake -S . -B build -G Ninja -D "CMAKE_BUILD_TYPE=$kind" -Wno-dev
    cmake --build build
)

find . -name '*.dylib'
find . -name '*.a'
