#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: © 2025 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

set -o errexit
set -o nounset
set -o pipefail

for file in "$@"; do
  jq . "$file" | sponge "$file"
done
