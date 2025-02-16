#include <stdio.h>
#include <stdlib.h>

// Function to perform matrix multiplication
void matrix_multiply(int *mat1, int *mat2, int *result, int mat1_rows, int mat1_cols, int mat2_cols) {
    for (int i = 0; i < mat1_rows; i++) {
        for (int j = 0; j < mat2_cols; j++) {
            result[i * mat2_cols + j] = 0;
            for (int k = 0; k < mat1_cols; k++) {
                result[i * mat2_cols + j] += mat1[i * mat1_cols + k] * mat2[k * mat2_cols + j];
            }
        }
    }
}

// Function to extract sliding windows (sub-matrices) from the input matrix
void extract_windows(int *input, int input_rows, int input_cols, int filter_size, int *windows) {
    int index = 0;
    // Sliding window mechanism
    for (int i = 0; i <= input_rows - filter_size; i++) {
        for (int j = 0; j <= input_cols - filter_size; j++) {
            // Extract a filter-sized window
            for (int fi = 0; fi < filter_size; fi++) {
                for (int fj = 0; fj < filter_size; fj++) {
                    windows[index++] = input[(i + fi) * input_cols + (j + fj)];
                }
            }
        }
    }
}

// Function to print a matrix
void print_matrix(int *matrix, int rows, int cols) {
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i * cols + j]);
        }
        printf("\n");
    }
}

int main() {
    int input_rows = 4, input_cols = 4;  // Input matrix size (4x4)
    int filter_size = 2; // Filter size (2x2)
    int num_filters = 2; // Number of filters (2 filters of size 2x2)

    // Example 4x4 input matrix
    int input[16] = {1, 2, 3, 4,4, 5, 6, 7,7, 8, 9, 10,10, 11, 12, 13};

    // Example two 2x2 weight matrices (2 filters)
    int weights[8] = {1, 5, 2, 6, // Filter 1 (2x2)
                      3, 7, 4, 8}; // Filter 2 (2x2)

    // Calculate number of windows (sliding regions) in the input matrix
    int num_windows = (input_rows - filter_size + 1) * (input_cols - filter_size + 1);

    // Flattened arrays for matrix multiplication
    int *windows = (int *)malloc(num_windows * filter_size * filter_size * sizeof(int));
    int *mat2 = (int *)malloc(num_filters * filter_size * filter_size * sizeof(int));  // Flattened filters
    int *result = (int *)malloc(num_windows * num_filters * sizeof(int));

    // Extract sliding windows from the input matrix
    extract_windows(input, input_rows, input_cols, filter_size, windows);

    // Print the input matrix and the sliding windows
    printf("Input Matrix (4x4):\n");
    print_matrix(input, input_rows, input_cols);

    printf("Sliding Windows (extracted 2x2 blocks):\n");
    print_matrix(windows, num_windows, filter_size * filter_size);

    // Print the weight matrices
    printf("Weight Matrices (2 filters of size 2x2):\n");
    print_matrix(weights, num_filters * filter_size, filter_size);

    // Flatten weight matrices
    for (int i = 0; i < num_filters; i++) {
        for (int j = 0; j < filter_size; j++) {
            for (int k = 0; k < filter_size; k++) {
                mat2[i * filter_size * filter_size + j * filter_size + k] = weights[i * filter_size * filter_size + j * filter_size + k];
            }
        }
    }

    // Perform matrix multiplication (simulating convolution)
    matrix_multiply(windows, mat2, result, num_windows, filter_size * filter_size, num_filters);

    // Print result of matrix multiplication (equivalent to convolution)
    printf("\nResult of matrix multiplication (equivalent to convolution):\n");
    for (int i = 0; i < num_windows; i++) {
        for (int j = 0; j < num_filters; j++) {
            printf("%d ", result[i * num_filters + j]);
        }
        printf("\n");
    }

    // Free allocated memory
    free(windows);
    free(mat2);
    free(result);

    return 0;
}
