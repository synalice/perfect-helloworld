#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

printf "\n=== Checking code formatting ===\n\n"
./scripts/format-code.sh

printf "\n=== Checking meson.build formatting ===\n\n"
./scripts/format-meson.sh

printf "\n=== Checking flake.nix formatting ===\n\n"
./scripts/check-nix-flake.sh

printf "\n=== Running IWYU ===\n\n"
./scripts/run-iwyu.sh

printf "\n=== Running clang-tidy ===\n\n"
./scripts/run-clang-tidy.sh

printf "\n=== Running cppcheck ===\n\n"
./scripts/run-cppcheck.sh

printf "\n=== Running scan-build ===\n\n"
./scripts/run-scan-build.sh

printf "\n\nYour code is awesome!\n\n"
