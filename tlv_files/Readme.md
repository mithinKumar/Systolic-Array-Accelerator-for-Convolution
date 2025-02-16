# Systolic Array Design with Kogge-Stone Adder and Wallace Tree Multiplier

This design consists of the following major components:

- **Processing Element Macro**
- **Kogge-Stone Adder**
- **Wallace Tree Multiplier**
- **Systolic Array**

The input matrices are hardcoded in the testbench and are simulated using the described components. Below is a description of each part and how they are integrated into the systolic array.

## Components

### 1. Processing Element (PE) Macro

The **Processing Element** is the basic unit of computation in the systolic array. Each PE takes input values, performs necessary operations (such as addition or multiplication), and produces an output. In this design, PEs are interconnected in a way that allows data to flow between them in a synchronized manner. Each PE typically consists of:

- Input registers
- Operation unit (addition/multiplication)
- Output registers

### 2. Kogge-Stone Adder

The **Kogge-Stone Adder** (KSA) is an efficient parallel adder used in the systolic array for fast addition operations. The Kogge-Stone Adder is particularly useful for its speed in generating carry bits and providing a carry-propagation delay of only \( O(\log n) \), making it ideal for high-performance computing. In the design, the KSA is used in the PE macro to perform addition tasks.

### 3. Wallace Tree Multiplier

The **Wallace Tree Multiplier** is used to efficiently perform multiplication in the systolic array. The Wallace Tree algorithm reduces the number of partial products by grouping and summing them in a tree-like structure, resulting in faster multiplication than traditional methods. In this design, the Wallace Tree Multiplier is used to handle multiplication within the PEs.

### 4. Systolic Array

The **Systolic Array** is a two-dimensional grid of interconnected processing elements. Data flows through the array in a rhythmic manner, with each PE performing calculations on its inputs and sending results to neighboring elements. The systolic array is configured in such a way that matrix multiplication or other operations can be efficiently executed in parallel.

- **Data Flow**: Each PE in the systolic array processes the input matrices sequentially, with data flowing from one PE to the next in each clock cycle.
- **Synchronization**: The system is synchronized using a clock signal that ensures each PE performs its operations in lockstep.

## Testbench

The **Testbench** for this design contains hardcoded input matrices, which are fed into the systolic array for simulation. The testbench is designed to:

- Provide input matrices to the systolic array
- Simulate the execution of the array over multiple clock cycles
- Output the final result after all computations are completed
