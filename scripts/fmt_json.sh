#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: © 2025 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

set -o errexit
set -o nounset
set -o pipefail

for file in "$@"; do
  out="$file.fmt"

  if jq . "$file" >"$out"; then
    mv "$out" "$file"
  else
    rm -f "$out"
    exit 1
  fi
done
