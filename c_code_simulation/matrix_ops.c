#include "matrix_ops.h"

#ifndef BARE_METAL
#include "logger.h"
#endif

int matrix_multiply(int *mat1, int *mat2, int *result, int mat1_rows, int mat1_cols, int mat2_cols) {
    /* Input validation: check for NULL pointers */
    if (!mat1 || !mat2 || !result) {
#ifndef BARE_METAL
        LOG_ERROR("matrix_multiply: NULL pointer argument received (mat1=%p, mat2=%p, result=%p)",
                  (void *)mat1, (void *)mat2, (void *)result);
#endif
        return -1;
    }

    /* Input validation: check matrix dimensions */
    if (mat1_rows <= 0 || mat1_cols <= 0 || mat2_cols <= 0) {
#ifndef BARE_METAL
        LOG_ERROR("matrix_multiply: invalid dimensions (mat1_rows=%d, mat1_cols=%d, mat2_cols=%d)",
                  mat1_rows, mat1_cols, mat2_cols);
#endif
        return -1;
    }

    for (int i = 0; i < mat1_rows; i++) {
        for (int j = 0; j < mat2_cols; j++) {
            result[i * mat2_cols + j] = 0;
            for (int k = 0; k < mat1_cols; k++) {
                result[i * mat2_cols + j] += mat1[i * mat1_cols + k] * mat2[k * mat2_cols + j];
            }
        }
    }
    return 0;
}

int extract_windows(int *input, int input_rows, int input_cols, int filter_size, int *windows) {
    /* Input validation: check for NULL pointers */
    if (!input || !windows) {
#ifndef BARE_METAL
        LOG_ERROR("extract_windows: NULL pointer argument received (input=%p, windows=%p)",
                  (void *)input, (void *)windows);
#endif
        return -1;
    }

    /* Input validation: bounds check for filter size against input dimensions */
    if (filter_size <= 0 || filter_size > input_rows || filter_size > input_cols) {
#ifndef BARE_METAL
        LOG_ERROR("extract_windows: invalid filter size %d for input dimensions %dx%d",
                  filter_size, input_rows, input_cols);
#endif
        return -1;
    }

    int index = 0;
    for (int i = 0; i <= input_rows - filter_size; i++) {
        for (int j = 0; j <= input_cols - filter_size; j++) {
            for (int fi = 0; fi < filter_size; fi++) {
                for (int fj = 0; fj < filter_size; fj++) {
                    windows[index++] = input[(i + fi) * input_cols + (j + fj)];
                }
            }
        }
    }
    return 0;
}
