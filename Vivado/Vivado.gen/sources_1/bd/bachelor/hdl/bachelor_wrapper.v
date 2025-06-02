//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Mon Jun  2 15:37:43 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor_wrapper.bd
//Design      : bachelor_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bachelor_wrapper
   (combined_operations_clock,
    combined_operations_done,
    combined_operations_reset,
    uart_transmitter_output_d,
    uart_transmitter_output_u);
  input combined_operations_clock;
  output combined_operations_done;
  input combined_operations_reset;
  output uart_transmitter_output_d;
  output uart_transmitter_output_u;

  wire combined_operations_clock;
  wire combined_operations_done;
  wire combined_operations_reset;
  wire uart_transmitter_output_d;
  wire uart_transmitter_output_u;

  bachelor bachelor_i
       (.combined_operations_clock(combined_operations_clock),
        .combined_operations_done(combined_operations_done),
        .combined_operations_reset(combined_operations_reset),
        .uart_transmitter_output_d(uart_transmitter_output_d),
        .uart_transmitter_output_u(uart_transmitter_output_u));
endmodule
