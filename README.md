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

## Building from source

```bash
git clone https://github.com/synalice/perfect-helloworld
cd perfect-helloworld
meson setup builddir/
meson compile -C builddir/
meson install -C builddir/
```

## Building with Nix

```bash
git clone https://github.com/synalice/perfect-helloworld
cd perfect-helloworld
nix build .#default.out
nix build .#default.dev
nix build .#default.doc
```

## Using Nix `devShell`

Nix can automatically install all dependencies, toolchain and setup the whole
development environment. To do that run

```bash
nix develop
```

## Cross-compilation

To cross-compile the project, run this script

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

## AddressSanitizer aka ASan aka Sanitizers

To build the project with AddressSanitizer configure the project like this

```bash
meson setup --reconfigure -Db_sanitize=address,undefined,leak -Db_lundef=false builddir/
```

> [!NOTE]\
> Without `-Db_lundef=false` Meson complains with the following warning message:
>
> ```text
> WARNING: Trying to use ['address', 'undefined', 'leak'] sanitizer on Clang with b_lundef.
> This will probably not work.
> Try setting b_lundef to false instead.
> ```

## License

This project is under the [MIT](https://opensource.org/license/mit) license.
