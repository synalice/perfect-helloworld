// SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
//
// SPDX-License-Identifier: MIT

#include <stdio.h>

#include "perfect-helloworld.h"

const char *
perfect_helloworld_strerror(enum PERFECT_HELLOWORLD_RESULT res) {
    switch (res) {
    case PERFECT_HELLOWORLD_RESULT_OK:
        return "Success";
    case PERFECT_HELLOWORLD_RESULT_STDOUT_IO_ERROR:
        return "I/O error while writing to standard output";
    default:
        return "Unknown perfect_helloworld error";
    }
}

enum PERFECT_HELLOWORLD_RESULT perfect_helloworld_print_hello(void) {
    if (fputs("Hello, World!\n", stdout) == EOF) {
        return PERFECT_HELLOWORLD_RESULT_STDOUT_IO_ERROR;
    }

    return PERFECT_HELLOWORLD_RESULT_OK;
}
