# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

if get_option('tests').enabled()
    unity = dependency('unity', required: get_option('tests'))

    test(
        'test-perfect-helloworld',
        executable(
            'test-perfect-helloworld',
            sources: files('test-perfect-helloworld.c') + lib_sources,
            dependencies: unity,
            include_directories: inc,
        ),
    )
endif
