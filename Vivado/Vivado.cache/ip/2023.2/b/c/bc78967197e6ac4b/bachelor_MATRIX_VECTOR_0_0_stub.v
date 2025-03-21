// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Mar 21 18:55:19 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_MATRIX_VECTOR_0_0_stub.v
// Design      : bachelor_MATRIX_VECTOR_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MATRIX_VECTOR,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(matrix_vector_clock, matrix_vector_reset, 
  matrix_vector_valid, matrix_vector_matrix_btint_a, matrix_vector_matrix_btint_b, 
  matrix_vector_matrix_overflow, matrix_vector_vector_btint_a, 
  matrix_vector_vector_btint_b, matrix_vector_vector_overflow, 
  matrix_vector_result_btint_a, matrix_vector_result_btint_b, 
  matrix_vector_result_overflow, matrix_vector_done)
/* synthesis syn_black_box black_box_pad_pin="matrix_vector_reset,matrix_vector_valid,matrix_vector_matrix_btint_a[95:0],matrix_vector_matrix_btint_b[95:0],matrix_vector_matrix_overflow[23:0],matrix_vector_vector_btint_a[31:0],matrix_vector_vector_btint_b[31:0],matrix_vector_vector_overflow[7:0],matrix_vector_result_btint_a[23:0],matrix_vector_result_btint_b[23:0],matrix_vector_result_overflow[5:0],matrix_vector_done" */
/* synthesis syn_force_seq_prim="matrix_vector_clock" */;
  input matrix_vector_clock /* synthesis syn_isclock = 1 */;
  input matrix_vector_reset;
  input matrix_vector_valid;
  input [95:0]matrix_vector_matrix_btint_a;
  input [95:0]matrix_vector_matrix_btint_b;
  input [23:0]matrix_vector_matrix_overflow;
  input [31:0]matrix_vector_vector_btint_a;
  input [31:0]matrix_vector_vector_btint_b;
  input [7:0]matrix_vector_vector_overflow;
  output [23:0]matrix_vector_result_btint_a;
  output [23:0]matrix_vector_result_btint_b;
  output [5:0]matrix_vector_result_overflow;
  output matrix_vector_done;
endmodule
