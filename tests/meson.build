# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

if get_option('tests').enabled()
    unity = dependency('unity', required: get_option('tests'))

    test(
        'test-perfect-helloworld-print-hello-ok',
        executable(
            'test-perfect-helloworld-print-hello-ok',
            sources: files('test-perfect-helloworld-print-hello-ok.c'),
            link_with: lib,
            dependencies: unity,
            include_directories: inc,
        ),
    )

    test(
        'test-perfect-helloworld-print-hello-err',
        executable(
            'test-perfect-helloworld-print-hello-err',
            sources: files('test-perfect-helloworld-print-hello-err.c'),
            link_with: lib,
            dependencies: unity,
            include_directories: inc,
        ),
    )
endif
