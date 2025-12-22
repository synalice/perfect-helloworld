#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

BUILD_DIR="$(pwd)/${1:-builddir}"

iwyu_tool.py -p $BUILD_DIR -o clang -- -Xiwyu --error=1
