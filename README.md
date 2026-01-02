# perfect-helloworld

A reference-grade C helloworld project. Prints "Hello, World!" with maximal
engineering discipline!

## Features

- Meson build system;
- Development environment via Nix devShell;
- Pre-commit hooks:
  - `clang-format`
  - `clang-tidy`
  - `meson format`
  - `nix flake check`
  - `nix fmt`
  - [IWYU]
  - [cppcheck]
  - [REUSE]
- MIT license;
- GitHub Actions CI;
- Good C project structure;
- VS Code support;
- [Clangd VS Code extension] support;

## Getting Started

To setup your environment for developing this project run these commands:

1. Install [Nix] and [direnv].
1. Clone and cd into the repository.

    ```bash
    git clone https://github.com/synalice/perfect-helloworld
    cd perfect-helloworld
    ```

1. Enable direnv.

    ```bash
    direnv allow
    ```

1. Enter Nix `devShell` (installs the toolchain and dependencies).

    ```bash
    nix develop
    ```

1. Setup Meson `builddir/`.

    ```bash
    meson setup builddir/
    ```

1. Build the project.

    ```bash
    meson compile -C builddir/
    ```

You are good to go!

## License

This project is under the [MIT] license.

[Nix]: https://nixos.org/download
[MIT]: https://opensource.org/license/mit
[IWYU]: https://include-what-you-use.org/
[REUSE]: https://reuse.software/
[direnv]: https://direnv.net/#getting-started
[cppcheck]: https://en.wikipedia.org/wiki/Cppcheck
[Clangd VS Code extension]: https://marketplace.visualstudio.com/items?itemName=llvm-vs-code-extensions.vscode-clangd
