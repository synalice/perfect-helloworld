#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

# Detect if running in CI (common convention)
IS_CI=${CI:-false}

# Collect all C meson.build files
readarray -d '' files < <(find . -name "meson.build" -type f -print0)

if [ "$IS_CI" = "true" ]; then
    if ! meson fmt --check-only "${files[@]}"; then
        echo "Meson files were not formatted!"
        exit 1
    fi
else
    meson fmt -i "${files[@]}"
fi
