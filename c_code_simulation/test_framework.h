#ifndef TEST_FRAMEWORK_H
#define TEST_FRAMEWORK_H

#include <stdio.h>
#include <string.h>

static int _tests_run = 0;
static int _tests_passed = 0;
static int _tests_failed = 0;

#define ASSERT_EQ(expected, actual)                                                                                    \
    do {                                                                                                               \
        if ((expected) != (actual)) {                                                                                  \
            printf("  FAIL: %s:%d: expected %d, got %d\n", __FILE__, __LINE__, (int)(expected), (int)(actual));        \
            _tests_failed++;                                                                                           \
            _tests_run++;                                                                                              \
            return;                                                                                                    \
        }                                                                                                              \
    } while (0)

#define ASSERT_TRUE(cond)                                                                                              \
    do {                                                                                                               \
        if (!(cond)) {                                                                                                 \
            printf("  FAIL: %s:%d: condition '%s' was false\n", __FILE__, __LINE__, #cond);                            \
            _tests_failed++;                                                                                           \
            _tests_run++;                                                                                              \
            return;                                                                                                    \
        }                                                                                                              \
    } while (0)

#define ASSERT_ARRAY_EQ(expected, actual, len)                                                                         \
    do {                                                                                                               \
        for (int _i = 0; _i < (len); _i++) {                                                                          \
            if ((expected)[_i] != (actual)[_i]) {                                                                      \
                printf("  FAIL: %s:%d: arrays differ at index %d: expected %d, got %d\n", __FILE__, __LINE__, _i,      \
                       (int)(expected)[_i], (int)(actual)[_i]);                                                        \
                _tests_failed++;                                                                                       \
                _tests_run++;                                                                                          \
                return;                                                                                                \
            }                                                                                                          \
        }                                                                                                              \
    } while (0)

#define RUN_TEST(test_func)                                                                                            \
    do {                                                                                                               \
        printf("Running %s...\n", #test_func);                                                                         \
        int _before = _tests_failed;                                                                                   \
        test_func();                                                                                                   \
        if (_tests_failed == _before) {                                                                                \
            printf("  PASS\n");                                                                                        \
            _tests_passed++;                                                                                           \
            _tests_run++;                                                                                              \
        }                                                                                                              \
    } while (0)

#define TEST_SUMMARY()                                                                                                 \
    do {                                                                                                               \
        printf("\n========================================\n");                                                         \
        printf("Test Results: %d/%d passed", _tests_passed, _tests_run);                                              \
        if (_tests_failed > 0)                                                                                         \
            printf(" (%d FAILED)", _tests_failed);                                                                     \
        printf("\n========================================\n");                                                         \
    } while (0)

#define TEST_EXIT_CODE() (_tests_failed > 0 ? 1 : 0)

#endif /* TEST_FRAMEWORK_H */
