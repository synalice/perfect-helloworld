#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Detect if running in CI (common convention)
IS_CI=${CI:-false}

# Collect all C source/header files
readarray -d '' files < <(find src \( -name '*.c' -o -name '*.h' \) -type f -print0)

if [ "$IS_CI" = "true" ]; then
    clang-format --dry-run --Werror -- "${files[@]}"
else
    clang-format -i -- "${files[@]}"
fi

