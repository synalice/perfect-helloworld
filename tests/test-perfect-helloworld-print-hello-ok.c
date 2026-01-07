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

static void test_perfect_helloworld_print_hello_ok(void) {
    enum PERFECT_HELLOWORLD_RESULT res = perfect_helloworld_print_hello();
    TEST_ASSERT_EQUAL(PERFECT_HELLOWORLD_RESULT_OK, res);
}

int main(void) {
    UNITY_BEGIN();

    RUN_TEST(test_perfect_helloworld_print_hello_ok);

    return UNITY_END();
}
