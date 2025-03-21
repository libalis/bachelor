//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Fri Mar 21 18:54:15 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor_wrapper.bd
//Design      : bachelor_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bachelor_wrapper
   (matrix_vector_clock,
    matrix_vector_reset);
  input matrix_vector_clock;
  input matrix_vector_reset;

  wire matrix_vector_clock;
  wire matrix_vector_reset;

  bachelor bachelor_i
       (.matrix_vector_clock(matrix_vector_clock),
        .matrix_vector_reset(matrix_vector_reset));
endmodule
