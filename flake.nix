# SPDX-FileCopyrightText: © 2025 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

{
  description = "Development environment for the project";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-25.11";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        formatter = pkgs.nixfmt-rfc-style;

        packages.default = pkgs.clangStdenv.mkDerivation {
          pname = "perfect-helloworld";
          version = "0.1.0";
          src = ./.;

          nativeBuildInputs = [
            pkgs.meson
            pkgs.ninja
          ];
        };

        devShells.default =
          pkgs.mkShell.override
            {
              stdenv = pkgs.clangStdenv;
            }
            {
              inputsFrom = [ self.packages.${system}.default ];

              packages = [
                pkgs.bash
                pkgs.pkg-config
                pkgs.mesonlsp
                pkgs.cppcheck
                pkgs.clang-analyzer
                pkgs.clang-tools
                pkgs.clang
                pkgs.python3
                pkgs.include-what-you-use
                pkgs.prek
                pkgs.reuse
                pkgs.tree
              ];

              shellHook = ''
                prek install
              '';
            };
      }
    );
}
