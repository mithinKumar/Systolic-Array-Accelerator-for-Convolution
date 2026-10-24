#include <stdio.h>
#include <stdlib.h>

#include "logger.h"
#include "matrix_ops.h"

/* Function to print a matrix */
void print_matrix(int *matrix, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i * cols + j]);
        }
        printf("\n");
    }
}

int main() {
    log_set_level(LOG_LEVEL_INFO);
    LOG_INFO("Initializing systolic array convolution accelerator demo");

    int input_rows = 4, input_cols = 4;  // Input matrix size (4x4)
    int filter_size = 2;                 // Filter size (2x2)
    int num_filters = 2;                 // Number of filters (2 filters of size 2x2)

    // Example 4x4 input matrix
    int input[16] = {1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 10, 11, 12, 13};

    // Example two 2x2 weight matrices (2 filters)
    int weights[8] = {1, 5, 2, 6,   // Filter 1 (2x2)
                      3, 7, 4, 8};  // Filter 2 (2x2)

    // Calculate number of windows (sliding regions) in the input matrix
    int num_windows = (input_rows - filter_size + 1) * (input_cols - filter_size + 1);

    // Dynamic memory allocation with validation
    int *windows = (int *)malloc(num_windows * filter_size * filter_size * sizeof(int));
    int *mat2 = (int *)malloc(num_filters * filter_size * filter_size * sizeof(int));
    int *result = (int *)malloc(num_windows * num_filters * sizeof(int));

    if (!windows || !mat2 || !result) {
        LOG_ERROR("Memory allocation failed for simulation buffers");
        free(windows);
        free(mat2);
        free(result);
        return 1;
    }

    LOG_INFO("Extracting sliding windows from 4x4 input matrix with %dx%d filter...", filter_size, filter_size);
    if (extract_windows(input, input_rows, input_cols, filter_size, windows) != 0) {
        LOG_ERROR("Failed to extract windows");
        free(windows);
        free(mat2);
        free(result);
        return 1;
    }

    // Print the input matrix and the sliding windows
    printf("\nInput Matrix (4x4):\n");
    print_matrix(input, input_rows, input_cols);

    printf("\nSliding Windows (extracted 2x2 blocks):\n");
    print_matrix(windows, num_windows, filter_size * filter_size);

    // Print the weight matrices
    printf("\nWeight Matrices (2 filters of size 2x2):\n");
    print_matrix(weights, num_filters * filter_size, filter_size);

    // Flatten weight matrices into mat2
    for (int i = 0; i < num_filters; i++) {
        for (int j = 0; j < filter_size; j++) {
            for (int k = 0; k < filter_size; k++) {
                mat2[i * filter_size * filter_size + j * filter_size + k] =
                    weights[i * filter_size * filter_size + j * filter_size + k];
            }
        }
    }

    // Perform matrix multiplication (simulating convolution)
    LOG_INFO("Executing systolic array matrix multiplication (%dx%d by %dx%d)...",
             num_windows, filter_size * filter_size, filter_size * filter_size, num_filters);
    if (matrix_multiply(windows, mat2, result, num_windows, filter_size * filter_size, num_filters) != 0) {
        LOG_ERROR("Matrix multiplication failed");
        free(windows);
        free(mat2);
        free(result);
        return 1;
    }

    // Print result of matrix multiplication (equivalent to convolution)
    printf("\nResult of matrix multiplication (equivalent to convolution):\n");
    for (int i = 0; i < num_windows; i++) {
        for (int j = 0; j < num_filters; j++) {
            printf("%d ", result[i * num_filters + j]);
        }
        printf("\n");
    }

    LOG_INFO("Convolution simulation completed successfully");

    // Free allocated memory
    free(windows);
    free(mat2);
    free(result);

    return 0;
}
