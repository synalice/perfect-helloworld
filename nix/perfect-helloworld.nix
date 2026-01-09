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
  withDocs ? true,
  withTests ? true,
}:
stdenv.mkDerivation {
  pname = "perfect-helloworld";
  version = "0.1.0";
  src = ../.;

  mesonFlags = [
    (lib.strings.mesonEnable "docs" withDocs)
    (lib.strings.mesonEnable "tests" withTests)
  ];

  doCheck = true;

  outputs = [
    "out"
    "dev"
  ]
  ++ lib.optional withDocs "doc";

  nativeBuildInputs = [
    meson
    ninja
    doxygen
    pkg-config
  ];

  buildInputs = [ ] ++ lib.optional withTests unity-test;

  meta = {
    homepage = "https://github.com/synalice/perfect-helloworld";
    license = [ lib.licenses.mit ];
    mainProgram = "perfect-helloworld";
  };
}
