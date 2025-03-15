//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Mar 15 19:46:43 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor.bd
//Design      : bachelor
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bachelor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bachelor,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=4,synth_mode=None}" *) (* HW_HANDOFF = "bachelor.hwdef" *) 
module bachelor
   (clk_100MHz,
    reset_rtl_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_100MHZ, CLK_DOMAIN bachelor_clk_100MHz, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_100MHz;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl_0;

  wire MATRIX_VECTOR_0_matrix_vector_done;
  wire [23:0]MATRIX_VECTOR_0_matrix_vector_result_btint_a;
  wire [23:0]MATRIX_VECTOR_0_matrix_vector_result_btint_b;
  wire [5:0]MATRIX_VECTOR_0_matrix_vector_result_overflow;
  wire Net;
  wire clk_100MHz;
  wire reset_rtl_0;
  wire [0:0]vio_0_probe_out0;
  wire [0:0]vio_0_probe_out1;
  wire [95:0]vio_0_probe_out2;
  wire [95:0]vio_0_probe_out3;
  wire [23:0]vio_0_probe_out4;
  wire [31:0]vio_0_probe_out5;
  wire [31:0]vio_0_probe_out6;
  wire [7:0]vio_0_probe_out7;

  bachelor_MATRIX_VECTOR_0_1 MATRIX_VECTOR_0
       (.matrix_vector_clock(Net),
        .matrix_vector_done(MATRIX_VECTOR_0_matrix_vector_done),
        .matrix_vector_matrix_btint_a(vio_0_probe_out2),
        .matrix_vector_matrix_btint_b(vio_0_probe_out3),
        .matrix_vector_matrix_overflow(vio_0_probe_out4),
        .matrix_vector_reset(vio_0_probe_out0),
        .matrix_vector_result_btint_a(MATRIX_VECTOR_0_matrix_vector_result_btint_a),
        .matrix_vector_result_btint_b(MATRIX_VECTOR_0_matrix_vector_result_btint_b),
        .matrix_vector_result_overflow(MATRIX_VECTOR_0_matrix_vector_result_overflow),
        .matrix_vector_valid(vio_0_probe_out1),
        .matrix_vector_vector_btint_a(vio_0_probe_out5),
        .matrix_vector_vector_btint_b(vio_0_probe_out6),
        .matrix_vector_vector_overflow(vio_0_probe_out7));
  bachelor_clk_wiz_3 clk_wiz
       (.clk_in1(clk_100MHz),
        .clk_out1(Net),
        .reset(reset_rtl_0));
  bachelor_vio_0_1 vio_0
       (.clk(Net),
        .probe_in0(MATRIX_VECTOR_0_matrix_vector_result_btint_a),
        .probe_in1(MATRIX_VECTOR_0_matrix_vector_result_btint_b),
        .probe_in2(MATRIX_VECTOR_0_matrix_vector_result_overflow),
        .probe_in3(MATRIX_VECTOR_0_matrix_vector_done),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out2(vio_0_probe_out2),
        .probe_out3(vio_0_probe_out3),
        .probe_out4(vio_0_probe_out4),
        .probe_out5(vio_0_probe_out5),
        .probe_out6(vio_0_probe_out6),
        .probe_out7(vio_0_probe_out7));
endmodule
