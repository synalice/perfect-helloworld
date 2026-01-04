# SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
#
# SPDX-License-Identifier: MIT

if get_option('docs').enabled()
    doxygen = find_program('doxygen', required: true)

    doc_config = configuration_data()
    doc_config.set('PROJECT_NAME', meson.project_name())
    doc_config.set('builddir', project_root)
    doc_config.set('description', description)

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
