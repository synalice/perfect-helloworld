// SPDX-FileCopyrightText: © 2026 Nikita Krasnov <nikita.nikita.krasnov@gmail.com>
//
// SPDX-License-Identifier: MIT

/** @file */

#pragma once

/**
 * @brief
 * Result of the library function.
 */
enum PERFECT_HELLOWORLD_RESULT {
    PERFECT_HELLOWORLD_RESULT_OK = 0,          //!< Success.
    PERFECT_HELLOWORLD_RESULT_STDOUT_IO_ERROR, //!< Failure.
};

/**
 * @brief
 * Return a human-readable description of a PERFECT_HELLOWORLD_RESULT.
 *
 * @param res
 * A result code returned by a function of this library.
 *
 * @return
 * A pointer to a null-terminated, immutable string describing @p res.
 *
 * @note
 * - The returned string has static storage duration and must not be freed or
 *   modified by the caller.
 *
 * - This function is thread-safe.
 *
 * - For unknown or unsupported values of @p res, a generic "Unknown error" string
 *   is returned.
 */
const char *perfect_helloworld_strerror(enum PERFECT_HELLOWORLD_RESULT res);

/**
 * @brief
 * Print "Hello, World!\n".
 */
enum PERFECT_HELLOWORLD_RESULT
perfect_helloworld_print_hello(void);
