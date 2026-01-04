# perfect-helloworld

A reference-grade C helloworld project.

Prints "Hello, World!" with maximal engineering discipline!

## Features

- Meson build system;
- Development environment via Nix devShell;
- MIT license;
- GitHub Actions CI;
- Standard project structure (`docs/`, `include/`, `src/`, `tests/`, `scripts/`);
- VS Code support;
- `llvm-vs-code-extensions.vscode-clangd` instead of `ms-vscode.cpptools`;
- Doxygen support;
- Pkg-config support (generates `.pc` file);
- Unit tests via [Unity] testing framework;
- Pre-commit hooks:
  - `clang-format`
  - `clang-tidy`
  - `meson format`
  - `nix flake check`
  - `nix fmt`
  - [IWYU]
  - [cppcheck]
  - [REUSE]
  - Formatting JSON files with [jq];

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

## Cross-compilation

To cross-compile the project, run this script:

```bash
./scripts/cross-compile.sh aarch64-multiplatform out
```

Invoking it for the first time make take some time, because Nix will download or
build some parts of the cross toolchain.

> [!NOTE]\
> To cross-compile for different host architectures replace
> `aarch64-multiplatform` with `riscv64` or something else. [Read more
> here](https://nix.dev/tutorials/cross-compilation.html#choosing-the-host-platform-with-nix).

> [!NOTE]\
> To build dev or doc derivation (package) replace `out` with `dev` or `doc`.

## License

This project is under the [MIT] license.

[jq]: https://jqlang.org/
[Nix]: https://nixos.org/download
[MIT]: https://opensource.org/license/mit
[IWYU]: https://include-what-you-use.org/
[Unity]: https://www.throwtheswitch.org/unity
[REUSE]: https://reuse.software/
[direnv]: https://direnv.net/#getting-started
[cppcheck]: https://en.wikipedia.org/wiki/Cppcheck
