# perfect-helloworld

A _(deliberately over-engineered)_ reference-grade C "Hello World" project.

This is what a modern, best practice-oriented C project might look like in 2026.
The project is aimed at developers looking for a opinionated and modern starting
point.

Feedback and constructive criticism are welcomed!

## Non-goals

- Being the smallest or simplest C "Hello World" example
- Avoiding modern tooling for portability

## Features

- Meson build system
- Prioritizes Clang instead of GCC
- Cross-compilation support
- Nix flake for dependency management
- MIT license
- GitHub Actions CI
- Standard project structure (`docs/`, `include/`, `src/`, `tests/`, `scripts/`)
- Uses `llvm-vs-code-extensions.vscode-clangd` instead of `ms-vscode.cpptools`
- Doxygen support
- Pkg-config (generates `.pc` file)
- Unit testing support via [Unity](https://www.throwtheswitch.org/unity) testing
  framework

### Pre-commit hooks

The following checks are enforced via [prek](https://github.com/j178/prek) (a
lightweight alternative to [pre-commit](https://pre-commit.com/)):

- `clang-format`
- `clang-tidy`
- `meson format`
- `nix flake check`
- `nix fmt`
- [IWYU](https://include-what-you-use.org/)
- [cppcheck](https://en.wikipedia.org/wiki/Cppcheck)
- [REUSE](https://reuse.software/)
- [jq](https://jqlang.org/) (for JSON formatting);

## Getting started

To set up your development environment, run the following commands:

1. Install [Nix](https://nixos.org/download).
1. Clone the repository and cd into the project directory.

    ```bash
    git clone https://github.com/synalice/perfect-helloworld
    cd perfect-helloworld
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

1. Run the executable.

    ```bash
    ./builddir/src/cli/perfect-helloworld
    ```

You are good to go!

### (Optional) Use direnv

1. Install [direnv](https://direnv.net/).
1. cd into the project directory.

    ```bash
    cd perfect-helloworld
    ```

1. Enable direnv.

    ```bash
    direnv allow
    ```

Now `nix develop` will run automatically when you cd into the project directory!

## Cross-compilation

To cross-compile the project, run this script:

```bash
./scripts/cross-compile.sh aarch64-multiplatform out
```

> [!WARNING]\
> Invoking it for the first time may take some time, because Nix will download
> or build some parts of the cross toolchain.

> [!TIP]\
> To cross-compile for different host architectures, replace
> `aarch64-multiplatform` with `riscv64` or something else. [Read more
> here](https://nix.dev/tutorials/cross-compilation.html#choosing-the-host-platform-with-nix).

> [!TIP]\
> To build the `dev` or `doc` derivation, replace `out` with `dev` or `doc`.

## Known issues

- No cross-compilation in CI, as downloading cross toolchains from Nix binary
  caches significantly increases CI time.

## License

This project is under the [MIT](https://opensource.org/license/mit) license.
