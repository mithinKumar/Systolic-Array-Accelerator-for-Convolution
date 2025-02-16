Wallace tree multiplier** for efficient multiplication.

- **Data Flow**:
  - `a` (input) flows **horizontally**.
  - `weight` and `accumulated values` flow **vertically**.

## Implementation Notes

- **Scalable Architecture**: The array’s height and width can be adjusted via parameters.
- **Parallelism**: The array architecture is designed to maximize parallel processing for efficient computation.
- **Optimized Addition**: The **Kogge-Stone** adder reduces latency and improves performance over traditional ripple-carry adders.

## Video Submission

The following video demonstrates the final generated SystemVerilog code, dumped onto a VSDSquadron mini FPGA. The output is displayed via UART, showing the matrix multiplication result at intervals (only one row of the output matrix is displayed for demonstration purposes).

![Testbench](images/TB.jpg)

[Watch the Video Submission](https://drive.google.com/drive/folders/1ws1UT1lFA6Y9jibZrNsLLUj5b1qORAI5?usp=sharing)

## Accelerator vs CPU Comparison

### CPU-only Simulation
For the CPU-only simulation, we used the **Ripes simulator** with a 5-stage pipelined **RISC-V 32IM processor**. The C code was compiled into **RISC-V** assembly using **Compiler Explorer** and simulated on [Ripes](https://ripes.me/).

- The C code implements complete convolution.
- After simulation, the CPU took **7534 cycles** to execute.

### CPU + FPGA
For this setup, only preprocessing is done in C code:
- **Preprocessing**: Took **3003 cycles**.
- **Systolic Array**: Took **24 cycles** for matrix multiplication.
- **Total for Matrix Operation**: **3003 + 24 = 3027 cycles**.

Additionally, the data transfer back from the systolic array (modeled as memory loading) required **1000 cycles**, bringing the total to **4003 cycles**.

### Conclusion
We observed a significant performance improvement with the systolic array, reducing the cycles from **7534 (CPU-only)** to **4003 (CPU + FPGA)**. This demonstrates a nearly **two-fold increase in performance** with the systolic array.

