// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Wed May  7 19:20:28 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/robert/Downloads/Bachelor/Vivado/Vivado.gen/sources_1/bd/bachelor/ip/bachelor_UART_TRANSMITTER_1_0/bachelor_UART_TRANSMITTER_1_0_sim_netlist.v
// Design      : bachelor_UART_TRANSMITTER_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "bachelor_UART_TRANSMITTER_1_0,UART_TRANSMITTER,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UART_TRANSMITTER,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module bachelor_UART_TRANSMITTER_1_0
   (uart_transmitter_clock,
    uart_transmitter_reset_active_low,
    uart_transmitter_input_btint_a,
    uart_transmitter_input_btint_b,
    uart_transmitter_input_overflow,
    uart_transmitter_column,
    uart_transmitter_output);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 uart_transmitter_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME uart_transmitter_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bachelor_combined_operations_clock_0, INSERT_VIP 0" *) input uart_transmitter_clock;
  input uart_transmitter_reset_active_low;
  input [127:0]uart_transmitter_input_btint_a;
  input [127:0]uart_transmitter_input_btint_b;
  input [31:0]uart_transmitter_input_overflow;
  input [31:0]uart_transmitter_column;
  output uart_transmitter_output;

  wire uart_transmitter_clock;
  wire [31:0]uart_transmitter_column;
  wire [127:0]uart_transmitter_input_btint_a;
  wire [127:0]uart_transmitter_input_btint_b;
  wire uart_transmitter_output;
  wire uart_transmitter_reset_active_low;

  bachelor_UART_TRANSMITTER_1_0_UART_TRANSMITTER inst
       (.uart_transmitter_clock(uart_transmitter_clock),
        .uart_transmitter_column(uart_transmitter_column[3:0]),
        .uart_transmitter_input_btint_a({uart_transmitter_input_btint_a[120],uart_transmitter_input_btint_a[112],uart_transmitter_input_btint_a[104],uart_transmitter_input_btint_a[96],uart_transmitter_input_btint_a[88],uart_transmitter_input_btint_a[80],uart_transmitter_input_btint_a[72],uart_transmitter_input_btint_a[64],uart_transmitter_input_btint_a[56],uart_transmitter_input_btint_a[48],uart_transmitter_input_btint_a[40],uart_transmitter_input_btint_a[32],uart_transmitter_input_btint_a[24],uart_transmitter_input_btint_a[16],uart_transmitter_input_btint_a[8],uart_transmitter_input_btint_a[0]}),
        .uart_transmitter_input_btint_b({uart_transmitter_input_btint_b[120],uart_transmitter_input_btint_b[112],uart_transmitter_input_btint_b[104],uart_transmitter_input_btint_b[96],uart_transmitter_input_btint_b[88],uart_transmitter_input_btint_b[80],uart_transmitter_input_btint_b[72],uart_transmitter_input_btint_b[64],uart_transmitter_input_btint_b[56],uart_transmitter_input_btint_b[48],uart_transmitter_input_btint_b[40],uart_transmitter_input_btint_b[32],uart_transmitter_input_btint_b[24],uart_transmitter_input_btint_b[16],uart_transmitter_input_btint_b[8],uart_transmitter_input_btint_b[0]}),
        .uart_transmitter_output(uart_transmitter_output),
        .uart_transmitter_reset_active_low(uart_transmitter_reset_active_low));
endmodule

(* ORIG_REF_NAME = "UART_TRANSMITTER" *) 
module bachelor_UART_TRANSMITTER_1_0_UART_TRANSMITTER
   (uart_transmitter_output,
    uart_transmitter_reset_active_low,
    uart_transmitter_clock,
    uart_transmitter_column,
    uart_transmitter_input_btint_b,
    uart_transmitter_input_btint_a);
  output uart_transmitter_output;
  input uart_transmitter_reset_active_low;
  input uart_transmitter_clock;
  input [3:0]uart_transmitter_column;
  input [15:0]uart_transmitter_input_btint_b;
  input [15:0]uart_transmitter_input_btint_a;

  wire \FSM_sequential_transmit_PROC_STATE[0]_i_1_n_0 ;
  wire \FSM_sequential_transmit_PROC_STATE[1]_i_1_n_0 ;
  wire \FSM_sequential_transmit_PROC_STATE[2]_i_1_n_0 ;
  wire i;
  wire \i[0]_i_1_n_0 ;
  wire \i[31]_i_10_n_0 ;
  wire \i[31]_i_11_n_0 ;
  wire \i[31]_i_12_n_0 ;
  wire \i[31]_i_13_n_0 ;
  wire \i[31]_i_15_n_0 ;
  wire \i[31]_i_16_n_0 ;
  wire \i[31]_i_17_n_0 ;
  wire \i[31]_i_18_n_0 ;
  wire \i[31]_i_19_n_0 ;
  wire \i[31]_i_1_n_0 ;
  wire \i[31]_i_20_n_0 ;
  wire \i[31]_i_21_n_0 ;
  wire \i[31]_i_22_n_0 ;
  wire \i[31]_i_23_n_0 ;
  wire \i[31]_i_6_n_0 ;
  wire \i[31]_i_7_n_0 ;
  wire \i[31]_i_8_n_0 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_0 ;
  wire \i_reg[28]_i_1_n_1 ;
  wire \i_reg[28]_i_1_n_2 ;
  wire \i_reg[28]_i_1_n_3 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[31]_i_14_n_0 ;
  wire \i_reg[31]_i_14_n_1 ;
  wire \i_reg[31]_i_14_n_2 ;
  wire \i_reg[31]_i_14_n_3 ;
  wire \i_reg[31]_i_3_n_2 ;
  wire \i_reg[31]_i_3_n_3 ;
  wire \i_reg[31]_i_3_n_5 ;
  wire \i_reg[31]_i_3_n_6 ;
  wire \i_reg[31]_i_3_n_7 ;
  wire \i_reg[31]_i_4_n_1 ;
  wire \i_reg[31]_i_4_n_2 ;
  wire \i_reg[31]_i_4_n_3 ;
  wire \i_reg[31]_i_5_n_0 ;
  wire \i_reg[31]_i_5_n_1 ;
  wire \i_reg[31]_i_5_n_2 ;
  wire \i_reg[31]_i_5_n_3 ;
  wire \i_reg[31]_i_9_n_0 ;
  wire \i_reg[31]_i_9_n_1 ;
  wire \i_reg[31]_i_9_n_2 ;
  wire \i_reg[31]_i_9_n_3 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire \i_reg_n_0_[0] ;
  wire \i_reg_n_0_[10] ;
  wire \i_reg_n_0_[11] ;
  wire \i_reg_n_0_[12] ;
  wire \i_reg_n_0_[13] ;
  wire \i_reg_n_0_[14] ;
  wire \i_reg_n_0_[15] ;
  wire \i_reg_n_0_[16] ;
  wire \i_reg_n_0_[17] ;
  wire \i_reg_n_0_[18] ;
  wire \i_reg_n_0_[19] ;
  wire \i_reg_n_0_[1] ;
  wire \i_reg_n_0_[20] ;
  wire \i_reg_n_0_[21] ;
  wire \i_reg_n_0_[22] ;
  wire \i_reg_n_0_[23] ;
  wire \i_reg_n_0_[24] ;
  wire \i_reg_n_0_[25] ;
  wire \i_reg_n_0_[26] ;
  wire \i_reg_n_0_[27] ;
  wire \i_reg_n_0_[28] ;
  wire \i_reg_n_0_[29] ;
  wire \i_reg_n_0_[2] ;
  wire \i_reg_n_0_[30] ;
  wire \i_reg_n_0_[31] ;
  wire \i_reg_n_0_[3] ;
  wire \i_reg_n_0_[4] ;
  wire \i_reg_n_0_[5] ;
  wire \i_reg_n_0_[6] ;
  wire \i_reg_n_0_[7] ;
  wire \i_reg_n_0_[8] ;
  wire \i_reg_n_0_[9] ;
  wire [31:1]in12;
  wire [31:1]in22;
  wire [24:0]input_btint_a;
  wire \input_btint_a[0]_i_1_n_0 ;
  wire \input_btint_a[0]_i_3_n_0 ;
  wire \input_btint_a[16]_i_1_n_0 ;
  wire \input_btint_a[16]_i_2_n_0 ;
  wire \input_btint_a[16]_i_3_n_0 ;
  wire \input_btint_a[16]_i_5_n_0 ;
  wire \input_btint_a[24]_i_10_n_0 ;
  wire \input_btint_a[24]_i_11_n_0 ;
  wire \input_btint_a[24]_i_12_n_0 ;
  wire \input_btint_a[24]_i_13_n_0 ;
  wire \input_btint_a[24]_i_14_n_0 ;
  wire \input_btint_a[24]_i_1_n_0 ;
  wire \input_btint_a[24]_i_2_n_0 ;
  wire \input_btint_a[24]_i_3_n_0 ;
  wire \input_btint_a[24]_i_5_n_0 ;
  wire \input_btint_a[24]_i_6_n_0 ;
  wire \input_btint_a[24]_i_7_n_0 ;
  wire \input_btint_a[24]_i_8_n_0 ;
  wire \input_btint_a[24]_i_9_n_0 ;
  wire \input_btint_a[8]_i_1_n_0 ;
  wire \input_btint_a[8]_i_3_n_0 ;
  wire \input_btint_a_reg_n_0_[0] ;
  wire \input_btint_a_reg_n_0_[16] ;
  wire \input_btint_a_reg_n_0_[24] ;
  wire \input_btint_a_reg_n_0_[8] ;
  wire [24:0]input_btint_b;
  wire \input_btint_b[0]_i_1_n_0 ;
  wire \input_btint_b[16]_i_1_n_0 ;
  wire \input_btint_b[16]_i_2_n_0 ;
  wire \input_btint_b[16]_i_3_n_0 ;
  wire \input_btint_b[24]_i_10_n_0 ;
  wire \input_btint_b[24]_i_11_n_0 ;
  wire \input_btint_b[24]_i_1_n_0 ;
  wire \input_btint_b[24]_i_2_n_0 ;
  wire \input_btint_b[24]_i_3_n_0 ;
  wire \input_btint_b[24]_i_4_n_0 ;
  wire \input_btint_b[24]_i_5_n_0 ;
  wire \input_btint_b[24]_i_6_n_0 ;
  wire \input_btint_b[24]_i_7_n_0 ;
  wire \input_btint_b[24]_i_8_n_0 ;
  wire \input_btint_b[24]_i_9_n_0 ;
  wire \input_btint_b[8]_i_1_n_0 ;
  wire j;
  wire \j[12]_i_2_n_0 ;
  wire \j[12]_i_3_n_0 ;
  wire \j[12]_i_4_n_0 ;
  wire \j[12]_i_5_n_0 ;
  wire \j[16]_i_2_n_0 ;
  wire \j[16]_i_3_n_0 ;
  wire \j[16]_i_4_n_0 ;
  wire \j[16]_i_5_n_0 ;
  wire \j[1]_i_1_n_0 ;
  wire \j[20]_i_2_n_0 ;
  wire \j[20]_i_3_n_0 ;
  wire \j[20]_i_4_n_0 ;
  wire \j[20]_i_5_n_0 ;
  wire \j[24]_i_2_n_0 ;
  wire \j[24]_i_3_n_0 ;
  wire \j[24]_i_4_n_0 ;
  wire \j[24]_i_5_n_0 ;
  wire \j[28]_i_2_n_0 ;
  wire \j[28]_i_3_n_0 ;
  wire \j[28]_i_4_n_0 ;
  wire \j[28]_i_5_n_0 ;
  wire \j[2]_i_1_n_0 ;
  wire \j[2]_i_2_n_0 ;
  wire \j[30]_i_1_n_0 ;
  wire \j[30]_i_4_n_0 ;
  wire \j[30]_i_5_n_0 ;
  wire \j[4]_i_2_n_0 ;
  wire \j[4]_i_3_n_0 ;
  wire \j[4]_i_4_n_0 ;
  wire \j[8]_i_2_n_0 ;
  wire \j[8]_i_3_n_0 ;
  wire \j[8]_i_4_n_0 ;
  wire \j[8]_i_5_n_0 ;
  wire \j_reg[12]_i_1_n_0 ;
  wire \j_reg[12]_i_1_n_1 ;
  wire \j_reg[12]_i_1_n_2 ;
  wire \j_reg[12]_i_1_n_3 ;
  wire \j_reg[16]_i_1_n_0 ;
  wire \j_reg[16]_i_1_n_1 ;
  wire \j_reg[16]_i_1_n_2 ;
  wire \j_reg[16]_i_1_n_3 ;
  wire \j_reg[20]_i_1_n_0 ;
  wire \j_reg[20]_i_1_n_1 ;
  wire \j_reg[20]_i_1_n_2 ;
  wire \j_reg[20]_i_1_n_3 ;
  wire \j_reg[24]_i_1_n_0 ;
  wire \j_reg[24]_i_1_n_1 ;
  wire \j_reg[24]_i_1_n_2 ;
  wire \j_reg[24]_i_1_n_3 ;
  wire \j_reg[28]_i_1_n_0 ;
  wire \j_reg[28]_i_1_n_1 ;
  wire \j_reg[28]_i_1_n_2 ;
  wire \j_reg[28]_i_1_n_3 ;
  wire \j_reg[30]_i_3_n_1 ;
  wire \j_reg[30]_i_3_n_3 ;
  wire \j_reg[4]_i_1_n_0 ;
  wire \j_reg[4]_i_1_n_1 ;
  wire \j_reg[4]_i_1_n_2 ;
  wire \j_reg[4]_i_1_n_3 ;
  wire \j_reg[8]_i_1_n_0 ;
  wire \j_reg[8]_i_1_n_1 ;
  wire \j_reg[8]_i_1_n_2 ;
  wire \j_reg[8]_i_1_n_3 ;
  wire \j_reg_n_0_[10] ;
  wire \j_reg_n_0_[11] ;
  wire \j_reg_n_0_[12] ;
  wire \j_reg_n_0_[13] ;
  wire \j_reg_n_0_[14] ;
  wire \j_reg_n_0_[15] ;
  wire \j_reg_n_0_[16] ;
  wire \j_reg_n_0_[17] ;
  wire \j_reg_n_0_[18] ;
  wire \j_reg_n_0_[19] ;
  wire \j_reg_n_0_[1] ;
  wire \j_reg_n_0_[20] ;
  wire \j_reg_n_0_[21] ;
  wire \j_reg_n_0_[22] ;
  wire \j_reg_n_0_[23] ;
  wire \j_reg_n_0_[24] ;
  wire \j_reg_n_0_[25] ;
  wire \j_reg_n_0_[26] ;
  wire \j_reg_n_0_[27] ;
  wire \j_reg_n_0_[28] ;
  wire \j_reg_n_0_[29] ;
  wire \j_reg_n_0_[2] ;
  wire \j_reg_n_0_[30] ;
  wire \j_reg_n_0_[3] ;
  wire \j_reg_n_0_[4] ;
  wire \j_reg_n_0_[5] ;
  wire \j_reg_n_0_[6] ;
  wire \j_reg_n_0_[7] ;
  wire \j_reg_n_0_[8] ;
  wire \j_reg_n_0_[9] ;
  wire k;
  wire k0;
  wire \k0[0]_i_1_n_0 ;
  wire \k0[31]_i_1_n_0 ;
  wire \k0_reg[12]_i_1_n_0 ;
  wire \k0_reg[12]_i_1_n_1 ;
  wire \k0_reg[12]_i_1_n_2 ;
  wire \k0_reg[12]_i_1_n_3 ;
  wire \k0_reg[16]_i_1_n_0 ;
  wire \k0_reg[16]_i_1_n_1 ;
  wire \k0_reg[16]_i_1_n_2 ;
  wire \k0_reg[16]_i_1_n_3 ;
  wire \k0_reg[20]_i_1_n_0 ;
  wire \k0_reg[20]_i_1_n_1 ;
  wire \k0_reg[20]_i_1_n_2 ;
  wire \k0_reg[20]_i_1_n_3 ;
  wire \k0_reg[24]_i_1_n_0 ;
  wire \k0_reg[24]_i_1_n_1 ;
  wire \k0_reg[24]_i_1_n_2 ;
  wire \k0_reg[24]_i_1_n_3 ;
  wire \k0_reg[28]_i_1_n_0 ;
  wire \k0_reg[28]_i_1_n_1 ;
  wire \k0_reg[28]_i_1_n_2 ;
  wire \k0_reg[28]_i_1_n_3 ;
  wire \k0_reg[31]_i_3_n_2 ;
  wire \k0_reg[31]_i_3_n_3 ;
  wire \k0_reg[4]_i_1_n_0 ;
  wire \k0_reg[4]_i_1_n_1 ;
  wire \k0_reg[4]_i_1_n_2 ;
  wire \k0_reg[4]_i_1_n_3 ;
  wire \k0_reg[8]_i_1_n_0 ;
  wire \k0_reg[8]_i_1_n_1 ;
  wire \k0_reg[8]_i_1_n_2 ;
  wire \k0_reg[8]_i_1_n_3 ;
  wire \k0_reg_n_0_[0] ;
  wire \k0_reg_n_0_[10] ;
  wire \k0_reg_n_0_[11] ;
  wire \k0_reg_n_0_[12] ;
  wire \k0_reg_n_0_[13] ;
  wire \k0_reg_n_0_[14] ;
  wire \k0_reg_n_0_[15] ;
  wire \k0_reg_n_0_[16] ;
  wire \k0_reg_n_0_[17] ;
  wire \k0_reg_n_0_[18] ;
  wire \k0_reg_n_0_[19] ;
  wire \k0_reg_n_0_[1] ;
  wire \k0_reg_n_0_[20] ;
  wire \k0_reg_n_0_[21] ;
  wire \k0_reg_n_0_[22] ;
  wire \k0_reg_n_0_[23] ;
  wire \k0_reg_n_0_[24] ;
  wire \k0_reg_n_0_[25] ;
  wire \k0_reg_n_0_[26] ;
  wire \k0_reg_n_0_[27] ;
  wire \k0_reg_n_0_[28] ;
  wire \k0_reg_n_0_[29] ;
  wire \k0_reg_n_0_[2] ;
  wire \k0_reg_n_0_[30] ;
  wire \k0_reg_n_0_[31] ;
  wire \k0_reg_n_0_[3] ;
  wire \k0_reg_n_0_[4] ;
  wire \k0_reg_n_0_[5] ;
  wire \k0_reg_n_0_[6] ;
  wire \k0_reg_n_0_[7] ;
  wire \k0_reg_n_0_[8] ;
  wire \k0_reg_n_0_[9] ;
  wire \k[0]_i_1_n_0 ;
  wire \k[31]_i_1_n_0 ;
  wire \k_reg[12]_i_1_n_0 ;
  wire \k_reg[12]_i_1_n_1 ;
  wire \k_reg[12]_i_1_n_2 ;
  wire \k_reg[12]_i_1_n_3 ;
  wire \k_reg[16]_i_1_n_0 ;
  wire \k_reg[16]_i_1_n_1 ;
  wire \k_reg[16]_i_1_n_2 ;
  wire \k_reg[16]_i_1_n_3 ;
  wire \k_reg[20]_i_1_n_0 ;
  wire \k_reg[20]_i_1_n_1 ;
  wire \k_reg[20]_i_1_n_2 ;
  wire \k_reg[20]_i_1_n_3 ;
  wire \k_reg[24]_i_1_n_0 ;
  wire \k_reg[24]_i_1_n_1 ;
  wire \k_reg[24]_i_1_n_2 ;
  wire \k_reg[24]_i_1_n_3 ;
  wire \k_reg[28]_i_1_n_0 ;
  wire \k_reg[28]_i_1_n_1 ;
  wire \k_reg[28]_i_1_n_2 ;
  wire \k_reg[28]_i_1_n_3 ;
  wire \k_reg[31]_i_3_n_2 ;
  wire \k_reg[31]_i_3_n_3 ;
  wire \k_reg[4]_i_1_n_0 ;
  wire \k_reg[4]_i_1_n_1 ;
  wire \k_reg[4]_i_1_n_2 ;
  wire \k_reg[4]_i_1_n_3 ;
  wire \k_reg[8]_i_1_n_0 ;
  wire \k_reg[8]_i_1_n_1 ;
  wire \k_reg[8]_i_1_n_2 ;
  wire \k_reg[8]_i_1_n_3 ;
  wire \k_reg_n_0_[0] ;
  wire \k_reg_n_0_[10] ;
  wire \k_reg_n_0_[11] ;
  wire \k_reg_n_0_[12] ;
  wire \k_reg_n_0_[13] ;
  wire \k_reg_n_0_[14] ;
  wire \k_reg_n_0_[15] ;
  wire \k_reg_n_0_[16] ;
  wire \k_reg_n_0_[17] ;
  wire \k_reg_n_0_[18] ;
  wire \k_reg_n_0_[19] ;
  wire \k_reg_n_0_[1] ;
  wire \k_reg_n_0_[20] ;
  wire \k_reg_n_0_[21] ;
  wire \k_reg_n_0_[22] ;
  wire \k_reg_n_0_[23] ;
  wire \k_reg_n_0_[24] ;
  wire \k_reg_n_0_[25] ;
  wire \k_reg_n_0_[26] ;
  wire \k_reg_n_0_[27] ;
  wire \k_reg_n_0_[28] ;
  wire \k_reg_n_0_[29] ;
  wire \k_reg_n_0_[2] ;
  wire \k_reg_n_0_[30] ;
  wire \k_reg_n_0_[31] ;
  wire \k_reg_n_0_[3] ;
  wire \k_reg_n_0_[4] ;
  wire \k_reg_n_0_[5] ;
  wire \k_reg_n_0_[6] ;
  wire \k_reg_n_0_[7] ;
  wire \k_reg_n_0_[8] ;
  wire \k_reg_n_0_[9] ;
  wire p_4_in;
  wire [2:0]transmit_PROC_STATE;
  wire uart_transmitter_clock;
  wire [3:0]uart_transmitter_column;
  wire [15:0]uart_transmitter_input_btint_a;
  wire [15:0]uart_transmitter_input_btint_b;
  wire uart_transmitter_output;
  wire uart_transmitter_output_i_10_n_0;
  wire uart_transmitter_output_i_12_n_0;
  wire uart_transmitter_output_i_13_n_0;
  wire uart_transmitter_output_i_14_n_0;
  wire uart_transmitter_output_i_15_n_0;
  wire uart_transmitter_output_i_16_n_0;
  wire uart_transmitter_output_i_17_n_0;
  wire uart_transmitter_output_i_18_n_0;
  wire uart_transmitter_output_i_1_n_0;
  wire uart_transmitter_output_i_20_n_0;
  wire uart_transmitter_output_i_21_n_0;
  wire uart_transmitter_output_i_22_n_0;
  wire uart_transmitter_output_i_23_n_0;
  wire uart_transmitter_output_i_25_n_0;
  wire uart_transmitter_output_i_26_n_0;
  wire uart_transmitter_output_i_27_n_0;
  wire uart_transmitter_output_i_28_n_0;
  wire uart_transmitter_output_i_2_n_0;
  wire uart_transmitter_output_i_30_n_0;
  wire uart_transmitter_output_i_31_n_0;
  wire uart_transmitter_output_i_32_n_0;
  wire uart_transmitter_output_i_33_n_0;
  wire uart_transmitter_output_i_35_n_0;
  wire uart_transmitter_output_i_36_n_0;
  wire uart_transmitter_output_i_37_n_0;
  wire uart_transmitter_output_i_38_n_0;
  wire uart_transmitter_output_i_39_n_0;
  wire uart_transmitter_output_i_40_n_0;
  wire uart_transmitter_output_i_41_n_0;
  wire uart_transmitter_output_i_42_n_0;
  wire uart_transmitter_output_i_43_n_0;
  wire uart_transmitter_output_i_44_n_0;
  wire uart_transmitter_output_i_45_n_0;
  wire uart_transmitter_output_i_46_n_0;
  wire uart_transmitter_output_i_47_n_0;
  wire uart_transmitter_output_i_48_n_0;
  wire uart_transmitter_output_i_6_n_0;
  wire uart_transmitter_output_i_8_n_0;
  wire uart_transmitter_output_i_9_n_0;
  wire uart_transmitter_output_next;
  wire [30:1]uart_transmitter_output_next2;
  wire uart_transmitter_output_reg_i_11_n_0;
  wire uart_transmitter_output_reg_i_11_n_1;
  wire uart_transmitter_output_reg_i_11_n_2;
  wire uart_transmitter_output_reg_i_11_n_3;
  wire uart_transmitter_output_reg_i_19_n_0;
  wire uart_transmitter_output_reg_i_19_n_1;
  wire uart_transmitter_output_reg_i_19_n_2;
  wire uart_transmitter_output_reg_i_19_n_3;
  wire uart_transmitter_output_reg_i_24_n_0;
  wire uart_transmitter_output_reg_i_24_n_1;
  wire uart_transmitter_output_reg_i_24_n_2;
  wire uart_transmitter_output_reg_i_24_n_3;
  wire uart_transmitter_output_reg_i_29_n_0;
  wire uart_transmitter_output_reg_i_29_n_1;
  wire uart_transmitter_output_reg_i_29_n_2;
  wire uart_transmitter_output_reg_i_29_n_3;
  wire uart_transmitter_output_reg_i_34_n_0;
  wire uart_transmitter_output_reg_i_34_n_1;
  wire uart_transmitter_output_reg_i_34_n_2;
  wire uart_transmitter_output_reg_i_34_n_3;
  wire uart_transmitter_output_reg_i_4_n_1;
  wire uart_transmitter_output_reg_i_4_n_2;
  wire uart_transmitter_output_reg_i_4_n_3;
  wire uart_transmitter_output_reg_i_5_n_1;
  wire uart_transmitter_output_reg_i_5_n_2;
  wire uart_transmitter_output_reg_i_5_n_3;
  wire uart_transmitter_output_reg_i_7_n_0;
  wire uart_transmitter_output_reg_i_7_n_1;
  wire uart_transmitter_output_reg_i_7_n_2;
  wire uart_transmitter_output_reg_i_7_n_3;
  wire uart_transmitter_reset_active_low;
  wire [3:0]\NLW_i_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_i_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[31]_i_9_O_UNCONNECTED ;
  wire [3:1]\NLW_j_reg[30]_i_3_CO_UNCONNECTED ;
  wire [3:2]\NLW_j_reg[30]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_k0_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_k0_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:2]\NLW_k_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_k_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_uart_transmitter_output_reg_i_11_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_19_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_24_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_29_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_34_O_UNCONNECTED;
  wire [3:3]NLW_uart_transmitter_output_reg_i_4_CO_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_5_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_7_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h07)) 
    \FSM_sequential_transmit_PROC_STATE[0]_i_1 
       (.I0(p_4_in),
        .I1(transmit_PROC_STATE[2]),
        .I2(transmit_PROC_STATE[0]),
        .O(\FSM_sequential_transmit_PROC_STATE[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hBC)) 
    \FSM_sequential_transmit_PROC_STATE[1]_i_1 
       (.I0(uart_transmitter_output_reg_i_4_n_1),
        .I1(transmit_PROC_STATE[1]),
        .I2(transmit_PROC_STATE[0]),
        .O(\FSM_sequential_transmit_PROC_STATE[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0F008C88)) 
    \FSM_sequential_transmit_PROC_STATE[2]_i_1 
       (.I0(p_4_in),
        .I1(transmit_PROC_STATE[2]),
        .I2(uart_transmitter_output_reg_i_4_n_1),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[1]),
        .O(\FSM_sequential_transmit_PROC_STATE[2]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:100,iSTATE3:001" *) 
  FDRE \FSM_sequential_transmit_PROC_STATE_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(uart_transmitter_output_i_2_n_0),
        .D(\FSM_sequential_transmit_PROC_STATE[0]_i_1_n_0 ),
        .Q(transmit_PROC_STATE[0]),
        .R(uart_transmitter_output_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:100,iSTATE3:001" *) 
  FDRE \FSM_sequential_transmit_PROC_STATE_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(uart_transmitter_output_i_2_n_0),
        .D(\FSM_sequential_transmit_PROC_STATE[1]_i_1_n_0 ),
        .Q(transmit_PROC_STATE[1]),
        .R(uart_transmitter_output_i_1_n_0));
  (* FSM_ENCODED_STATES = "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:100,iSTATE3:001" *) 
  FDRE \FSM_sequential_transmit_PROC_STATE_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(uart_transmitter_output_i_2_n_0),
        .D(\FSM_sequential_transmit_PROC_STATE[2]_i_1_n_0 ),
        .Q(transmit_PROC_STATE[2]),
        .R(uart_transmitter_output_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000200)) 
    \i[0]_i_1 
       (.I0(\i_reg[31]_i_4_n_1 ),
        .I1(transmit_PROC_STATE[1]),
        .I2(transmit_PROC_STATE[0]),
        .I3(transmit_PROC_STATE[2]),
        .I4(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAA2AAAA)) 
    \i[31]_i_1 
       (.I0(i),
        .I1(\i_reg[31]_i_4_n_1 ),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[2]),
        .O(\i[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_10 
       (.I0(\i_reg[24]_i_1_n_4 ),
        .I1(\i_reg[28]_i_1_n_7 ),
        .O(\i[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_11 
       (.I0(\i_reg[24]_i_1_n_6 ),
        .I1(\i_reg[24]_i_1_n_5 ),
        .O(\i[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_12 
       (.I0(\i_reg[20]_i_1_n_4 ),
        .I1(\i_reg[24]_i_1_n_7 ),
        .O(\i[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_13 
       (.I0(\i_reg[20]_i_1_n_6 ),
        .I1(\i_reg[20]_i_1_n_5 ),
        .O(\i[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_15 
       (.I0(\i_reg[16]_i_1_n_4 ),
        .I1(\i_reg[20]_i_1_n_7 ),
        .O(\i[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_16 
       (.I0(\i_reg[16]_i_1_n_6 ),
        .I1(\i_reg[16]_i_1_n_5 ),
        .O(\i[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_17 
       (.I0(\i_reg[12]_i_1_n_4 ),
        .I1(\i_reg[16]_i_1_n_7 ),
        .O(\i[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_18 
       (.I0(\i_reg[12]_i_1_n_6 ),
        .I1(\i_reg[12]_i_1_n_5 ),
        .O(\i[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_19 
       (.I0(\i_reg[4]_i_1_n_6 ),
        .I1(\i_reg[4]_i_1_n_5 ),
        .O(\i[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0100010001000300)) 
    \i[31]_i_2 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[1]),
        .I2(transmit_PROC_STATE[0]),
        .I3(uart_transmitter_reset_active_low),
        .I4(p_4_in),
        .I5(\j_reg[30]_i_3_n_1 ),
        .O(i));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_20 
       (.I0(\i_reg[8]_i_1_n_4 ),
        .I1(\i_reg[12]_i_1_n_7 ),
        .O(\i[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_21 
       (.I0(\i_reg[8]_i_1_n_6 ),
        .I1(\i_reg[8]_i_1_n_5 ),
        .O(\i[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_22 
       (.I0(\i_reg[4]_i_1_n_4 ),
        .I1(\i_reg[8]_i_1_n_7 ),
        .O(\i[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \i[31]_i_23 
       (.I0(\i_reg[4]_i_1_n_6 ),
        .I1(\i_reg[4]_i_1_n_5 ),
        .O(\i[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_6 
       (.I0(\i_reg[31]_i_3_n_6 ),
        .I1(\i_reg[31]_i_3_n_5 ),
        .O(\i[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_7 
       (.I0(\i_reg[28]_i_1_n_4 ),
        .I1(\i_reg[31]_i_3_n_7 ),
        .O(\i[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_8 
       (.I0(\i_reg[28]_i_1_n_6 ),
        .I1(\i_reg[28]_i_1_n_5 ),
        .O(\i[31]_i_8_n_0 ));
  FDRE \i_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \i_reg[10] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(\i_reg_n_0_[10] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(\i_reg_n_0_[11] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(\i_reg_n_0_[12] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S({\i_reg_n_0_[12] ,\i_reg_n_0_[11] ,\i_reg_n_0_[10] ,\i_reg_n_0_[9] }));
  FDRE \i_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(\i_reg_n_0_[13] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(\i_reg_n_0_[14] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(\i_reg_n_0_[15] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(\i_reg_n_0_[16] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S({\i_reg_n_0_[16] ,\i_reg_n_0_[15] ,\i_reg_n_0_[14] ,\i_reg_n_0_[13] }));
  FDRE \i_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(\i_reg_n_0_[17] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(\i_reg_n_0_[18] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(\i_reg_n_0_[19] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(\i_reg_n_0_[1] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(\i_reg_n_0_[20] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S({\i_reg_n_0_[20] ,\i_reg_n_0_[19] ,\i_reg_n_0_[18] ,\i_reg_n_0_[17] }));
  FDRE \i_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(\i_reg_n_0_[21] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(\i_reg_n_0_[22] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(\i_reg_n_0_[23] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(\i_reg_n_0_[24] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S({\i_reg_n_0_[24] ,\i_reg_n_0_[23] ,\i_reg_n_0_[22] ,\i_reg_n_0_[21] }));
  FDRE \i_reg[25] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(\i_reg_n_0_[25] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(\i_reg_n_0_[26] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(\i_reg_n_0_[27] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(\i_reg_n_0_[28] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO({\i_reg[28]_i_1_n_0 ,\i_reg[28]_i_1_n_1 ,\i_reg[28]_i_1_n_2 ,\i_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S({\i_reg_n_0_[28] ,\i_reg_n_0_[27] ,\i_reg_n_0_[26] ,\i_reg_n_0_[25] }));
  FDRE \i_reg[29] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[31]_i_3_n_7 ),
        .Q(\i_reg_n_0_[29] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(\i_reg_n_0_[2] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[30] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[31]_i_3_n_6 ),
        .Q(\i_reg_n_0_[30] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[31] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[31]_i_3_n_5 ),
        .Q(\i_reg_n_0_[31] ),
        .R(\i[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \i_reg[31]_i_14 
       (.CI(1'b0),
        .CO({\i_reg[31]_i_14_n_0 ,\i_reg[31]_i_14_n_1 ,\i_reg[31]_i_14_n_2 ,\i_reg[31]_i_14_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\i[31]_i_19_n_0 }),
        .O(\NLW_i_reg[31]_i_14_O_UNCONNECTED [3:0]),
        .S({\i[31]_i_20_n_0 ,\i[31]_i_21_n_0 ,\i[31]_i_22_n_0 ,\i[31]_i_23_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[31]_i_3 
       (.CI(\i_reg[28]_i_1_n_0 ),
        .CO({\NLW_i_reg[31]_i_3_CO_UNCONNECTED [3:2],\i_reg[31]_i_3_n_2 ,\i_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_reg[31]_i_3_O_UNCONNECTED [3],\i_reg[31]_i_3_n_5 ,\i_reg[31]_i_3_n_6 ,\i_reg[31]_i_3_n_7 }),
        .S({1'b0,\i_reg_n_0_[31] ,\i_reg_n_0_[30] ,\i_reg_n_0_[29] }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \i_reg[31]_i_4 
       (.CI(\i_reg[31]_i_5_n_0 ),
        .CO({\NLW_i_reg[31]_i_4_CO_UNCONNECTED [3],\i_reg[31]_i_4_n_1 ,\i_reg[31]_i_4_n_2 ,\i_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\i_reg[31]_i_3_n_5 ,1'b0,1'b0}),
        .O(\NLW_i_reg[31]_i_4_O_UNCONNECTED [3:0]),
        .S({1'b0,\i[31]_i_6_n_0 ,\i[31]_i_7_n_0 ,\i[31]_i_8_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \i_reg[31]_i_5 
       (.CI(\i_reg[31]_i_9_n_0 ),
        .CO({\i_reg[31]_i_5_n_0 ,\i_reg[31]_i_5_n_1 ,\i_reg[31]_i_5_n_2 ,\i_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_i_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({\i[31]_i_10_n_0 ,\i[31]_i_11_n_0 ,\i[31]_i_12_n_0 ,\i[31]_i_13_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \i_reg[31]_i_9 
       (.CI(\i_reg[31]_i_14_n_0 ),
        .CO({\i_reg[31]_i_9_n_0 ,\i_reg[31]_i_9_n_1 ,\i_reg[31]_i_9_n_2 ,\i_reg[31]_i_9_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_i_reg[31]_i_9_O_UNCONNECTED [3:0]),
        .S({\i[31]_i_15_n_0 ,\i[31]_i_16_n_0 ,\i[31]_i_17_n_0 ,\i[31]_i_18_n_0 }));
  FDRE \i_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(\i_reg_n_0_[3] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(\i_reg_n_0_[4] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(\i_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S({\i_reg_n_0_[4] ,\i_reg_n_0_[3] ,\i_reg_n_0_[2] ,\i_reg_n_0_[1] }));
  FDRE \i_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(\i_reg_n_0_[5] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(\i_reg_n_0_[6] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(\i_reg_n_0_[7] ),
        .R(\i[31]_i_1_n_0 ));
  FDRE \i_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(\i_reg_n_0_[8] ),
        .R(\i[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S({\i_reg_n_0_[8] ,\i_reg_n_0_[7] ,\i_reg_n_0_[6] ,\i_reg_n_0_[5] }));
  FDRE \i_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(\i_reg_n_0_[9] ),
        .R(\i[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \input_btint_a[0]_i_1 
       (.I0(\input_btint_a[16]_i_3_n_0 ),
        .I1(uart_transmitter_column[2]),
        .I2(uart_transmitter_column[3]),
        .I3(\input_btint_a[16]_i_2_n_0 ),
        .I4(input_btint_a[0]),
        .I5(\input_btint_a_reg_n_0_[0] ),
        .O(\input_btint_a[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAAAAAAA)) 
    \input_btint_a[0]_i_2 
       (.I0(\input_btint_a[0]_i_3_n_0 ),
        .I1(\i_reg[31]_i_4_n_1 ),
        .I2(p_4_in),
        .I3(\j_reg[30]_i_3_n_1 ),
        .I4(transmit_PROC_STATE[2]),
        .I5(\input_btint_a[24]_i_14_n_0 ),
        .O(input_btint_a[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \input_btint_a[0]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(uart_transmitter_reset_active_low),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[2]),
        .O(\input_btint_a[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \input_btint_a[16]_i_1 
       (.I0(\input_btint_a[16]_i_2_n_0 ),
        .I1(uart_transmitter_column[2]),
        .I2(uart_transmitter_column[3]),
        .I3(\input_btint_a[16]_i_3_n_0 ),
        .I4(input_btint_a[16]),
        .I5(\input_btint_a_reg_n_0_[16] ),
        .O(\input_btint_a[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_a[16]_i_2 
       (.I0(\input_btint_a[24]_i_7_n_0 ),
        .I1(\input_btint_a[24]_i_8_n_0 ),
        .I2(\input_btint_a[24]_i_5_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_a[24]_i_6_n_0 ),
        .O(\input_btint_a[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_a[16]_i_3 
       (.I0(\input_btint_a[24]_i_11_n_0 ),
        .I1(\input_btint_a[24]_i_12_n_0 ),
        .I2(\input_btint_a[24]_i_9_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_a[24]_i_10_n_0 ),
        .O(\input_btint_a[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAAAAAAA)) 
    \input_btint_a[16]_i_4 
       (.I0(\input_btint_a[16]_i_5_n_0 ),
        .I1(\i_reg[31]_i_4_n_1 ),
        .I2(p_4_in),
        .I3(\j_reg[30]_i_3_n_1 ),
        .I4(transmit_PROC_STATE[2]),
        .I5(\input_btint_a[24]_i_14_n_0 ),
        .O(input_btint_a[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \input_btint_a[16]_i_5 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(uart_transmitter_reset_active_low),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[2]),
        .O(\input_btint_a[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_btint_a[24]_i_1 
       (.I0(\input_btint_a[24]_i_2_n_0 ),
        .I1(uart_transmitter_column[3]),
        .I2(\input_btint_a[24]_i_3_n_0 ),
        .I3(input_btint_a[24]),
        .I4(\input_btint_a_reg_n_0_[24] ),
        .O(\input_btint_a[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_10 
       (.I0(uart_transmitter_input_btint_a[14]),
        .I1(uart_transmitter_input_btint_a[15]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_11 
       (.I0(uart_transmitter_input_btint_a[8]),
        .I1(uart_transmitter_input_btint_a[9]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_12 
       (.I0(uart_transmitter_input_btint_a[10]),
        .I1(uart_transmitter_input_btint_a[11]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \input_btint_a[24]_i_13 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(uart_transmitter_reset_active_low),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[2]),
        .O(\input_btint_a[24]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \input_btint_a[24]_i_14 
       (.I0(transmit_PROC_STATE[1]),
        .I1(transmit_PROC_STATE[0]),
        .I2(uart_transmitter_reset_active_low),
        .O(\input_btint_a[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_a[24]_i_2 
       (.I0(\input_btint_a[24]_i_5_n_0 ),
        .I1(\input_btint_a[24]_i_6_n_0 ),
        .I2(\input_btint_a[24]_i_7_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_a[24]_i_8_n_0 ),
        .O(\input_btint_a[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_a[24]_i_3 
       (.I0(\input_btint_a[24]_i_9_n_0 ),
        .I1(\input_btint_a[24]_i_10_n_0 ),
        .I2(\input_btint_a[24]_i_11_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_a[24]_i_12_n_0 ),
        .O(\input_btint_a[24]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAAAAAAA)) 
    \input_btint_a[24]_i_4 
       (.I0(\input_btint_a[24]_i_13_n_0 ),
        .I1(\i_reg[31]_i_4_n_1 ),
        .I2(p_4_in),
        .I3(\j_reg[30]_i_3_n_1 ),
        .I4(transmit_PROC_STATE[2]),
        .I5(\input_btint_a[24]_i_14_n_0 ),
        .O(input_btint_a[24]));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_5 
       (.I0(uart_transmitter_input_btint_a[4]),
        .I1(uart_transmitter_input_btint_a[5]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_6 
       (.I0(uart_transmitter_input_btint_a[6]),
        .I1(uart_transmitter_input_btint_a[7]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_7 
       (.I0(uart_transmitter_input_btint_a[0]),
        .I1(uart_transmitter_input_btint_a[1]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_8 
       (.I0(uart_transmitter_input_btint_a[2]),
        .I1(uart_transmitter_input_btint_a[3]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_a[24]_i_9 
       (.I0(uart_transmitter_input_btint_a[12]),
        .I1(uart_transmitter_input_btint_a[13]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_a[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_btint_a[8]_i_1 
       (.I0(\input_btint_a[24]_i_3_n_0 ),
        .I1(uart_transmitter_column[3]),
        .I2(\input_btint_a[24]_i_2_n_0 ),
        .I3(input_btint_a[8]),
        .I4(\input_btint_a_reg_n_0_[8] ),
        .O(\input_btint_a[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABFFFFAAAAAAAA)) 
    \input_btint_a[8]_i_2 
       (.I0(\input_btint_a[8]_i_3_n_0 ),
        .I1(\i_reg[31]_i_4_n_1 ),
        .I2(p_4_in),
        .I3(\j_reg[30]_i_3_n_1 ),
        .I4(transmit_PROC_STATE[2]),
        .I5(\input_btint_a[24]_i_14_n_0 ),
        .O(input_btint_a[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \input_btint_a[8]_i_3 
       (.I0(\i_reg_n_0_[0] ),
        .I1(\i_reg_n_0_[1] ),
        .I2(uart_transmitter_reset_active_low),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[2]),
        .O(\input_btint_a[8]_i_3_n_0 ));
  FDRE \input_btint_a_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_a[0]_i_1_n_0 ),
        .Q(\input_btint_a_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \input_btint_a_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_a[16]_i_1_n_0 ),
        .Q(\input_btint_a_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \input_btint_a_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_a[24]_i_1_n_0 ),
        .Q(\input_btint_a_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \input_btint_a_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_a[8]_i_1_n_0 ),
        .Q(\input_btint_a_reg_n_0_[8] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \input_btint_b[0]_i_1 
       (.I0(\input_btint_b[16]_i_3_n_0 ),
        .I1(uart_transmitter_column[2]),
        .I2(uart_transmitter_column[3]),
        .I3(\input_btint_b[16]_i_2_n_0 ),
        .I4(input_btint_a[0]),
        .I5(input_btint_b[0]),
        .O(\input_btint_b[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEB28FFFFEB280000)) 
    \input_btint_b[16]_i_1 
       (.I0(\input_btint_b[16]_i_2_n_0 ),
        .I1(uart_transmitter_column[2]),
        .I2(uart_transmitter_column[3]),
        .I3(\input_btint_b[16]_i_3_n_0 ),
        .I4(input_btint_a[16]),
        .I5(input_btint_b[16]),
        .O(\input_btint_b[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_b[16]_i_2 
       (.I0(\input_btint_b[24]_i_6_n_0 ),
        .I1(\input_btint_b[24]_i_7_n_0 ),
        .I2(\input_btint_b[24]_i_4_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_b[24]_i_5_n_0 ),
        .O(\input_btint_b[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_b[16]_i_3 
       (.I0(\input_btint_b[24]_i_10_n_0 ),
        .I1(\input_btint_b[24]_i_11_n_0 ),
        .I2(\input_btint_b[24]_i_8_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_b[24]_i_9_n_0 ),
        .O(\input_btint_b[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_btint_b[24]_i_1 
       (.I0(\input_btint_b[24]_i_2_n_0 ),
        .I1(uart_transmitter_column[3]),
        .I2(\input_btint_b[24]_i_3_n_0 ),
        .I3(input_btint_a[24]),
        .I4(input_btint_b[24]),
        .O(\input_btint_b[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_10 
       (.I0(uart_transmitter_input_btint_b[8]),
        .I1(uart_transmitter_input_btint_b[9]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_11 
       (.I0(uart_transmitter_input_btint_b[10]),
        .I1(uart_transmitter_input_btint_b[11]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_b[24]_i_2 
       (.I0(\input_btint_b[24]_i_4_n_0 ),
        .I1(\input_btint_b[24]_i_5_n_0 ),
        .I2(\input_btint_b[24]_i_6_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_b[24]_i_7_n_0 ),
        .O(\input_btint_b[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \input_btint_b[24]_i_3 
       (.I0(\input_btint_b[24]_i_8_n_0 ),
        .I1(\input_btint_b[24]_i_9_n_0 ),
        .I2(\input_btint_b[24]_i_10_n_0 ),
        .I3(uart_transmitter_column[2]),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_b[24]_i_11_n_0 ),
        .O(\input_btint_b[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_4 
       (.I0(uart_transmitter_input_btint_b[4]),
        .I1(uart_transmitter_input_btint_b[5]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_5 
       (.I0(uart_transmitter_input_btint_b[6]),
        .I1(uart_transmitter_input_btint_b[7]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_6 
       (.I0(uart_transmitter_input_btint_b[0]),
        .I1(uart_transmitter_input_btint_b[1]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_7 
       (.I0(uart_transmitter_input_btint_b[2]),
        .I1(uart_transmitter_input_btint_b[3]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_8 
       (.I0(uart_transmitter_input_btint_b[12]),
        .I1(uart_transmitter_input_btint_b[13]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h000A000C)) 
    \input_btint_b[24]_i_9 
       (.I0(uart_transmitter_input_btint_b[14]),
        .I1(uart_transmitter_input_btint_b[15]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[0]),
        .I4(uart_transmitter_column[0]),
        .O(\input_btint_b[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \input_btint_b[8]_i_1 
       (.I0(\input_btint_b[24]_i_3_n_0 ),
        .I1(uart_transmitter_column[3]),
        .I2(\input_btint_b[24]_i_2_n_0 ),
        .I3(input_btint_a[8]),
        .I4(input_btint_b[8]),
        .O(\input_btint_b[8]_i_1_n_0 ));
  FDRE \input_btint_b_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_b[0]_i_1_n_0 ),
        .Q(input_btint_b[0]),
        .R(1'b0));
  FDRE \input_btint_b_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_b[16]_i_1_n_0 ),
        .Q(input_btint_b[16]),
        .R(1'b0));
  FDRE \input_btint_b_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_b[24]_i_1_n_0 ),
        .Q(input_btint_b[24]),
        .R(1'b0));
  FDRE \input_btint_b_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_b[8]_i_1_n_0 ),
        .Q(input_btint_b[8]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \j[12]_i_2 
       (.I0(\j_reg_n_0_[12] ),
        .O(\j[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[12]_i_3 
       (.I0(\j_reg_n_0_[11] ),
        .O(\j[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[12]_i_4 
       (.I0(\j_reg_n_0_[10] ),
        .O(\j[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[12]_i_5 
       (.I0(\j_reg_n_0_[9] ),
        .O(\j[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[16]_i_2 
       (.I0(\j_reg_n_0_[16] ),
        .O(\j[16]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[16]_i_3 
       (.I0(\j_reg_n_0_[15] ),
        .O(\j[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[16]_i_4 
       (.I0(\j_reg_n_0_[14] ),
        .O(\j[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[16]_i_5 
       (.I0(\j_reg_n_0_[13] ),
        .O(\j[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF700FFFFF7000000)) 
    \j[1]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(\j_reg[30]_i_3_n_1 ),
        .I2(uart_transmitter_output_next2[1]),
        .I3(\j[2]_i_2_n_0 ),
        .I4(j),
        .I5(\j_reg_n_0_[1] ),
        .O(\j[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[20]_i_2 
       (.I0(\j_reg_n_0_[20] ),
        .O(\j[20]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[20]_i_3 
       (.I0(\j_reg_n_0_[19] ),
        .O(\j[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[20]_i_4 
       (.I0(\j_reg_n_0_[18] ),
        .O(\j[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[20]_i_5 
       (.I0(\j_reg_n_0_[17] ),
        .O(\j[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[24]_i_2 
       (.I0(\j_reg_n_0_[24] ),
        .O(\j[24]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[24]_i_3 
       (.I0(\j_reg_n_0_[23] ),
        .O(\j[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[24]_i_4 
       (.I0(\j_reg_n_0_[22] ),
        .O(\j[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[24]_i_5 
       (.I0(\j_reg_n_0_[21] ),
        .O(\j[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[28]_i_2 
       (.I0(\j_reg_n_0_[28] ),
        .O(\j[28]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[28]_i_3 
       (.I0(\j_reg_n_0_[27] ),
        .O(\j[28]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[28]_i_4 
       (.I0(\j_reg_n_0_[26] ),
        .O(\j[28]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[28]_i_5 
       (.I0(\j_reg_n_0_[25] ),
        .O(\j[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF700FFFFF7000000)) 
    \j[2]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(\j_reg[30]_i_3_n_1 ),
        .I2(uart_transmitter_output_next2[2]),
        .I3(\j[2]_i_2_n_0 ),
        .I4(j),
        .I5(\j_reg_n_0_[2] ),
        .O(\j[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \j[2]_i_2 
       (.I0(transmit_PROC_STATE[0]),
        .I1(transmit_PROC_STATE[1]),
        .O(\j[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000002000000AA)) 
    \j[30]_i_1 
       (.I0(uart_transmitter_reset_active_low),
        .I1(p_4_in),
        .I2(\j_reg[30]_i_3_n_1 ),
        .I3(transmit_PROC_STATE[1]),
        .I4(transmit_PROC_STATE[0]),
        .I5(transmit_PROC_STATE[2]),
        .O(\j[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000070)) 
    \j[30]_i_2 
       (.I0(p_4_in),
        .I1(transmit_PROC_STATE[2]),
        .I2(uart_transmitter_reset_active_low),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[1]),
        .O(j));
  LUT1 #(
    .INIT(2'h1)) 
    \j[30]_i_4 
       (.I0(\j_reg_n_0_[30] ),
        .O(\j[30]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[30]_i_5 
       (.I0(\j_reg_n_0_[29] ),
        .O(\j[30]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[4]_i_2 
       (.I0(\j_reg_n_0_[4] ),
        .O(\j[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[4]_i_3 
       (.I0(\j_reg_n_0_[3] ),
        .O(\j[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[4]_i_4 
       (.I0(\j_reg_n_0_[2] ),
        .O(\j[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[8]_i_2 
       (.I0(\j_reg_n_0_[8] ),
        .O(\j[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[8]_i_3 
       (.I0(\j_reg_n_0_[7] ),
        .O(\j[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[8]_i_4 
       (.I0(\j_reg_n_0_[6] ),
        .O(\j[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[8]_i_5 
       (.I0(\j_reg_n_0_[5] ),
        .O(\j[8]_i_5_n_0 ));
  FDRE \j_reg[10] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[10]),
        .Q(\j_reg_n_0_[10] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[11]),
        .Q(\j_reg_n_0_[11] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[12]),
        .Q(\j_reg_n_0_[12] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[12]_i_1 
       (.CI(\j_reg[8]_i_1_n_0 ),
        .CO({\j_reg[12]_i_1_n_0 ,\j_reg[12]_i_1_n_1 ,\j_reg[12]_i_1_n_2 ,\j_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[12] ,\j_reg_n_0_[11] ,\j_reg_n_0_[10] ,\j_reg_n_0_[9] }),
        .O(uart_transmitter_output_next2[12:9]),
        .S({\j[12]_i_2_n_0 ,\j[12]_i_3_n_0 ,\j[12]_i_4_n_0 ,\j[12]_i_5_n_0 }));
  FDRE \j_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[13]),
        .Q(\j_reg_n_0_[13] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[14]),
        .Q(\j_reg_n_0_[14] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[15]),
        .Q(\j_reg_n_0_[15] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[16]),
        .Q(\j_reg_n_0_[16] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[16]_i_1 
       (.CI(\j_reg[12]_i_1_n_0 ),
        .CO({\j_reg[16]_i_1_n_0 ,\j_reg[16]_i_1_n_1 ,\j_reg[16]_i_1_n_2 ,\j_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[16] ,\j_reg_n_0_[15] ,\j_reg_n_0_[14] ,\j_reg_n_0_[13] }),
        .O(uart_transmitter_output_next2[16:13]),
        .S({\j[16]_i_2_n_0 ,\j[16]_i_3_n_0 ,\j[16]_i_4_n_0 ,\j[16]_i_5_n_0 }));
  FDRE \j_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[17]),
        .Q(\j_reg_n_0_[17] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[18]),
        .Q(\j_reg_n_0_[18] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[19]),
        .Q(\j_reg_n_0_[19] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\j[1]_i_1_n_0 ),
        .Q(\j_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \j_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[20]),
        .Q(\j_reg_n_0_[20] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[20]_i_1 
       (.CI(\j_reg[16]_i_1_n_0 ),
        .CO({\j_reg[20]_i_1_n_0 ,\j_reg[20]_i_1_n_1 ,\j_reg[20]_i_1_n_2 ,\j_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[20] ,\j_reg_n_0_[19] ,\j_reg_n_0_[18] ,\j_reg_n_0_[17] }),
        .O(uart_transmitter_output_next2[20:17]),
        .S({\j[20]_i_2_n_0 ,\j[20]_i_3_n_0 ,\j[20]_i_4_n_0 ,\j[20]_i_5_n_0 }));
  FDRE \j_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[21]),
        .Q(\j_reg_n_0_[21] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[22]),
        .Q(\j_reg_n_0_[22] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[23]),
        .Q(\j_reg_n_0_[23] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[24]),
        .Q(\j_reg_n_0_[24] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[24]_i_1 
       (.CI(\j_reg[20]_i_1_n_0 ),
        .CO({\j_reg[24]_i_1_n_0 ,\j_reg[24]_i_1_n_1 ,\j_reg[24]_i_1_n_2 ,\j_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[24] ,\j_reg_n_0_[23] ,\j_reg_n_0_[22] ,\j_reg_n_0_[21] }),
        .O(uart_transmitter_output_next2[24:21]),
        .S({\j[24]_i_2_n_0 ,\j[24]_i_3_n_0 ,\j[24]_i_4_n_0 ,\j[24]_i_5_n_0 }));
  FDRE \j_reg[25] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[25]),
        .Q(\j_reg_n_0_[25] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[26]),
        .Q(\j_reg_n_0_[26] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[27]),
        .Q(\j_reg_n_0_[27] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[28]),
        .Q(\j_reg_n_0_[28] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[28]_i_1 
       (.CI(\j_reg[24]_i_1_n_0 ),
        .CO({\j_reg[28]_i_1_n_0 ,\j_reg[28]_i_1_n_1 ,\j_reg[28]_i_1_n_2 ,\j_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[28] ,\j_reg_n_0_[27] ,\j_reg_n_0_[26] ,\j_reg_n_0_[25] }),
        .O(uart_transmitter_output_next2[28:25]),
        .S({\j[28]_i_2_n_0 ,\j[28]_i_3_n_0 ,\j[28]_i_4_n_0 ,\j[28]_i_5_n_0 }));
  FDRE \j_reg[29] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[29]),
        .Q(\j_reg_n_0_[29] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\j[2]_i_1_n_0 ),
        .Q(\j_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \j_reg[30] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[30]),
        .Q(\j_reg_n_0_[30] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[30]_i_3 
       (.CI(\j_reg[28]_i_1_n_0 ),
        .CO({\NLW_j_reg[30]_i_3_CO_UNCONNECTED [3],\j_reg[30]_i_3_n_1 ,\NLW_j_reg[30]_i_3_CO_UNCONNECTED [1],\j_reg[30]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\j_reg_n_0_[30] ,\j_reg_n_0_[29] }),
        .O({\NLW_j_reg[30]_i_3_O_UNCONNECTED [3:2],uart_transmitter_output_next2[30:29]}),
        .S({1'b0,1'b1,\j[30]_i_4_n_0 ,\j[30]_i_5_n_0 }));
  FDRE \j_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[3]),
        .Q(\j_reg_n_0_[3] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[4]),
        .Q(\j_reg_n_0_[4] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\j_reg[4]_i_1_n_0 ,\j_reg[4]_i_1_n_1 ,\j_reg[4]_i_1_n_2 ,\j_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[4] ,\j_reg_n_0_[3] ,\j_reg_n_0_[2] ,1'b0}),
        .O(uart_transmitter_output_next2[4:1]),
        .S({\j[4]_i_2_n_0 ,\j[4]_i_3_n_0 ,\j[4]_i_4_n_0 ,\j_reg_n_0_[1] }));
  FDRE \j_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[5]),
        .Q(\j_reg_n_0_[5] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[6]),
        .Q(\j_reg_n_0_[6] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[7]),
        .Q(\j_reg_n_0_[7] ),
        .R(\j[30]_i_1_n_0 ));
  FDRE \j_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[8]),
        .Q(\j_reg_n_0_[8] ),
        .R(\j[30]_i_1_n_0 ));
  CARRY4 \j_reg[8]_i_1 
       (.CI(\j_reg[4]_i_1_n_0 ),
        .CO({\j_reg[8]_i_1_n_0 ,\j_reg[8]_i_1_n_1 ,\j_reg[8]_i_1_n_2 ,\j_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\j_reg_n_0_[8] ,\j_reg_n_0_[7] ,\j_reg_n_0_[6] ,\j_reg_n_0_[5] }),
        .O(uart_transmitter_output_next2[8:5]),
        .S({\j[8]_i_2_n_0 ,\j[8]_i_3_n_0 ,\j[8]_i_4_n_0 ,\j[8]_i_5_n_0 }));
  FDRE \j_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[9]),
        .Q(\j_reg_n_0_[9] ),
        .R(\j[30]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \k0[0]_i_1 
       (.I0(\k0_reg_n_0_[0] ),
        .O(\k0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0008)) 
    \k0[31]_i_1 
       (.I0(uart_transmitter_reset_active_low),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[2]),
        .I3(transmit_PROC_STATE[1]),
        .O(\k0[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \k0[31]_i_2 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(uart_transmitter_reset_active_low),
        .O(k0));
  FDRE \k0_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0[0]_i_1_n_0 ),
        .Q(\k0_reg_n_0_[0] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[10] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[10]),
        .Q(\k0_reg_n_0_[10] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[11]),
        .Q(\k0_reg_n_0_[11] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[12]),
        .Q(\k0_reg_n_0_[12] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[12]_i_1 
       (.CI(\k0_reg[8]_i_1_n_0 ),
        .CO({\k0_reg[12]_i_1_n_0 ,\k0_reg[12]_i_1_n_1 ,\k0_reg[12]_i_1_n_2 ,\k0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[12:9]),
        .S({\k0_reg_n_0_[12] ,\k0_reg_n_0_[11] ,\k0_reg_n_0_[10] ,\k0_reg_n_0_[9] }));
  FDRE \k0_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[13]),
        .Q(\k0_reg_n_0_[13] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[14]),
        .Q(\k0_reg_n_0_[14] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[15]),
        .Q(\k0_reg_n_0_[15] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[16]),
        .Q(\k0_reg_n_0_[16] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[16]_i_1 
       (.CI(\k0_reg[12]_i_1_n_0 ),
        .CO({\k0_reg[16]_i_1_n_0 ,\k0_reg[16]_i_1_n_1 ,\k0_reg[16]_i_1_n_2 ,\k0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[16:13]),
        .S({\k0_reg_n_0_[16] ,\k0_reg_n_0_[15] ,\k0_reg_n_0_[14] ,\k0_reg_n_0_[13] }));
  FDRE \k0_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[17]),
        .Q(\k0_reg_n_0_[17] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[18]),
        .Q(\k0_reg_n_0_[18] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[19]),
        .Q(\k0_reg_n_0_[19] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[1]),
        .Q(\k0_reg_n_0_[1] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[20]),
        .Q(\k0_reg_n_0_[20] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[20]_i_1 
       (.CI(\k0_reg[16]_i_1_n_0 ),
        .CO({\k0_reg[20]_i_1_n_0 ,\k0_reg[20]_i_1_n_1 ,\k0_reg[20]_i_1_n_2 ,\k0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[20:17]),
        .S({\k0_reg_n_0_[20] ,\k0_reg_n_0_[19] ,\k0_reg_n_0_[18] ,\k0_reg_n_0_[17] }));
  FDRE \k0_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[21]),
        .Q(\k0_reg_n_0_[21] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[22]),
        .Q(\k0_reg_n_0_[22] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[23]),
        .Q(\k0_reg_n_0_[23] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[24]),
        .Q(\k0_reg_n_0_[24] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[24]_i_1 
       (.CI(\k0_reg[20]_i_1_n_0 ),
        .CO({\k0_reg[24]_i_1_n_0 ,\k0_reg[24]_i_1_n_1 ,\k0_reg[24]_i_1_n_2 ,\k0_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[24:21]),
        .S({\k0_reg_n_0_[24] ,\k0_reg_n_0_[23] ,\k0_reg_n_0_[22] ,\k0_reg_n_0_[21] }));
  FDRE \k0_reg[25] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[25]),
        .Q(\k0_reg_n_0_[25] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[26]),
        .Q(\k0_reg_n_0_[26] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[27]),
        .Q(\k0_reg_n_0_[27] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[28]),
        .Q(\k0_reg_n_0_[28] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[28]_i_1 
       (.CI(\k0_reg[24]_i_1_n_0 ),
        .CO({\k0_reg[28]_i_1_n_0 ,\k0_reg[28]_i_1_n_1 ,\k0_reg[28]_i_1_n_2 ,\k0_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[28:25]),
        .S({\k0_reg_n_0_[28] ,\k0_reg_n_0_[27] ,\k0_reg_n_0_[26] ,\k0_reg_n_0_[25] }));
  FDRE \k0_reg[29] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[29]),
        .Q(\k0_reg_n_0_[29] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[2]),
        .Q(\k0_reg_n_0_[2] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[30] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[30]),
        .Q(\k0_reg_n_0_[30] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[31] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[31]),
        .Q(\k0_reg_n_0_[31] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[31]_i_3 
       (.CI(\k0_reg[28]_i_1_n_0 ),
        .CO({\NLW_k0_reg[31]_i_3_CO_UNCONNECTED [3:2],\k0_reg[31]_i_3_n_2 ,\k0_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k0_reg[31]_i_3_O_UNCONNECTED [3],in22[31:29]}),
        .S({1'b0,\k0_reg_n_0_[31] ,\k0_reg_n_0_[30] ,\k0_reg_n_0_[29] }));
  FDRE \k0_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[3]),
        .Q(\k0_reg_n_0_[3] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[4]),
        .Q(\k0_reg_n_0_[4] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\k0_reg[4]_i_1_n_0 ,\k0_reg[4]_i_1_n_1 ,\k0_reg[4]_i_1_n_2 ,\k0_reg[4]_i_1_n_3 }),
        .CYINIT(\k0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[4:1]),
        .S({\k0_reg_n_0_[4] ,\k0_reg_n_0_[3] ,\k0_reg_n_0_[2] ,\k0_reg_n_0_[1] }));
  FDRE \k0_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[5]),
        .Q(\k0_reg_n_0_[5] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[6]),
        .Q(\k0_reg_n_0_[6] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[7]),
        .Q(\k0_reg_n_0_[7] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[8]),
        .Q(\k0_reg_n_0_[8] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[8]_i_1 
       (.CI(\k0_reg[4]_i_1_n_0 ),
        .CO({\k0_reg[8]_i_1_n_0 ,\k0_reg[8]_i_1_n_1 ,\k0_reg[8]_i_1_n_2 ,\k0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in22[8:5]),
        .S({\k0_reg_n_0_[8] ,\k0_reg_n_0_[7] ,\k0_reg_n_0_[6] ,\k0_reg_n_0_[5] }));
  FDRE \k0_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(in22[9]),
        .Q(\k0_reg_n_0_[9] ),
        .R(\k0[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \k[0]_i_1 
       (.I0(\k_reg_n_0_[0] ),
        .O(\k[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \k[31]_i_1 
       (.I0(uart_transmitter_reset_active_low),
        .I1(transmit_PROC_STATE[2]),
        .I2(uart_transmitter_output_reg_i_4_n_1),
        .I3(transmit_PROC_STATE[1]),
        .I4(transmit_PROC_STATE[0]),
        .O(\k[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h04300000)) 
    \k[31]_i_2 
       (.I0(uart_transmitter_output_reg_i_4_n_1),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[2]),
        .I3(transmit_PROC_STATE[1]),
        .I4(uart_transmitter_reset_active_low),
        .O(k));
  FDRE \k_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k[0]_i_1_n_0 ),
        .Q(\k_reg_n_0_[0] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[10] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[10]),
        .Q(\k_reg_n_0_[10] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[11]),
        .Q(\k_reg_n_0_[11] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[12]),
        .Q(\k_reg_n_0_[12] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[12]_i_1 
       (.CI(\k_reg[8]_i_1_n_0 ),
        .CO({\k_reg[12]_i_1_n_0 ,\k_reg[12]_i_1_n_1 ,\k_reg[12]_i_1_n_2 ,\k_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[12:9]),
        .S({\k_reg_n_0_[12] ,\k_reg_n_0_[11] ,\k_reg_n_0_[10] ,\k_reg_n_0_[9] }));
  FDRE \k_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[13]),
        .Q(\k_reg_n_0_[13] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[14]),
        .Q(\k_reg_n_0_[14] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[15]),
        .Q(\k_reg_n_0_[15] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[16]),
        .Q(\k_reg_n_0_[16] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[16]_i_1 
       (.CI(\k_reg[12]_i_1_n_0 ),
        .CO({\k_reg[16]_i_1_n_0 ,\k_reg[16]_i_1_n_1 ,\k_reg[16]_i_1_n_2 ,\k_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[16:13]),
        .S({\k_reg_n_0_[16] ,\k_reg_n_0_[15] ,\k_reg_n_0_[14] ,\k_reg_n_0_[13] }));
  FDRE \k_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[17]),
        .Q(\k_reg_n_0_[17] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[18]),
        .Q(\k_reg_n_0_[18] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[19]),
        .Q(\k_reg_n_0_[19] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[1]),
        .Q(\k_reg_n_0_[1] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[20]),
        .Q(\k_reg_n_0_[20] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[20]_i_1 
       (.CI(\k_reg[16]_i_1_n_0 ),
        .CO({\k_reg[20]_i_1_n_0 ,\k_reg[20]_i_1_n_1 ,\k_reg[20]_i_1_n_2 ,\k_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[20:17]),
        .S({\k_reg_n_0_[20] ,\k_reg_n_0_[19] ,\k_reg_n_0_[18] ,\k_reg_n_0_[17] }));
  FDRE \k_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[21]),
        .Q(\k_reg_n_0_[21] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[22]),
        .Q(\k_reg_n_0_[22] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[23]),
        .Q(\k_reg_n_0_[23] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[24]),
        .Q(\k_reg_n_0_[24] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[24]_i_1 
       (.CI(\k_reg[20]_i_1_n_0 ),
        .CO({\k_reg[24]_i_1_n_0 ,\k_reg[24]_i_1_n_1 ,\k_reg[24]_i_1_n_2 ,\k_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[24:21]),
        .S({\k_reg_n_0_[24] ,\k_reg_n_0_[23] ,\k_reg_n_0_[22] ,\k_reg_n_0_[21] }));
  FDRE \k_reg[25] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[25]),
        .Q(\k_reg_n_0_[25] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[26]),
        .Q(\k_reg_n_0_[26] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[27]),
        .Q(\k_reg_n_0_[27] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[28]),
        .Q(\k_reg_n_0_[28] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[28]_i_1 
       (.CI(\k_reg[24]_i_1_n_0 ),
        .CO({\k_reg[28]_i_1_n_0 ,\k_reg[28]_i_1_n_1 ,\k_reg[28]_i_1_n_2 ,\k_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[28:25]),
        .S({\k_reg_n_0_[28] ,\k_reg_n_0_[27] ,\k_reg_n_0_[26] ,\k_reg_n_0_[25] }));
  FDRE \k_reg[29] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[29]),
        .Q(\k_reg_n_0_[29] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[2]),
        .Q(\k_reg_n_0_[2] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[30] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[30]),
        .Q(\k_reg_n_0_[30] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[31] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[31]),
        .Q(\k_reg_n_0_[31] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[31]_i_3 
       (.CI(\k_reg[28]_i_1_n_0 ),
        .CO({\NLW_k_reg[31]_i_3_CO_UNCONNECTED [3:2],\k_reg[31]_i_3_n_2 ,\k_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k_reg[31]_i_3_O_UNCONNECTED [3],in12[31:29]}),
        .S({1'b0,\k_reg_n_0_[31] ,\k_reg_n_0_[30] ,\k_reg_n_0_[29] }));
  FDRE \k_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[3]),
        .Q(\k_reg_n_0_[3] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[4]),
        .Q(\k_reg_n_0_[4] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\k_reg[4]_i_1_n_0 ,\k_reg[4]_i_1_n_1 ,\k_reg[4]_i_1_n_2 ,\k_reg[4]_i_1_n_3 }),
        .CYINIT(\k_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[4:1]),
        .S({\k_reg_n_0_[4] ,\k_reg_n_0_[3] ,\k_reg_n_0_[2] ,\k_reg_n_0_[1] }));
  FDRE \k_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[5]),
        .Q(\k_reg_n_0_[5] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[6]),
        .Q(\k_reg_n_0_[6] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[7]),
        .Q(\k_reg_n_0_[7] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[8]),
        .Q(\k_reg_n_0_[8] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[8]_i_1 
       (.CI(\k_reg[4]_i_1_n_0 ),
        .CO({\k_reg[8]_i_1_n_0 ,\k_reg[8]_i_1_n_1 ,\k_reg[8]_i_1_n_2 ,\k_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in12[8:5]),
        .S({\k_reg_n_0_[8] ,\k_reg_n_0_[7] ,\k_reg_n_0_[6] ,\k_reg_n_0_[5] }));
  FDRE \k_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(in12[9]),
        .Q(\k_reg_n_0_[9] ),
        .R(\k[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    uart_transmitter_output_i_1
       (.I0(uart_transmitter_reset_active_low),
        .O(uart_transmitter_output_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_10
       (.I0(in22[26]),
        .I1(in22[27]),
        .O(uart_transmitter_output_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_12
       (.I0(in12[31]),
        .I1(in12[30]),
        .O(uart_transmitter_output_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_13
       (.I0(in12[29]),
        .I1(in12[28]),
        .O(uart_transmitter_output_i_13_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_14
       (.I0(in12[27]),
        .I1(in12[26]),
        .O(uart_transmitter_output_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_15
       (.I0(in12[25]),
        .I1(in12[24]),
        .O(uart_transmitter_output_i_15_n_0));
  LUT6 #(
    .INIT(64'h0808080000000800)) 
    uart_transmitter_output_i_16
       (.I0(\i_reg_n_0_[0] ),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[2]),
        .I3(\input_btint_a_reg_n_0_[16] ),
        .I4(\i_reg_n_0_[1] ),
        .I5(\input_btint_a_reg_n_0_[0] ),
        .O(uart_transmitter_output_i_16_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_transmitter_output_i_17
       (.I0(input_btint_b[0]),
        .I1(input_btint_b[16]),
        .I2(\i_reg_n_0_[0] ),
        .I3(input_btint_b[8]),
        .I4(\i_reg_n_0_[1] ),
        .I5(input_btint_b[24]),
        .O(uart_transmitter_output_i_17_n_0));
  LUT6 #(
    .INIT(64'h0404040000000400)) 
    uart_transmitter_output_i_18
       (.I0(\i_reg_n_0_[0] ),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[2]),
        .I3(\input_btint_a_reg_n_0_[24] ),
        .I4(\i_reg_n_0_[1] ),
        .I5(\input_btint_a_reg_n_0_[8] ),
        .O(uart_transmitter_output_i_18_n_0));
  LUT3 #(
    .INIT(8'h1F)) 
    uart_transmitter_output_i_2
       (.I0(transmit_PROC_STATE[1]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[2]),
        .O(uart_transmitter_output_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_20
       (.I0(in22[24]),
        .I1(in22[25]),
        .O(uart_transmitter_output_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_21
       (.I0(in22[22]),
        .I1(in22[23]),
        .O(uart_transmitter_output_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_22
       (.I0(in22[20]),
        .I1(in22[21]),
        .O(uart_transmitter_output_i_22_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_23
       (.I0(in22[18]),
        .I1(in22[19]),
        .O(uart_transmitter_output_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_25
       (.I0(in12[23]),
        .I1(in12[22]),
        .O(uart_transmitter_output_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_26
       (.I0(in12[21]),
        .I1(in12[20]),
        .O(uart_transmitter_output_i_26_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_27
       (.I0(in12[19]),
        .I1(in12[18]),
        .O(uart_transmitter_output_i_27_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_28
       (.I0(in12[17]),
        .I1(in12[16]),
        .O(uart_transmitter_output_i_28_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF100C1000)) 
    uart_transmitter_output_i_3
       (.I0(uart_transmitter_output_reg_i_4_n_1),
        .I1(transmit_PROC_STATE[2]),
        .I2(transmit_PROC_STATE[0]),
        .I3(transmit_PROC_STATE[1]),
        .I4(p_4_in),
        .I5(uart_transmitter_output_i_6_n_0),
        .O(uart_transmitter_output_next));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_30
       (.I0(in22[16]),
        .I1(in22[17]),
        .O(uart_transmitter_output_i_30_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_31
       (.I0(in22[14]),
        .I1(in22[15]),
        .O(uart_transmitter_output_i_31_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_32
       (.I0(in22[12]),
        .I1(in22[13]),
        .O(uart_transmitter_output_i_32_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_33
       (.I0(in22[10]),
        .I1(in22[11]),
        .O(uart_transmitter_output_i_33_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_35
       (.I0(in12[15]),
        .I1(in12[14]),
        .O(uart_transmitter_output_i_35_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_36
       (.I0(in12[13]),
        .I1(in12[12]),
        .O(uart_transmitter_output_i_36_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_37
       (.I0(in12[11]),
        .I1(in12[10]),
        .O(uart_transmitter_output_i_37_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_38
       (.I0(in12[9]),
        .I1(in12[8]),
        .O(uart_transmitter_output_i_38_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_39
       (.I0(in22[2]),
        .I1(in22[3]),
        .O(uart_transmitter_output_i_39_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_40
       (.I0(in22[8]),
        .I1(in22[9]),
        .O(uart_transmitter_output_i_40_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_41
       (.I0(in22[6]),
        .I1(in22[7]),
        .O(uart_transmitter_output_i_41_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_42
       (.I0(in22[4]),
        .I1(in22[5]),
        .O(uart_transmitter_output_i_42_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    uart_transmitter_output_i_43
       (.I0(in22[2]),
        .I1(in22[3]),
        .O(uart_transmitter_output_i_43_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    uart_transmitter_output_i_44
       (.I0(in12[1]),
        .O(uart_transmitter_output_i_44_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_45
       (.I0(in12[7]),
        .I1(in12[6]),
        .O(uart_transmitter_output_i_45_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_46
       (.I0(in12[5]),
        .I1(in12[4]),
        .O(uart_transmitter_output_i_46_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_47
       (.I0(in12[3]),
        .I1(in12[2]),
        .O(uart_transmitter_output_i_47_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    uart_transmitter_output_i_48
       (.I0(\k_reg_n_0_[0] ),
        .I1(in12[1]),
        .O(uart_transmitter_output_i_48_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFAABAAAAA)) 
    uart_transmitter_output_i_6
       (.I0(uart_transmitter_output_i_16_n_0),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[2]),
        .I4(uart_transmitter_output_i_17_n_0),
        .I5(uart_transmitter_output_i_18_n_0),
        .O(uart_transmitter_output_i_6_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_8
       (.I0(in22[30]),
        .I1(in22[31]),
        .O(uart_transmitter_output_i_8_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_9
       (.I0(in22[28]),
        .I1(in22[29]),
        .O(uart_transmitter_output_i_9_n_0));
  FDSE uart_transmitter_output_reg
       (.C(uart_transmitter_clock),
        .CE(uart_transmitter_output_i_2_n_0),
        .D(uart_transmitter_output_next),
        .Q(uart_transmitter_output),
        .S(uart_transmitter_output_i_1_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_11
       (.CI(uart_transmitter_output_reg_i_24_n_0),
        .CO({uart_transmitter_output_reg_i_11_n_0,uart_transmitter_output_reg_i_11_n_1,uart_transmitter_output_reg_i_11_n_2,uart_transmitter_output_reg_i_11_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_11_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_25_n_0,uart_transmitter_output_i_26_n_0,uart_transmitter_output_i_27_n_0,uart_transmitter_output_i_28_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_19
       (.CI(uart_transmitter_output_reg_i_29_n_0),
        .CO({uart_transmitter_output_reg_i_19_n_0,uart_transmitter_output_reg_i_19_n_1,uart_transmitter_output_reg_i_19_n_2,uart_transmitter_output_reg_i_19_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_19_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_30_n_0,uart_transmitter_output_i_31_n_0,uart_transmitter_output_i_32_n_0,uart_transmitter_output_i_33_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_24
       (.CI(uart_transmitter_output_reg_i_34_n_0),
        .CO({uart_transmitter_output_reg_i_24_n_0,uart_transmitter_output_reg_i_24_n_1,uart_transmitter_output_reg_i_24_n_2,uart_transmitter_output_reg_i_24_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_24_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_35_n_0,uart_transmitter_output_i_36_n_0,uart_transmitter_output_i_37_n_0,uart_transmitter_output_i_38_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_29
       (.CI(1'b0),
        .CO({uart_transmitter_output_reg_i_29_n_0,uart_transmitter_output_reg_i_29_n_1,uart_transmitter_output_reg_i_29_n_2,uart_transmitter_output_reg_i_29_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,uart_transmitter_output_i_39_n_0}),
        .O(NLW_uart_transmitter_output_reg_i_29_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_40_n_0,uart_transmitter_output_i_41_n_0,uart_transmitter_output_i_42_n_0,uart_transmitter_output_i_43_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_34
       (.CI(1'b0),
        .CO({uart_transmitter_output_reg_i_34_n_0,uart_transmitter_output_reg_i_34_n_1,uart_transmitter_output_reg_i_34_n_2,uart_transmitter_output_reg_i_34_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,uart_transmitter_output_i_44_n_0}),
        .O(NLW_uart_transmitter_output_reg_i_34_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_45_n_0,uart_transmitter_output_i_46_n_0,uart_transmitter_output_i_47_n_0,uart_transmitter_output_i_48_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_4
       (.CI(uart_transmitter_output_reg_i_7_n_0),
        .CO({NLW_uart_transmitter_output_reg_i_4_CO_UNCONNECTED[3],uart_transmitter_output_reg_i_4_n_1,uart_transmitter_output_reg_i_4_n_2,uart_transmitter_output_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,in22[31],1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_4_O_UNCONNECTED[3:0]),
        .S({1'b0,uart_transmitter_output_i_8_n_0,uart_transmitter_output_i_9_n_0,uart_transmitter_output_i_10_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_5
       (.CI(uart_transmitter_output_reg_i_11_n_0),
        .CO({p_4_in,uart_transmitter_output_reg_i_5_n_1,uart_transmitter_output_reg_i_5_n_2,uart_transmitter_output_reg_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({in12[31],1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_5_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_12_n_0,uart_transmitter_output_i_13_n_0,uart_transmitter_output_i_14_n_0,uart_transmitter_output_i_15_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_7
       (.CI(uart_transmitter_output_reg_i_19_n_0),
        .CO({uart_transmitter_output_reg_i_7_n_0,uart_transmitter_output_reg_i_7_n_1,uart_transmitter_output_reg_i_7_n_2,uart_transmitter_output_reg_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_7_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_20_n_0,uart_transmitter_output_i_21_n_0,uart_transmitter_output_i_22_n_0,uart_transmitter_output_i_23_n_0}));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
