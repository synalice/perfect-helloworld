#!/usr/bin/env bash
#
# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

set -o errexit
set -o pipefail

echoerr() { printf "$(tput bold)$(tput setaf 1)ERROR:$(tput sgr0) %s\n" "$*" >&2; }

if [[ $# -eq 0 ]]; then
    echoerr 'Please provide cross architecture (`aarch64-multiplatform` or `riscv64`) and desired output (`out`, `dev` or `doc`).'
    exit 1
elif [[ $# -eq 1 ]]; then
    echoerr 'Please specify desired output (`out`, `dev` or `doc`).'
    exit 1
elif [[ $# -gt 2 ]]; then
    echoerr "More than two arguments provided."
    exit 1
fi

set -o nounset

nix build -I nixpkgs=flake:nixpkgs --impure --expr "
let
    pkgs = import <nixpkgs> {};
in
    (pkgs.pkgsCross.$1.callPackage ./nix/perfect-helloworld.nix {}).$2
"
