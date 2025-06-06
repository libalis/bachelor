//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
//Date        : Fri Jun  6 00:37:02 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor.bd
//Design      : bachelor
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bachelor,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bachelor,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "bachelor.hwdef" *) 
module bachelor
   (combined_operations_clock,
    combined_operations_done,
    combined_operations_reset,
    uart_transmitter_output_d,
    uart_transmitter_output_u);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.COMBINED_OPERATIONS_CLOCK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.COMBINED_OPERATIONS_CLOCK, ASSOCIATED_RESET combined_operations_reset, CLK_DOMAIN bachelor_combined_operations_clock_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input combined_operations_clock;
  output combined_operations_done;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.COMBINED_OPERATIONS_RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.COMBINED_OPERATIONS_RESET, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input combined_operations_reset;
  output uart_transmitter_output_d;
  output uart_transmitter_output_u;

  wire COMBINED_OPERATIONS_0_combined_operations_done;
  wire [127:0]COMBINED_OPERATIONS_0_combined_operations_result_d_btint_a;
  wire [127:0]COMBINED_OPERATIONS_0_combined_operations_result_d_btint_b;
  wire [31:0]COMBINED_OPERATIONS_0_combined_operations_result_d_overflow;
  wire [127:0]COMBINED_OPERATIONS_0_combined_operations_result_u_btint_a;
  wire [127:0]COMBINED_OPERATIONS_0_combined_operations_result_u_btint_b;
  wire [31:0]COMBINED_OPERATIONS_0_combined_operations_result_u_overflow;
  wire UART_TRANSMITTER_0_uart_transmitter_output;
  wire UART_TRANSMITTER_1_uart_transmitter_output;
  wire combined_operations_clock_0_1;
  wire combined_operations_reset_0_1;
  wire [95:0]vio_0_probe_out0;
  wire [95:0]vio_0_probe_out1;
  wire [31:0]vio_0_probe_out10;
  wire [31:0]vio_0_probe_out11;
  wire [23:0]vio_0_probe_out2;
  wire [95:0]vio_0_probe_out3;
  wire [95:0]vio_0_probe_out4;
  wire [23:0]vio_0_probe_out5;
  wire [23:0]vio_0_probe_out6;
  wire [23:0]vio_0_probe_out7;
  wire [5:0]vio_0_probe_out8;
  wire [1:0]vio_0_probe_out9;

  assign combined_operations_clock_0_1 = combined_operations_clock;
  assign combined_operations_done = COMBINED_OPERATIONS_0_combined_operations_done;
  assign combined_operations_reset_0_1 = combined_operations_reset;
  assign uart_transmitter_output_d = UART_TRANSMITTER_1_uart_transmitter_output;
  assign uart_transmitter_output_u = UART_TRANSMITTER_0_uart_transmitter_output;
  bachelor_COMBINED_OPERATIONS_0_0 COMBINED_OPERATIONS_0
       (.combined_operations_clock(combined_operations_clock_0_1),
        .combined_operations_done(COMBINED_OPERATIONS_0_combined_operations_done),
        .combined_operations_m_a_btint_a(vio_0_probe_out0),
        .combined_operations_m_a_btint_b(vio_0_probe_out1),
        .combined_operations_m_a_overflow(vio_0_probe_out2),
        .combined_operations_m_b_btint_a(vio_0_probe_out3),
        .combined_operations_m_b_btint_b(vio_0_probe_out4),
        .combined_operations_m_b_overflow(vio_0_probe_out5),
        .combined_operations_op(vio_0_probe_out9),
        .combined_operations_reset(combined_operations_reset_0_1),
        .combined_operations_result_d_btint_a(COMBINED_OPERATIONS_0_combined_operations_result_d_btint_a),
        .combined_operations_result_d_btint_b(COMBINED_OPERATIONS_0_combined_operations_result_d_btint_b),
        .combined_operations_result_d_overflow(COMBINED_OPERATIONS_0_combined_operations_result_d_overflow),
        .combined_operations_result_u_btint_a(COMBINED_OPERATIONS_0_combined_operations_result_u_btint_a),
        .combined_operations_result_u_btint_b(COMBINED_OPERATIONS_0_combined_operations_result_u_btint_b),
        .combined_operations_result_u_overflow(COMBINED_OPERATIONS_0_combined_operations_result_u_overflow),
        .combined_operations_v_btint_a(vio_0_probe_out6),
        .combined_operations_v_btint_b(vio_0_probe_out7),
        .combined_operations_v_overflow(vio_0_probe_out8));
  bachelor_UART_TRANSMITTER_0_0 UART_TRANSMITTER_0
       (.uart_transmitter_clock(combined_operations_clock_0_1),
        .uart_transmitter_column(vio_0_probe_out10),
        .uart_transmitter_input_btint_a(COMBINED_OPERATIONS_0_combined_operations_result_u_btint_a),
        .uart_transmitter_input_btint_b(COMBINED_OPERATIONS_0_combined_operations_result_u_btint_b),
        .uart_transmitter_input_overflow(COMBINED_OPERATIONS_0_combined_operations_result_u_overflow),
        .uart_transmitter_output(UART_TRANSMITTER_0_uart_transmitter_output),
        .uart_transmitter_reset_active_low(COMBINED_OPERATIONS_0_combined_operations_done));
  bachelor_UART_TRANSMITTER_1_0 UART_TRANSMITTER_1
       (.uart_transmitter_clock(combined_operations_clock_0_1),
        .uart_transmitter_column(vio_0_probe_out11),
        .uart_transmitter_input_btint_a(COMBINED_OPERATIONS_0_combined_operations_result_d_btint_a),
        .uart_transmitter_input_btint_b(COMBINED_OPERATIONS_0_combined_operations_result_d_btint_b),
        .uart_transmitter_input_overflow(COMBINED_OPERATIONS_0_combined_operations_result_d_overflow),
        .uart_transmitter_output(UART_TRANSMITTER_1_uart_transmitter_output),
        .uart_transmitter_reset_active_low(COMBINED_OPERATIONS_0_combined_operations_done));
  bachelor_vio_0_0 vio_0
       (.clk(combined_operations_clock_0_1),
        .probe_in0(COMBINED_OPERATIONS_0_combined_operations_done),
        .probe_in1(COMBINED_OPERATIONS_0_combined_operations_result_u_btint_a),
        .probe_in2(COMBINED_OPERATIONS_0_combined_operations_result_u_btint_b),
        .probe_in3(COMBINED_OPERATIONS_0_combined_operations_result_u_overflow),
        .probe_in4(COMBINED_OPERATIONS_0_combined_operations_result_d_btint_a),
        .probe_in5(COMBINED_OPERATIONS_0_combined_operations_result_d_btint_b),
        .probe_in6(COMBINED_OPERATIONS_0_combined_operations_result_d_overflow),
        .probe_in7(UART_TRANSMITTER_0_uart_transmitter_output),
        .probe_in8(UART_TRANSMITTER_1_uart_transmitter_output),
        .probe_out0(vio_0_probe_out0),
        .probe_out1(vio_0_probe_out1),
        .probe_out10(vio_0_probe_out10),
        .probe_out11(vio_0_probe_out11),
        .probe_out2(vio_0_probe_out2),
        .probe_out3(vio_0_probe_out3),
        .probe_out4(vio_0_probe_out4),
        .probe_out5(vio_0_probe_out5),
        .probe_out6(vio_0_probe_out6),
        .probe_out7(vio_0_probe_out7),
        .probe_out8(vio_0_probe_out8),
        .probe_out9(vio_0_probe_out9));
endmodule
