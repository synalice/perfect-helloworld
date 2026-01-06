# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

pkgconfig = import('pkgconfig')

lib_sources = files('perfect-helloworld.c')

lib = library(
    meson.project_name(),
    sources: lib_sources,
    install: true,
    include_directories: inc,
    version: meson.project_version(),
)

pkgconfig.generate(
    lib,
    description: description,
    license: meson.project_license().get(0),
)
