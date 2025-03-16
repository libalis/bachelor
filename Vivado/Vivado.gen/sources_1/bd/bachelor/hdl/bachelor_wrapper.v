//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sun Mar 16 19:27:30 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor_wrapper.bd
//Design      : bachelor_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bachelor_wrapper
   (matrix_vector_clock,
    matrix_vector_reset,
    uart_transmitter_output);
  input matrix_vector_clock;
  input matrix_vector_reset;
  output uart_transmitter_output;

  wire matrix_vector_clock;
  wire matrix_vector_reset;
  wire uart_transmitter_output;

  bachelor bachelor_i
       (.matrix_vector_clock(matrix_vector_clock),
        .matrix_vector_reset(matrix_vector_reset),
        .uart_transmitter_output(uart_transmitter_output));
endmodule
