// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Jun  6 00:39:31 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_COMBINED_OPERATIONS_0_0_stub.v
// Design      : bachelor_COMBINED_OPERATIONS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "COMBINED_OPERATIONS,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(combined_operations_clock, 
  combined_operations_reset, combined_operations_m_a_btint_a, 
  combined_operations_m_a_btint_b, combined_operations_m_a_overflow, 
  combined_operations_m_b_btint_a, combined_operations_m_b_btint_b, 
  combined_operations_m_b_overflow, combined_operations_v_btint_a, 
  combined_operations_v_btint_b, combined_operations_v_overflow, 
  combined_operations_op, combined_operations_done, 
  combined_operations_result_u_btint_a, combined_operations_result_u_btint_b, 
  combined_operations_result_u_overflow, combined_operations_result_d_btint_a, 
  combined_operations_result_d_btint_b, combined_operations_result_d_overflow)
/* synthesis syn_black_box black_box_pad_pin="combined_operations_reset,combined_operations_m_a_btint_a[95:0],combined_operations_m_a_btint_b[95:0],combined_operations_m_a_overflow[23:0],combined_operations_m_b_btint_a[95:0],combined_operations_m_b_btint_b[95:0],combined_operations_m_b_overflow[23:0],combined_operations_v_btint_a[23:0],combined_operations_v_btint_b[23:0],combined_operations_v_overflow[5:0],combined_operations_op[1:0],combined_operations_done,combined_operations_result_u_btint_a[127:0],combined_operations_result_u_btint_b[127:0],combined_operations_result_u_overflow[31:0],combined_operations_result_d_btint_a[127:0],combined_operations_result_d_btint_b[127:0],combined_operations_result_d_overflow[31:0]" */
/* synthesis syn_force_seq_prim="combined_operations_clock" */;
  input combined_operations_clock /* synthesis syn_isclock = 1 */;
  input combined_operations_reset;
  input [95:0]combined_operations_m_a_btint_a;
  input [95:0]combined_operations_m_a_btint_b;
  input [23:0]combined_operations_m_a_overflow;
  input [95:0]combined_operations_m_b_btint_a;
  input [95:0]combined_operations_m_b_btint_b;
  input [23:0]combined_operations_m_b_overflow;
  input [23:0]combined_operations_v_btint_a;
  input [23:0]combined_operations_v_btint_b;
  input [5:0]combined_operations_v_overflow;
  input [1:0]combined_operations_op;
  output combined_operations_done;
  output [127:0]combined_operations_result_u_btint_a;
  output [127:0]combined_operations_result_u_btint_b;
  output [31:0]combined_operations_result_u_overflow;
  output [127:0]combined_operations_result_d_btint_a;
  output [127:0]combined_operations_result_d_btint_b;
  output [31:0]combined_operations_result_d_overflow;
endmodule
