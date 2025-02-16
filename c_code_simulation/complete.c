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

void extract_windows(int *input, int input_rows, int input_cols, int filter_size, int *windows) {
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
}

int main() {
    // Compile-time constants
    const int input_rows = 4, input_cols = 4;
    const int filter_size = 2;
    const int num_filters = 2;
    const int num_windows = (input_rows - filter_size + 1) * (input_cols - filter_size + 1); // 9
    
    // Static memory allocation
    int input[16] = {1,2,3,4,4,5,6,7,7,8,9,10,10,11,12,13};
    int weights[8] = {1,5,2,6,3,7,4,8}; // Pre-flattened filters
    int windows[9*4]; // 36 elements (9 windows of 2x2)
    int result[9*2];  // 18 elements (9 positions x 2 filters)

    // Core computation pipeline
    extract_windows(input, input_rows, input_cols, filter_size, windows);
    matrix_multiply(windows, weights, result, 9, 4, 2);

    // Safe termination for bare-metal
    while(1) {}
}
