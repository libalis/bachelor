// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Fri Mar 21 18:55:11 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/robert/Downloads/Bachelor/Vivado/Vivado.gen/sources_1/bd/bachelor/ip/bachelor_vio_0_0/bachelor_vio_0_0_stub.v
// Design      : bachelor_vio_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2023.2" *)
module bachelor_vio_0_0(clk, probe_in0, probe_in1, probe_in2, probe_in3, 
  probe_in4, probe_out0, probe_out1, probe_out2, probe_out3, probe_out4, probe_out5, probe_out6)
/* synthesis syn_black_box black_box_pad_pin="probe_in0[23:0],probe_in1[23:0],probe_in2[5:0],probe_in3[0:0],probe_in4[0:0],probe_out0[0:0],probe_out1[95:0],probe_out2[95:0],probe_out3[23:0],probe_out4[31:0],probe_out5[31:0],probe_out6[7:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [23:0]probe_in0;
  input [23:0]probe_in1;
  input [5:0]probe_in2;
  input [0:0]probe_in3;
  input [0:0]probe_in4;
  output [0:0]probe_out0;
  output [95:0]probe_out1;
  output [95:0]probe_out2;
  output [23:0]probe_out3;
  output [31:0]probe_out4;
  output [31:0]probe_out5;
  output [7:0]probe_out6;
endmodule
