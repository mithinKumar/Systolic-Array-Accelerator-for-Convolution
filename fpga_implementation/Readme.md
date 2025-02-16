# FPGA Project Overview

This project consists of the following modules:

- **array.sv**: Contains the modified TLV code for the systolic array in SystemVerilog.
- **uart_tx.sv**: Implements the UART transmitter module, responsible for sending the systolic array's output to the PC via UART.
- **top.sv**: The top-level entity that integrates the systolic array, UART module, and converts the hardware clock to 9600 baud rate for UART communication.

## UART Settings
The UART communication settings are configured for 9600 baud rate. For additional details, refer to the image below.
![uart](fpga_implementation/image.png)

## FPGA Programming
To program the FPGA, follow the steps outlined in the [VSDSquadron_FM GitHub repository](https://github.com/thesourcerer8/VSDSquadron_FM/tree/main).

