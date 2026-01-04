// SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
//
// SPDX-License-Identifier: MIT

#include <unity.h>
#include <unity_internals.h>

#include "perfect-helloworld.h"

void setUp(void) {
    // set stuff up here
}

void tearDown(void) {
    // clean stuff up here
}

static void test_print_hello(void) {
    print_hello();
}

int main(void) {
    UNITY_BEGIN();

    RUN_TEST(test_print_hello);

    return UNITY_END();
}
