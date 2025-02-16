This project involves the following key components:

- **preprocessing.c** and **preprocessing.asm**: These files contain C and assembly code, respectively, that take an input matrix and a weight matrix. The code generates two matrices, whose matrix multiplication results in the convolution of the original matrices. These generated arrays are directly used by the systolic array for matrix multiplication.
  
- **completed.c** and **completed.asm**: These files implement the full matrix multiplication functionality along with the preprocessing steps. They combine the convolution generation and matrix multiplication operations in a single implementation.

## Key Operations
1. **Preprocessing**: The preprocessing code takes input matrices and generates two matrices, which represent the convolution of the original matrices.
2. **Matrix Multiplication**: The systolic array performs matrix multiplication on the preprocessed arrays to achieve the final result.
