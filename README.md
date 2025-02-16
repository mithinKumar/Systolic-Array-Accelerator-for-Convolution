# Weight-Stationary Model for Systolic Array Processing Element
 -Mithin Kumar Pentapalli(22b1252@iitb.ac.in)
 -Preetam Bhanoth(22b1254@iitb.ac.in)

We chose a **weight-stationary model** for our systolic array. The processing element is designed as shown below.

![Processing Element](images/PE.jpg)

and the overall array structure is:

<img src="images/array.jpg" width="400">

## Functionality of the Array

The systolic array operates by taking in two streams of data: weights and inputs. The array's design includes enable signals for weights, input (a), and accumulated value registers. 

### Data Flow Process
1. **Filling the Array with Weights**: Initially, the array is filled with weight data, controlled by a weight enable (`weight_en`) signal. 
2. **Switch to Input Stream**: Once the weights are loaded, the `weight_en` signal is set low, and the array starts accepting input data horizontally by enabling the input enable (`a_en`) signal.
3. **Input Handling**: The inputs are provided horizontally, while weights and accumulated values are handled vertically in the array.

### Interaction with CPU
To implement this design with a CPU, we need separate local RAM memory to store inputs, weights, and outputs. These data will be transferred between the array and the CPU using a communication protocol like **Wishbone**. This allows the CPU to manage data flows, such as filling the array with weights and providing input streams, without frequent memory accesses for the weights, thus enhancing efficiency.

### Motivation for Choosing Weight-Stationary Model
The decision to adopt the weight-stationary model is driven by the nature of most AI models, particularly in applications like **Deep Neural Networks (DNNs)**. In these models, the weights are typically fixed, and the input data varies. For example, in handwritten digit recognition, the same set of weights is used to multiply with different images. Since the weights do not change, the weight-stationary model ensures that the weights do not need to be accessed repeatedly from memory. This saves valuable time and significantly reduces memory access latency during inference.

### Applicability to Various Applications
This weight-stationary array is highly flexible and can be used for both **DNNs** and **convolution applications**. The distinction between these two use cases lies in how the input and weight matrices are filled by the CPU. For DNN applications, the array handles the multiplication of inputs with weights across multiple layers, while in convolution applications, the array processes the convolution operations between input and kernel filters.

In either case, the management of data flow and matrix filling is taken care of in the software, which interacts with the hardware through the communication protocol (e.g., Wishbone) to efficiently manage the array's operations.

## Description

We can set the dimensions of the array (height and width) through the parameters in the code. A **Kogge-Stone** faster adder is used for the addition.

- The flow of `a` is **horizontal**, while `weight` and `acc` are **vertical**.

## Implementation Notes

- The array's height and width are adjustable via parameters in the code, allowing for scalability.
- The systolic array's architecture is designed to maximize parallelism, enabling efficient computation for a variety of applications.
- For more optimized addition operations, the **Kogge-Stone** adder is employed, which reduces latency and improves performance compared to traditional ripple-carry adders.

## Video Submission

In the following video, the final array is tested with an 8x8 size and with the input matrices shown in the image below.

<img src="images/TB.jpg" width="400">

[Video Submission](https://drive.google.com/drive/folders/1ws1UT1lFA6Y9jibZrNsLLUj5b1qORAI5?usp=sharing)
