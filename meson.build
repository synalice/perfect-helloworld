# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
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
        'c_std=c23',
        'werror=true',
    ],
)

description = 'A reference-grade C helloworld project'
project_root = meson.current_source_dir()

add_project_arguments(
    '-pedantic',
    '-Werror=implicit',
    '-Werror=incompatible-pointer-types',
    '-Werror=int-conversion',
    '-Wshadow',
    '-Wconversion',
    '-Wsign-conversion',
    '-Wcast-align',
    '-Wformat',
    '-Wformat=2',
    '-Wformat-security',
    '-Wnull-dereference',
    '-Wstrict-prototypes',
    '-Wmissing-prototypes',
    '-Wmissing-include-dirs',
    '-Wold-style-definition',
    '-Wunreachable-code',
    '-Wno-unused-parameter',
    '-Wwrite-strings',
    '-Wredundant-decls',
    '-Wnested-externs',
    '-Wimplicit-fallthrough',
    '-fstack-clash-protection',
    '-fstack-protector-strong',
    '-fstrict-flex-arrays=3',
    ## Not enabled by default because FORTIFY_SOURCE may cause ASan to misbehave:
    ## (see https://github.com/google/sanitizers/wiki/AddressSanitizer#faq for more info)
    # '-U_FORTIFY_SOURCE',
    # '-D_FORTIFY_SOURCE=2',
    language: 'c',
)

subdir('include')
subdir('src')
subdir('docs')
subdir('tests')
