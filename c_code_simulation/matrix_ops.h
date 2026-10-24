#ifndef MATRIX_OPS_H
#define MATRIX_OPS_H

#include <stddef.h>

/**
 * Perform matrix multiplication: result = mat1 * mat2
 *
 * @param mat1      Pointer to first matrix (row-major, mat1_rows x mat1_cols)
 * @param mat2      Pointer to second matrix (row-major, mat1_cols x mat2_cols)
 * @param result    Pointer to result matrix (row-major, mat1_rows x mat2_cols)
 * @param mat1_rows Number of rows in mat1
 * @param mat1_cols Number of columns in mat1 (and rows in mat2)
 * @param mat2_cols Number of columns in mat2
 * @return          0 on success, -1 on error (NULL pointers or invalid dimensions)
 */
int matrix_multiply(int *mat1, int *mat2, int *result, int mat1_rows, int mat1_cols, int mat2_cols);

/**
 * Extract sliding windows from a 2D input matrix for convolution.
 *
 * Each window is a flattened filter_size x filter_size block, stored
 * contiguously in row-major order in the output array.
 *
 * @param input       Pointer to input matrix (row-major, input_rows x input_cols)
 * @param input_rows  Number of rows in input
 * @param input_cols  Number of columns in input
 * @param filter_size Side length of the square filter
 * @param windows     Pointer to output array (must hold num_windows * filter_size^2 ints)
 * @return            0 on success, -1 on error (NULL pointers or invalid dimensions)
 */
int extract_windows(int *input, int input_rows, int input_cols, int filter_size, int *windows);

#endif /* MATRIX_OPS_H */
