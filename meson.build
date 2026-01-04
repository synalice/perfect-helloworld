# SPDX-FileCopyrightText: © 2025 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

project(
    'perfect-helloworld',
    'c',
    version: '1.0.0',
    license: 'MIT',
    license_files: ['LICENSE'],
    meson_version: '>=1.9.1',
    default_options: [
        'warning_level=3',
        'buildtype=debugoptimized',
        'c_std=c17',
        'werror=true',
    ],
)

description = 'A reference-grade C helloworld project'

pkgconfig = import('pkgconfig')

project_root = meson.current_source_dir()

add_project_arguments(
    '-pedantic',
    '-Wshadow',
    '-Wconversion',
    '-Wsign-conversion',
    '-Wcast-align',
    '-Wformat=2',
    '-Wnull-dereference',
    '-Wstrict-prototypes',
    '-Wmissing-prototypes',
    '-Wold-style-definition',
    '-Wunreachable-code',
    '-Wnull-dereference',
    '-Wno-unused-parameter',
    '-Wwrite-strings',
    '-Wredundant-decls',
    '-Wnested-externs',
    '-Wmissing-include-dirs',
    language: 'c',
)

unity = dependency('unity', required: get_option('tests'))

subdir('include')
subdir('src')
subdir('docs')

install_headers(headers, subdir: meson.project_name())

lib = library(
    meson.project_name(),
    sources: lib_sources,
    install: true,
    include_directories: inc,
    version: meson.project_version(),
)

if get_option('tests').enabled()
    subdir('tests')
endif

pkgconfig.generate(
    lib,
    description: description,
    license: meson.project_license().get(0),
)

executable(
    meson.project_name(),
    link_with: lib,
    sources: cli_sources,
    install: true,
    include_directories: inc,
)
