#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

BUILD_DIR="$(pwd)/${1:-builddir}"

cppcheck \
    --enable=all \
    --safety \
    --language=c \
    --platform=unspecified \
    --std=c11 \
    --error-exitcode=1 \
    --suppress=missingIncludeSystem \
    --suppress=unmatchedSuppression \
    --suppress=checkersReport \
    --project="$BUILD_DIR/compile_commands.json"
