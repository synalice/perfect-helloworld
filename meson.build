# SPDX-FileCopyrightText: © 2025 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

project(
    'perfect-helloworld',
    'c',
    version: '0.1.0',
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

subdir('include')
subdir('src')

install_headers(headers, subdir: meson.project_name())

lib = library(
    meson.project_name(),
    sources: lib_sources,
    install: true,
    include_directories: inc,
)

executable(
    meson.project_name(),
    link_with: lib,
    sources: cli_sources,
    install: true,
    include_directories: inc,
)

if get_option('docs')
    doxygen = find_program('doxygen', required: true)

    doc_config = configuration_data()
    doc_config.set('PROJECT_NAME', meson.project_name())
    doc_config.set('builddir', meson.current_source_dir())

    doxyfile = configure_file(
        input: 'Doxyfile.in',
        output: 'Doxyfile',
        configuration: doc_config,
    )

    custom_target(
        'doxygen',
        input: [headers, doxyfile],
        output: ['html'],
        command: [doxygen, doxyfile],
        install_dir: get_option('datadir') / 'doc' / meson.project_name(),
        install: true,
        build_by_default: true,
    )
endif
