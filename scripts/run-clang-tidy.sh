#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

BUILD_DIR="$(pwd)/${1:-builddir}"

ninja -C $BUILD_DIR clang-tidy
