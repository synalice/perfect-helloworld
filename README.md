# perfect-helloworld

A reference-grade C helloworld project. Prints "Hello, World!" with maximal
engineering discipline!

## Contributing

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

1. Install pre-commit hook.

    ```bash
    cp hooks/pre-commit .git/hooks/
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
[direnv]: https://direnv.net/#getting-started
[MIT]: https://opensource.org/license/mit
