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

executable(
    meson.project_name(),
    sources: sources,
    install: true,
    include_directories: inc,
)

install_subdir('include/helloworld', install_dir: get_option('includedir'))
