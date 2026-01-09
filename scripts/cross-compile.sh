#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

set -o errexit
set -o pipefail
set -o nounset

usage() {
  cat >&2 <<EOF
Usage: $0 <arch> <out|dev|doc>

  arch     cross architecture (aarch64-multiplatform, riscv64, etc.)
  output   desired output (out, dev, doc)
EOF
  exit 1
}

(( $# == 2 )) || usage

nix build -I nixpkgs=flake:nixpkgs --impure --expr "
let
    pkgs = import <nixpkgs> {};
in
    (pkgs.pkgsCross.$1.callPackage ./nix/perfect-helloworld.nix {
      withTests = false;
      withDocs = false;
    }).$2
"
