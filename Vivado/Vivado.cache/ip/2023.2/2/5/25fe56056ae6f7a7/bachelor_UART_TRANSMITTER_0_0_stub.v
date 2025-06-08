// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun Jun  8 01:00:45 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_UART_TRANSMITTER_0_0_stub.v
// Design      : bachelor_UART_TRANSMITTER_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "UART_TRANSMITTER,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(uart_transmitter_clock, 
  uart_transmitter_reset_active_low, uart_transmitter_input_btint_a, 
  uart_transmitter_input_btint_b, uart_transmitter_input_overflow, 
  uart_transmitter_column, uart_transmitter_output)
/* synthesis syn_black_box black_box_pad_pin="uart_transmitter_reset_active_low,uart_transmitter_input_btint_a[127:0],uart_transmitter_input_btint_b[127:0],uart_transmitter_input_overflow[31:0],uart_transmitter_column[31:0],uart_transmitter_output" */
/* synthesis syn_force_seq_prim="uart_transmitter_clock" */;
  input uart_transmitter_clock /* synthesis syn_isclock = 1 */;
  input uart_transmitter_reset_active_low;
  input [127:0]uart_transmitter_input_btint_a;
  input [127:0]uart_transmitter_input_btint_b;
  input [31:0]uart_transmitter_input_overflow;
  input [31:0]uart_transmitter_column;
  output uart_transmitter_output;
endmodule
