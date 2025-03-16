//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sun Mar 16 19:27:30 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor.bd
//Design      : bachelor
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bachelor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bachelor,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_board_cnt=4,da_clkrst_cnt=4,synth_mode=None}" *) (* HW_HANDOFF = "bachelor.hwdef" *) 
module bachelor
   (matrix_vector_clock,
    matrix_vector_reset,
    uart_transmitter_output);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MATRIX_VECTOR_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MATRIX_VECTOR_CLOCK, ASSOCIATED_RESET matrix_vector_reset, CLK_DOMAIN bachelor_matrix_vector_clock_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input matrix_vector_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MATRIX_VECTOR_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MATRIX_VECTOR_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input matrix_vector_reset;
  output uart_transmitter_output;

  wire MATRIX_VECTOR_0_matrix_vector_done;
  wire [23:0]MATRIX_VECTOR_0_matrix_vector_result_btint_a;
  wire [23:0]MATRIX_VECTOR_0_matrix_vector_result_btint_b;
  wire [5:0]MATRIX_VECTOR_0_matrix_vector_result_overflow;
  wire matrix_vector_clock_0_1;
  wire matrix_vector_reset;
  wire uart_transmitter_output;
  wire [0:0]vio_0_probe_out0;
  wire [95:0]vio_0_probe_out1;
  wire [95:0]vio_0_probe_out2;
  wire [23:0]vio_0_probe_out3;
  wire [31:0]vio_0_probe_out4;
  wire [31:0]vio_0_probe_out5;
  wire [7:0]vio_0_probe_out6;

  assign matrix_vector_clock_0_1 = matrix_vector_clock;
  bachelor_MATRIX_VECTOR_0_1 MATRIX_VECTOR_0
       (.matrix_vector_clock(matrix_vector_clock_0_1),
        .matrix_vector_done(MATRIX_VECTOR_0_matrix_vector_done),
        .matrix_vector_matrix_btint_a(vio_0_probe_out1),
        .matrix_vector_matrix_btint_b(vio_0_probe_out2),
        .matrix_vector_matrix_overflow(vio_0_probe_out3),
        .matrix_vector_reset(matrix_vector_reset),
        .matrix_vector_result_btint_a(MATRIX_VECTOR_0_matrix_vector_result_btint_a),
        .matrix_vector_result_btint_b(MATRIX_VECTOR_0_matrix_vector_result_btint_b),
        .matrix_vector_result_overflow(MATRIX_VECTOR_0_matrix_vector_result_overflow),
        .matrix_vector_valid(vio_0_probe_out0),
        .matrix_vector_vector_btint_a(vio_0_probe_out4),
        .matrix_vector_vector_btint_b(vio_0_probe_out5),
        .matrix_vector_vector_overflow(vio_0_probe_out6));
  bachelor_UART_TRANSMITTER_0_0 UART_TRANSMITTER_0
       (.uart_transmitter_clock(matrix_vector_clock_0_1),
        .uart_transmitter_input_btint_a(MATRIX_VECTOR_0_matrix_vector_result_btint_a),
        .uart_transmitter_input_btint_b(MATRIX_VECTOR_0_matrix_vector_result_btint_b),
        .uart_transmitter_input_overflow(MATRIX_VECTOR_0_matrix_vector_result_overflow),
        .uart_transmitter_output(uart_transmitter_output),
        .uart_transmitter_reset(MATRIX_VECTOR_0_matrix_vector_done));
  bachelor_vio_0_1 vio_0
       (.clk(matrix_vector_clock_0_1),
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
        .probe_out6(vio_0_probe_out6));
endmodule
