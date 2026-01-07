// SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
//
// SPDX-License-Identifier: MIT

#include <stdio.h>
#include <stdlib.h>

#include "perfect-helloworld.h"

int main(void) {
    enum PERFECT_HELLOWORLD_RESULT res = perfect_helloworld_print_hello();
    if (res != PERFECT_HELLOWORLD_RESULT_OK) {
        (void)fprintf(
            stderr,
            "perfect_helloworld_print_hello failed: %s\n",
            perfect_helloworld_strerror(res));
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
