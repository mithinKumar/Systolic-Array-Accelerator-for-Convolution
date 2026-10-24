#include "matrix_ops.h"

int main() {
    // Compile-time constants
    const int input_rows = 4, input_cols = 4;
    const int filter_size = 2;
    const int num_windows = (input_rows - filter_size + 1) * (input_cols - filter_size + 1);
    const int num_filters = 2;
    const int window_size = filter_size * filter_size;

    // Static memory allocation
    int input[16] = {1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 10, 11, 12, 13};
    int weights[8] = {1, 5, 2, 6, 3, 7, 4, 8}; // Pre-flattened filters
    int windows[9 * 4];  // num_windows * window_size
    int result[9 * 2];   // num_windows * num_filters

    // Core computation pipeline
    extract_windows(input, input_rows, input_cols, filter_size, windows);
    matrix_multiply(windows, weights, result, num_windows, window_size, num_filters);

    // Safe termination for bare-metal
    while(1) {}
}
