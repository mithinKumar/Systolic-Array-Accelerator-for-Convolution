// Modified for bare-metal RV32IM - no I/O, static allocation

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
    // Constants known at compile-time
    const int input_rows = 4, input_cols = 4;
    const int filter_size = 2;
    const int num_windows = (input_rows - filter_size + 1) * (input_cols - filter_size + 1);
    
    // Static allocation (no heap)
    int input[16] = {1,2,3,4,4,5,6,7,7,8,9,10,10,11,12,13};
    int windows[num_windows * filter_size * filter_size];

    // Core functionality remains
    extract_windows(input, input_rows, input_cols, filter_size, windows);

    // Bare-metal systems typically don't exit
    while(1) {} // Infinite loop to prevent return
}
