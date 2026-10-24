#include "logger.h"
#include "matrix_ops.h"
#include "test_framework.h"

/* ===== Matrix Multiply Tests ===== */

void test_matrix_multiply_identity(void) {
    // Multiply a 3x3 matrix by the 3x3 identity matrix
    int mat[9] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    int identity[9] = {1, 0, 0, 0, 1, 0, 0, 0, 1};
    int result[9] = {0};

    int ret = matrix_multiply(mat, identity, result, 3, 3, 3);
    ASSERT_EQ(0, ret);
    ASSERT_ARRAY_EQ(mat, result, 9);
}

void test_matrix_multiply_2x2(void) {
    // [1 2] * [5 6] = [1*5+2*7  1*6+2*8] = [19 22]
    // [3 4]   [7 8]   [3*5+4*7  3*6+4*8]   [43 50]
    int a[4] = {1, 2, 3, 4};
    int b[4] = {5, 6, 7, 8};
    int result[4] = {0};
    int expected[4] = {19, 22, 43, 50};

    int ret = matrix_multiply(a, b, result, 2, 2, 2);
    ASSERT_EQ(0, ret);
    ASSERT_ARRAY_EQ(expected, result, 4);
}

void test_matrix_multiply_known_values(void) {
    // Use the exact data from the repository's convolution demo
    // Input 4x4 -> extract 9 windows of 2x2 -> multiply by weight matrix 4x2
    int input[16] = {1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 10, 11, 12, 13};
    int weights[8] = {1, 5, 2, 6, 3, 7, 4, 8};  // 4 rows x 2 cols

    int windows[36] = {0};  // 9 windows * 4 values
    int result[18] = {0};   // 9 windows * 2 filters

    extract_windows(input, 4, 4, 2, windows);
    int ret = matrix_multiply(windows, weights, result, 9, 4, 2);
    ASSERT_EQ(0, ret);

    // Window 0 = {1,2,4,5}: result[0] = 1*1+2*2+4*3+5*4 = 37
    //                        result[1] = 1*5+2*6+4*7+5*8 = 85
    ASSERT_EQ(37, result[0]);
    ASSERT_EQ(85, result[1]);

    // Window 1 = {2,3,5,6}: result[2] = 2*1+3*2+5*3+6*4 = 47
    //                        result[3] = 2*5+3*6+5*7+6*8 = 111
    ASSERT_EQ(47, result[2]);
    ASSERT_EQ(111, result[3]);

    // Window 8 (last) = {9,10,12,13}: result[16] = 9*1+10*2+12*3+13*4 = 117
    //                                  result[17] = 9*5+10*6+12*7+13*8 = 293
    ASSERT_EQ(117, result[16]);
    ASSERT_EQ(293, result[17]);
}

void test_matrix_multiply_null_inputs(void) {
    int a[4] = {1, 2, 3, 4};
    int result[4] = {0};

    ASSERT_EQ(-1, matrix_multiply(NULL, a, result, 2, 2, 2));
    ASSERT_EQ(-1, matrix_multiply(a, NULL, result, 2, 2, 2));
    ASSERT_EQ(-1, matrix_multiply(a, a, NULL, 2, 2, 2));
}

void test_matrix_multiply_invalid_dimensions(void) {
    int a[4] = {1, 2, 3, 4};
    int result[4] = {0};

    ASSERT_EQ(-1, matrix_multiply(a, a, result, 0, 2, 2));
    ASSERT_EQ(-1, matrix_multiply(a, a, result, 2, 0, 2));
    ASSERT_EQ(-1, matrix_multiply(a, a, result, 2, 2, 0));
    ASSERT_EQ(-1, matrix_multiply(a, a, result, -1, 2, 2));
}

/* ===== Extract Windows Tests ===== */

void test_extract_windows_count(void) {
    // 4x4 input with filter_size=2 should produce 9 windows of 4 values each
    int input[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    int windows[36] = {0};

    int ret = extract_windows(input, 4, 4, 2, windows);
    ASSERT_EQ(0, ret);

    // Verify that all 36 positions were written
    ASSERT_TRUE(windows[0] != 0);
    ASSERT_TRUE(windows[35] != 0);
}

void test_extract_windows_values(void) {
    // Verify exact values of first and last windows
    int input[16] = {1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 10, 11, 12, 13};
    int windows[36] = {0};

    extract_windows(input, 4, 4, 2, windows);

    // First window (top-left 2x2): {1, 2, 4, 5}
    int expected_first[4] = {1, 2, 4, 5};
    ASSERT_ARRAY_EQ(expected_first, &windows[0], 4);

    // Last window (bottom-right 2x2): {9, 10, 12, 13}
    int expected_last[4] = {9, 10, 12, 13};
    ASSERT_ARRAY_EQ(expected_last, &windows[32], 4);

    // Middle window (row=1, col=1 -> index=4): {5, 6, 8, 9}
    int expected_mid[4] = {5, 6, 8, 9};
    ASSERT_ARRAY_EQ(expected_mid, &windows[16], 4);
}

void test_extract_windows_3x3_filter(void) {
    // 4x4 input with filter_size=3 should produce 4 windows of 9 values
    int input[16] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16};
    int windows[36] = {0};

    int ret = extract_windows(input, 4, 4, 3, windows);
    ASSERT_EQ(0, ret);

    // First window (3x3 top-left): {1,2,3, 5,6,7, 9,10,11}
    int expected[9] = {1, 2, 3, 5, 6, 7, 9, 10, 11};
    ASSERT_ARRAY_EQ(expected, &windows[0], 9);
}

void test_extract_windows_invalid_filter_too_large(void) {
    int input[16] = {0};
    int windows[4] = {0};

    // filter_size=5 on a 4x4 input should fail
    ASSERT_EQ(-1, extract_windows(input, 4, 4, 5, windows));
}

void test_extract_windows_invalid_filter_zero(void) {
    int input[16] = {0};
    int windows[4] = {0};

    ASSERT_EQ(-1, extract_windows(input, 4, 4, 0, windows));
}

void test_extract_windows_null_inputs(void) {
    int input[16] = {0};
    int windows[36] = {0};

    ASSERT_EQ(-1, extract_windows(NULL, 4, 4, 2, windows));
    ASSERT_EQ(-1, extract_windows(input, 4, 4, 2, NULL));
}

/* ===== Logger Tests ===== */

void test_logger_levels(void) {
    log_set_level(LOG_LEVEL_DEBUG);
    ASSERT_EQ(LOG_LEVEL_DEBUG, log_get_level());

    log_set_level(LOG_LEVEL_ERROR);
    ASSERT_EQ(LOG_LEVEL_ERROR, log_get_level());

    log_set_level(LOG_LEVEL_INFO);
    ASSERT_EQ(LOG_LEVEL_INFO, log_get_level());
}

/* ===== Main ===== */

int main(void) {
    printf("Systolic Array Accelerator - Test Suite\n");
    printf("========================================\n\n");

    // Matrix multiply tests
    RUN_TEST(test_matrix_multiply_identity);
    RUN_TEST(test_matrix_multiply_2x2);
    RUN_TEST(test_matrix_multiply_known_values);
    RUN_TEST(test_matrix_multiply_null_inputs);
    RUN_TEST(test_matrix_multiply_invalid_dimensions);

    // Extract windows tests
    RUN_TEST(test_extract_windows_count);
    RUN_TEST(test_extract_windows_values);
    RUN_TEST(test_extract_windows_3x3_filter);
    RUN_TEST(test_extract_windows_invalid_filter_too_large);
    RUN_TEST(test_extract_windows_invalid_filter_zero);
    RUN_TEST(test_extract_windows_null_inputs);

    // Logger tests
    RUN_TEST(test_logger_levels);

    TEST_SUMMARY();
    return TEST_EXIT_CODE();
}
