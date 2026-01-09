# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

{
  lib,
  stdenv,
  meson,
  ninja,
  doxygen,
  pkg-config,
  unity-test,
}:
stdenv.mkDerivation {
  pname = "perfect-helloworld";
  version = "0.1.0";
  src = ../.;

  mesonFlags = [
    (lib.strings.mesonEnable "docs" true)
  ];

  doCheck = true;

  outputs = [
    "out"
    "dev"
    "doc"
  ];

  nativeBuildInputs = [
    meson
    ninja
    doxygen
    pkg-config
  ];

  buildInputs = [
    unity-test
  ];

  meta = {
    homepage = "https://github.com/synalice/perfect-helloworld";
    license = [ lib.licenses.mit ];
    mainProgram = "perfect-helloworld";
  };
}
