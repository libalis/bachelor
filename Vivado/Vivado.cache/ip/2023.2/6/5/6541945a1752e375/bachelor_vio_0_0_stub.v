// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed May  7 19:21:14 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_vio_0_0_stub.v
// Design      : bachelor_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2023.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_in5, probe_in6, probe_in7, probe_in8, probe_out0, probe_out1, probe_out2, 
  probe_out3, probe_out4, probe_out5, probe_out6, probe_out7, probe_out8, probe_out9, 
  probe_out10, probe_out11)
/* synthesis syn_black_box black_box_pad_pin="probe_in0[0:0],probe_in1[127:0],probe_in2[127:0],probe_in3[31:0],probe_in4[127:0],probe_in5[127:0],probe_in6[31:0],probe_in7[0:0],probe_in8[0:0],probe_out0[95:0],probe_out1[95:0],probe_out2[23:0],probe_out3[95:0],probe_out4[95:0],probe_out5[23:0],probe_out6[23:0],probe_out7[23:0],probe_out8[5:0],probe_out9[1:0],probe_out10[31:0],probe_out11[31:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [0:0]probe_in0;
  input [127:0]probe_in1;
  input [127:0]probe_in2;
  input [31:0]probe_in3;
  input [127:0]probe_in4;
  input [127:0]probe_in5;
  input [31:0]probe_in6;
  input [0:0]probe_in7;
  input [0:0]probe_in8;
  output [95:0]probe_out0;
  output [95:0]probe_out1;
  output [23:0]probe_out2;
  output [95:0]probe_out3;
  output [95:0]probe_out4;
  output [23:0]probe_out5;
  output [23:0]probe_out6;
  output [23:0]probe_out7;
  output [5:0]probe_out8;
  output [1:0]probe_out9;
  output [31:0]probe_out10;
  output [31:0]probe_out11;
endmodule
