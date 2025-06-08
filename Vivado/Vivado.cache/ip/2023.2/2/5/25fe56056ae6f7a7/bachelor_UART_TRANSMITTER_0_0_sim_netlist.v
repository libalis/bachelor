// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
// Date        : Sun Jun  8 01:00:45 2025
// Host        : arch running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_UART_TRANSMITTER_0_0_sim_netlist.v
// Design      : bachelor_UART_TRANSMITTER_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_TRANSMITTER
   (uart_transmitter_output,
    uart_transmitter_column,
    uart_transmitter_reset_active_low,
    uart_transmitter_clock,
    uart_transmitter_input_btint_a,
    uart_transmitter_input_btint_b);
  output uart_transmitter_output;
  input [3:0]uart_transmitter_column;
  input uart_transmitter_reset_active_low;
  input uart_transmitter_clock;
  input [15:0]uart_transmitter_input_btint_a;
  input [15:0]uart_transmitter_input_btint_b;

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
  wire \input_btint_a[0]_i_10_n_0 ;
  wire \input_btint_a[0]_i_11_n_0 ;
  wire \input_btint_a[0]_i_1_n_0 ;
  wire \input_btint_a[0]_i_2_n_0 ;
  wire \input_btint_a[0]_i_3_n_0 ;
  wire \input_btint_a[0]_i_4_n_0 ;
  wire \input_btint_a[0]_i_5_n_0 ;
  wire \input_btint_a[0]_i_6_n_0 ;
  wire \input_btint_a[0]_i_7_n_0 ;
  wire \input_btint_a[0]_i_8_n_0 ;
  wire \input_btint_a[0]_i_9_n_0 ;
  wire \input_btint_a[16]_i_10_n_0 ;
  wire \input_btint_a[16]_i_11_n_0 ;
  wire \input_btint_a[16]_i_1_n_0 ;
  wire \input_btint_a[16]_i_2_n_0 ;
  wire \input_btint_a[16]_i_3_n_0 ;
  wire \input_btint_a[16]_i_4_n_0 ;
  wire \input_btint_a[16]_i_5_n_0 ;
  wire \input_btint_a[16]_i_6_n_0 ;
  wire \input_btint_a[16]_i_7_n_0 ;
  wire \input_btint_a[16]_i_8_n_0 ;
  wire \input_btint_a[16]_i_9_n_0 ;
  wire \input_btint_a[24]_i_10_n_0 ;
  wire \input_btint_a[24]_i_11_n_0 ;
  wire \input_btint_a[24]_i_1_n_0 ;
  wire \input_btint_a[24]_i_3_n_0 ;
  wire \input_btint_a[24]_i_4_n_0 ;
  wire \input_btint_a[24]_i_5_n_0 ;
  wire \input_btint_a[24]_i_6_n_0 ;
  wire \input_btint_a[24]_i_8_n_0 ;
  wire \input_btint_a[24]_i_9_n_0 ;
  wire \input_btint_a[8]_i_1_n_0 ;
  wire \input_btint_a[8]_i_3_n_0 ;
  wire \input_btint_a[8]_i_6_n_0 ;
  wire \input_btint_a[8]_i_7_n_0 ;
  wire \input_btint_a[8]_i_8_n_0 ;
  wire \input_btint_a[8]_i_9_n_0 ;
  wire [24:24]input_btint_a_next;
  wire \input_btint_a_reg[24]_i_7_n_0 ;
  wire \input_btint_a_reg[8]_i_2_n_0 ;
  wire \input_btint_a_reg[8]_i_4_n_0 ;
  wire \input_btint_a_reg[8]_i_5_n_0 ;
  wire \input_btint_a_reg_n_0_[0] ;
  wire \input_btint_a_reg_n_0_[16] ;
  wire \input_btint_a_reg_n_0_[24] ;
  wire \input_btint_a_reg_n_0_[8] ;
  wire [24:0]input_btint_b;
  wire \input_btint_b[0]_i_10_n_0 ;
  wire \input_btint_b[0]_i_11_n_0 ;
  wire \input_btint_b[0]_i_12_n_0 ;
  wire \input_btint_b[0]_i_13_n_0 ;
  wire \input_btint_b[0]_i_1_n_0 ;
  wire \input_btint_b[0]_i_3_n_0 ;
  wire \input_btint_b[0]_i_4_n_0 ;
  wire \input_btint_b[0]_i_5_n_0 ;
  wire \input_btint_b[0]_i_6_n_0 ;
  wire \input_btint_b[0]_i_7_n_0 ;
  wire \input_btint_b[0]_i_8_n_0 ;
  wire \input_btint_b[0]_i_9_n_0 ;
  wire \input_btint_b[16]_i_10_n_0 ;
  wire \input_btint_b[16]_i_1_n_0 ;
  wire \input_btint_b[16]_i_2_n_0 ;
  wire \input_btint_b[16]_i_3_n_0 ;
  wire \input_btint_b[16]_i_4_n_0 ;
  wire \input_btint_b[16]_i_5_n_0 ;
  wire \input_btint_b[16]_i_6_n_0 ;
  wire \input_btint_b[16]_i_7_n_0 ;
  wire \input_btint_b[16]_i_8_n_0 ;
  wire \input_btint_b[16]_i_9_n_0 ;
  wire \input_btint_b[24]_i_1_n_0 ;
  wire \input_btint_b[24]_i_2_n_0 ;
  wire \input_btint_b[24]_i_4_n_0 ;
  wire \input_btint_b[24]_i_5_n_0 ;
  wire \input_btint_b[24]_i_6_n_0 ;
  wire \input_btint_b[24]_i_7_n_0 ;
  wire \input_btint_b[8]_i_1_n_0 ;
  wire \input_btint_b[8]_i_5_n_0 ;
  wire \input_btint_b[8]_i_6_n_0 ;
  wire \input_btint_b[8]_i_7_n_0 ;
  wire \input_btint_b[8]_i_8_n_0 ;
  wire \input_btint_b_reg[0]_i_2_n_0 ;
  wire \input_btint_b_reg[24]_i_3_n_0 ;
  wire \input_btint_b_reg[8]_i_2_n_0 ;
  wire \input_btint_b_reg[8]_i_3_n_0 ;
  wire \input_btint_b_reg[8]_i_4_n_0 ;
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
  wire \j[30]_i_3_n_0 ;
  wire \j[30]_i_4_n_0 ;
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
  wire \j_reg[30]_i_2_n_1 ;
  wire \j_reg[30]_i_2_n_3 ;
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
  wire \k0_reg[12]_i_1_n_4 ;
  wire \k0_reg[12]_i_1_n_5 ;
  wire \k0_reg[12]_i_1_n_6 ;
  wire \k0_reg[12]_i_1_n_7 ;
  wire \k0_reg[16]_i_1_n_0 ;
  wire \k0_reg[16]_i_1_n_1 ;
  wire \k0_reg[16]_i_1_n_2 ;
  wire \k0_reg[16]_i_1_n_3 ;
  wire \k0_reg[16]_i_1_n_4 ;
  wire \k0_reg[16]_i_1_n_5 ;
  wire \k0_reg[16]_i_1_n_6 ;
  wire \k0_reg[16]_i_1_n_7 ;
  wire \k0_reg[20]_i_1_n_0 ;
  wire \k0_reg[20]_i_1_n_1 ;
  wire \k0_reg[20]_i_1_n_2 ;
  wire \k0_reg[20]_i_1_n_3 ;
  wire \k0_reg[20]_i_1_n_4 ;
  wire \k0_reg[20]_i_1_n_5 ;
  wire \k0_reg[20]_i_1_n_6 ;
  wire \k0_reg[20]_i_1_n_7 ;
  wire \k0_reg[24]_i_1_n_0 ;
  wire \k0_reg[24]_i_1_n_1 ;
  wire \k0_reg[24]_i_1_n_2 ;
  wire \k0_reg[24]_i_1_n_3 ;
  wire \k0_reg[24]_i_1_n_4 ;
  wire \k0_reg[24]_i_1_n_5 ;
  wire \k0_reg[24]_i_1_n_6 ;
  wire \k0_reg[24]_i_1_n_7 ;
  wire \k0_reg[28]_i_1_n_0 ;
  wire \k0_reg[28]_i_1_n_1 ;
  wire \k0_reg[28]_i_1_n_2 ;
  wire \k0_reg[28]_i_1_n_3 ;
  wire \k0_reg[28]_i_1_n_4 ;
  wire \k0_reg[28]_i_1_n_5 ;
  wire \k0_reg[28]_i_1_n_6 ;
  wire \k0_reg[28]_i_1_n_7 ;
  wire \k0_reg[31]_i_3_n_2 ;
  wire \k0_reg[31]_i_3_n_3 ;
  wire \k0_reg[31]_i_3_n_5 ;
  wire \k0_reg[31]_i_3_n_6 ;
  wire \k0_reg[31]_i_3_n_7 ;
  wire \k0_reg[4]_i_1_n_0 ;
  wire \k0_reg[4]_i_1_n_1 ;
  wire \k0_reg[4]_i_1_n_2 ;
  wire \k0_reg[4]_i_1_n_3 ;
  wire \k0_reg[4]_i_1_n_4 ;
  wire \k0_reg[4]_i_1_n_5 ;
  wire \k0_reg[4]_i_1_n_6 ;
  wire \k0_reg[4]_i_1_n_7 ;
  wire \k0_reg[8]_i_1_n_0 ;
  wire \k0_reg[8]_i_1_n_1 ;
  wire \k0_reg[8]_i_1_n_2 ;
  wire \k0_reg[8]_i_1_n_3 ;
  wire \k0_reg[8]_i_1_n_4 ;
  wire \k0_reg[8]_i_1_n_5 ;
  wire \k0_reg[8]_i_1_n_6 ;
  wire \k0_reg[8]_i_1_n_7 ;
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
  wire \k[31]_i_10_n_0 ;
  wire \k[31]_i_11_n_0 ;
  wire \k[31]_i_13_n_0 ;
  wire \k[31]_i_14_n_0 ;
  wire \k[31]_i_15_n_0 ;
  wire \k[31]_i_17_n_0 ;
  wire \k[31]_i_18_n_0 ;
  wire \k[31]_i_19_n_0 ;
  wire \k[31]_i_1_n_0 ;
  wire \k[31]_i_20_n_0 ;
  wire \k[31]_i_22_n_0 ;
  wire \k[31]_i_23_n_0 ;
  wire \k[31]_i_24_n_0 ;
  wire \k[31]_i_25_n_0 ;
  wire \k[31]_i_26_n_0 ;
  wire \k[31]_i_27_n_0 ;
  wire \k[31]_i_28_n_0 ;
  wire \k[31]_i_29_n_0 ;
  wire \k[31]_i_30_n_0 ;
  wire \k[31]_i_4_n_0 ;
  wire \k[31]_i_6_n_0 ;
  wire \k[31]_i_7_n_0 ;
  wire \k[31]_i_8_n_0 ;
  wire \k[31]_i_9_n_0 ;
  wire \k_reg[12]_i_1_n_0 ;
  wire \k_reg[12]_i_1_n_1 ;
  wire \k_reg[12]_i_1_n_2 ;
  wire \k_reg[12]_i_1_n_3 ;
  wire \k_reg[12]_i_1_n_4 ;
  wire \k_reg[12]_i_1_n_5 ;
  wire \k_reg[12]_i_1_n_6 ;
  wire \k_reg[12]_i_1_n_7 ;
  wire \k_reg[16]_i_1_n_0 ;
  wire \k_reg[16]_i_1_n_1 ;
  wire \k_reg[16]_i_1_n_2 ;
  wire \k_reg[16]_i_1_n_3 ;
  wire \k_reg[16]_i_1_n_4 ;
  wire \k_reg[16]_i_1_n_5 ;
  wire \k_reg[16]_i_1_n_6 ;
  wire \k_reg[16]_i_1_n_7 ;
  wire \k_reg[20]_i_1_n_0 ;
  wire \k_reg[20]_i_1_n_1 ;
  wire \k_reg[20]_i_1_n_2 ;
  wire \k_reg[20]_i_1_n_3 ;
  wire \k_reg[20]_i_1_n_4 ;
  wire \k_reg[20]_i_1_n_5 ;
  wire \k_reg[20]_i_1_n_6 ;
  wire \k_reg[20]_i_1_n_7 ;
  wire \k_reg[24]_i_1_n_0 ;
  wire \k_reg[24]_i_1_n_1 ;
  wire \k_reg[24]_i_1_n_2 ;
  wire \k_reg[24]_i_1_n_3 ;
  wire \k_reg[24]_i_1_n_4 ;
  wire \k_reg[24]_i_1_n_5 ;
  wire \k_reg[24]_i_1_n_6 ;
  wire \k_reg[24]_i_1_n_7 ;
  wire \k_reg[28]_i_1_n_0 ;
  wire \k_reg[28]_i_1_n_1 ;
  wire \k_reg[28]_i_1_n_2 ;
  wire \k_reg[28]_i_1_n_3 ;
  wire \k_reg[28]_i_1_n_4 ;
  wire \k_reg[28]_i_1_n_5 ;
  wire \k_reg[28]_i_1_n_6 ;
  wire \k_reg[28]_i_1_n_7 ;
  wire \k_reg[31]_i_12_n_0 ;
  wire \k_reg[31]_i_12_n_1 ;
  wire \k_reg[31]_i_12_n_2 ;
  wire \k_reg[31]_i_12_n_3 ;
  wire \k_reg[31]_i_16_n_0 ;
  wire \k_reg[31]_i_16_n_1 ;
  wire \k_reg[31]_i_16_n_2 ;
  wire \k_reg[31]_i_16_n_3 ;
  wire \k_reg[31]_i_21_n_0 ;
  wire \k_reg[31]_i_21_n_1 ;
  wire \k_reg[31]_i_21_n_2 ;
  wire \k_reg[31]_i_21_n_3 ;
  wire \k_reg[31]_i_3_n_2 ;
  wire \k_reg[31]_i_3_n_3 ;
  wire \k_reg[31]_i_3_n_5 ;
  wire \k_reg[31]_i_3_n_6 ;
  wire \k_reg[31]_i_3_n_7 ;
  wire \k_reg[31]_i_5_n_1 ;
  wire \k_reg[31]_i_5_n_2 ;
  wire \k_reg[31]_i_5_n_3 ;
  wire \k_reg[4]_i_1_n_0 ;
  wire \k_reg[4]_i_1_n_1 ;
  wire \k_reg[4]_i_1_n_2 ;
  wire \k_reg[4]_i_1_n_3 ;
  wire \k_reg[4]_i_1_n_4 ;
  wire \k_reg[4]_i_1_n_5 ;
  wire \k_reg[4]_i_1_n_6 ;
  wire \k_reg[4]_i_1_n_7 ;
  wire \k_reg[8]_i_1_n_0 ;
  wire \k_reg[8]_i_1_n_1 ;
  wire \k_reg[8]_i_1_n_2 ;
  wire \k_reg[8]_i_1_n_3 ;
  wire \k_reg[8]_i_1_n_4 ;
  wire \k_reg[8]_i_1_n_5 ;
  wire \k_reg[8]_i_1_n_6 ;
  wire \k_reg[8]_i_1_n_7 ;
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
  wire \transmit_PROC_STATE[0]_i_2_n_0 ;
  wire \transmit_PROC_STATE[0]_i_3_n_0 ;
  wire \transmit_PROC_STATE[0]_i_4_n_0 ;
  wire \transmit_PROC_STATE[0]_i_5_n_0 ;
  wire \transmit_PROC_STATE[0]_i_6_n_0 ;
  wire \transmit_PROC_STATE[2]_i_2_n_0 ;
  wire [2:0]transmit_PROC_STATE_next;
  wire [23:0]transmit_WAIT_N_COUNTER;
  wire \transmit_WAIT_N_COUNTER[12]_i_3_n_0 ;
  wire \transmit_WAIT_N_COUNTER[12]_i_4_n_0 ;
  wire \transmit_WAIT_N_COUNTER[12]_i_5_n_0 ;
  wire \transmit_WAIT_N_COUNTER[12]_i_6_n_0 ;
  wire \transmit_WAIT_N_COUNTER[16]_i_3_n_0 ;
  wire \transmit_WAIT_N_COUNTER[16]_i_4_n_0 ;
  wire \transmit_WAIT_N_COUNTER[16]_i_5_n_0 ;
  wire \transmit_WAIT_N_COUNTER[16]_i_6_n_0 ;
  wire \transmit_WAIT_N_COUNTER[20]_i_3_n_0 ;
  wire \transmit_WAIT_N_COUNTER[20]_i_4_n_0 ;
  wire \transmit_WAIT_N_COUNTER[20]_i_5_n_0 ;
  wire \transmit_WAIT_N_COUNTER[20]_i_6_n_0 ;
  wire \transmit_WAIT_N_COUNTER[23]_i_1_n_0 ;
  wire \transmit_WAIT_N_COUNTER[23]_i_5_n_0 ;
  wire \transmit_WAIT_N_COUNTER[23]_i_6_n_0 ;
  wire \transmit_WAIT_N_COUNTER[23]_i_7_n_0 ;
  wire \transmit_WAIT_N_COUNTER[4]_i_3_n_0 ;
  wire \transmit_WAIT_N_COUNTER[4]_i_4_n_0 ;
  wire \transmit_WAIT_N_COUNTER[4]_i_5_n_0 ;
  wire \transmit_WAIT_N_COUNTER[4]_i_6_n_0 ;
  wire \transmit_WAIT_N_COUNTER[8]_i_3_n_0 ;
  wire \transmit_WAIT_N_COUNTER[8]_i_4_n_0 ;
  wire \transmit_WAIT_N_COUNTER[8]_i_5_n_0 ;
  wire \transmit_WAIT_N_COUNTER[8]_i_6_n_0 ;
  wire transmit_WAIT_N_COUNTER_next;
  wire [23:1]transmit_WAIT_N_COUNTER_next0;
  wire [23:0]transmit_WAIT_N_COUNTER_next1_in;
  wire \transmit_WAIT_N_COUNTER_reg[12]_i_2_n_0 ;
  wire \transmit_WAIT_N_COUNTER_reg[12]_i_2_n_1 ;
  wire \transmit_WAIT_N_COUNTER_reg[12]_i_2_n_2 ;
  wire \transmit_WAIT_N_COUNTER_reg[12]_i_2_n_3 ;
  wire \transmit_WAIT_N_COUNTER_reg[16]_i_2_n_0 ;
  wire \transmit_WAIT_N_COUNTER_reg[16]_i_2_n_1 ;
  wire \transmit_WAIT_N_COUNTER_reg[16]_i_2_n_2 ;
  wire \transmit_WAIT_N_COUNTER_reg[16]_i_2_n_3 ;
  wire \transmit_WAIT_N_COUNTER_reg[20]_i_2_n_0 ;
  wire \transmit_WAIT_N_COUNTER_reg[20]_i_2_n_1 ;
  wire \transmit_WAIT_N_COUNTER_reg[20]_i_2_n_2 ;
  wire \transmit_WAIT_N_COUNTER_reg[20]_i_2_n_3 ;
  wire \transmit_WAIT_N_COUNTER_reg[23]_i_4_n_2 ;
  wire \transmit_WAIT_N_COUNTER_reg[23]_i_4_n_3 ;
  wire \transmit_WAIT_N_COUNTER_reg[4]_i_2_n_0 ;
  wire \transmit_WAIT_N_COUNTER_reg[4]_i_2_n_1 ;
  wire \transmit_WAIT_N_COUNTER_reg[4]_i_2_n_2 ;
  wire \transmit_WAIT_N_COUNTER_reg[4]_i_2_n_3 ;
  wire \transmit_WAIT_N_COUNTER_reg[8]_i_2_n_0 ;
  wire \transmit_WAIT_N_COUNTER_reg[8]_i_2_n_1 ;
  wire \transmit_WAIT_N_COUNTER_reg[8]_i_2_n_2 ;
  wire \transmit_WAIT_N_COUNTER_reg[8]_i_2_n_3 ;
  wire uart_transmitter_clock;
  wire [3:0]uart_transmitter_column;
  wire [15:0]uart_transmitter_input_btint_a;
  wire [15:0]uart_transmitter_input_btint_b;
  wire uart_transmitter_output;
  wire uart_transmitter_output_i_10_n_0;
  wire uart_transmitter_output_i_11_n_0;
  wire uart_transmitter_output_i_12_n_0;
  wire uart_transmitter_output_i_14_n_0;
  wire uart_transmitter_output_i_15_n_0;
  wire uart_transmitter_output_i_16_n_0;
  wire uart_transmitter_output_i_17_n_0;
  wire uart_transmitter_output_i_19_n_0;
  wire uart_transmitter_output_i_1_n_0;
  wire uart_transmitter_output_i_20_n_0;
  wire uart_transmitter_output_i_21_n_0;
  wire uart_transmitter_output_i_22_n_0;
  wire uart_transmitter_output_i_23_n_0;
  wire uart_transmitter_output_i_24_n_0;
  wire uart_transmitter_output_i_25_n_0;
  wire uart_transmitter_output_i_26_n_0;
  wire uart_transmitter_output_i_27_n_0;
  wire uart_transmitter_output_i_2_n_0;
  wire uart_transmitter_output_i_3_n_0;
  wire uart_transmitter_output_i_5_n_0;
  wire uart_transmitter_output_i_6_n_0;
  wire uart_transmitter_output_i_7_n_0;
  wire uart_transmitter_output_i_9_n_0;
  wire [30:1]uart_transmitter_output_next2;
  wire uart_transmitter_output_reg_i_13_n_0;
  wire uart_transmitter_output_reg_i_13_n_1;
  wire uart_transmitter_output_reg_i_13_n_2;
  wire uart_transmitter_output_reg_i_13_n_3;
  wire uart_transmitter_output_reg_i_18_n_0;
  wire uart_transmitter_output_reg_i_18_n_1;
  wire uart_transmitter_output_reg_i_18_n_2;
  wire uart_transmitter_output_reg_i_18_n_3;
  wire uart_transmitter_output_reg_i_4_n_1;
  wire uart_transmitter_output_reg_i_4_n_2;
  wire uart_transmitter_output_reg_i_4_n_3;
  wire uart_transmitter_output_reg_i_8_n_0;
  wire uart_transmitter_output_reg_i_8_n_1;
  wire uart_transmitter_output_reg_i_8_n_2;
  wire uart_transmitter_output_reg_i_8_n_3;
  wire uart_transmitter_reset_active_low;
  wire [3:0]\NLW_i_reg[31]_i_14_O_UNCONNECTED ;
  wire [3:2]\NLW_i_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_i_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:0]\NLW_i_reg[31]_i_9_O_UNCONNECTED ;
  wire [3:1]\NLW_j_reg[30]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_j_reg[30]_i_2_O_UNCONNECTED ;
  wire [3:2]\NLW_k0_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_k0_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]\NLW_k_reg[31]_i_12_O_UNCONNECTED ;
  wire [3:0]\NLW_k_reg[31]_i_16_O_UNCONNECTED ;
  wire [3:0]\NLW_k_reg[31]_i_21_O_UNCONNECTED ;
  wire [3:2]\NLW_k_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_k_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:3]\NLW_k_reg[31]_i_5_CO_UNCONNECTED ;
  wire [3:0]\NLW_k_reg[31]_i_5_O_UNCONNECTED ;
  wire [3:2]\NLW_transmit_WAIT_N_COUNTER_reg[23]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_transmit_WAIT_N_COUNTER_reg[23]_i_4_O_UNCONNECTED ;
  wire [3:0]NLW_uart_transmitter_output_reg_i_13_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_18_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_4_O_UNCONNECTED;
  wire [3:0]NLW_uart_transmitter_output_reg_i_8_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_1 
       (.I0(\i_reg_n_0_[0] ),
        .O(\i[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0C4C)) 
    \i[31]_i_1 
       (.I0(\j_reg[30]_i_2_n_1 ),
        .I1(j),
        .I2(transmit_PROC_STATE[2]),
        .I3(\i_reg[31]_i_4_n_1 ),
        .O(\i[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_10 
       (.I0(\i_reg[28]_i_1_n_7 ),
        .I1(\i_reg[24]_i_1_n_4 ),
        .O(\i[31]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_11 
       (.I0(\i_reg[24]_i_1_n_5 ),
        .I1(\i_reg[24]_i_1_n_6 ),
        .O(\i[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_12 
       (.I0(\i_reg[24]_i_1_n_7 ),
        .I1(\i_reg[20]_i_1_n_4 ),
        .O(\i[31]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_13 
       (.I0(\i_reg[20]_i_1_n_5 ),
        .I1(\i_reg[20]_i_1_n_6 ),
        .O(\i[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_15 
       (.I0(\i_reg[20]_i_1_n_7 ),
        .I1(\i_reg[16]_i_1_n_4 ),
        .O(\i[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_16 
       (.I0(\i_reg[16]_i_1_n_5 ),
        .I1(\i_reg[16]_i_1_n_6 ),
        .O(\i[31]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_17 
       (.I0(\i_reg[16]_i_1_n_7 ),
        .I1(\i_reg[12]_i_1_n_4 ),
        .O(\i[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_18 
       (.I0(\i_reg[12]_i_1_n_5 ),
        .I1(\i_reg[12]_i_1_n_6 ),
        .O(\i[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_19 
       (.I0(\i_reg[4]_i_1_n_6 ),
        .I1(\i_reg[4]_i_1_n_5 ),
        .O(\i[31]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h2A)) 
    \i[31]_i_2 
       (.I0(j),
        .I1(\j_reg[30]_i_2_n_1 ),
        .I2(transmit_PROC_STATE[2]),
        .O(i));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_20 
       (.I0(\i_reg[12]_i_1_n_7 ),
        .I1(\i_reg[8]_i_1_n_4 ),
        .O(\i[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_21 
       (.I0(\i_reg[8]_i_1_n_5 ),
        .I1(\i_reg[8]_i_1_n_6 ),
        .O(\i[31]_i_21_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_22 
       (.I0(\i_reg[8]_i_1_n_7 ),
        .I1(\i_reg[4]_i_1_n_4 ),
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
       (.I0(\i_reg[31]_i_3_n_5 ),
        .I1(\i_reg[31]_i_3_n_6 ),
        .O(\i[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_7 
       (.I0(\i_reg[31]_i_3_n_7 ),
        .I1(\i_reg[28]_i_1_n_4 ),
        .O(\i[31]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \i[31]_i_8 
       (.I0(\i_reg[28]_i_1_n_5 ),
        .I1(\i_reg[28]_i_1_n_6 ),
        .O(\i[31]_i_8_n_0 ));
  FDRE \i_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(i),
        .D(\i[0]_i_1_n_0 ),
        .Q(\i_reg_n_0_[0] ),
        .R(\i[31]_i_1_n_0 ));
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
    .INIT(64'hFFFBBBBB00088888)) 
    \input_btint_a[0]_i_1 
       (.I0(\input_btint_a[0]_i_2_n_0 ),
        .I1(\input_btint_a[24]_i_3_n_0 ),
        .I2(\input_btint_a[24]_i_5_n_0 ),
        .I3(\input_btint_a[0]_i_3_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(\input_btint_a_reg_n_0_[0] ),
        .O(\input_btint_a[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[0]_i_10 
       (.I0(uart_transmitter_input_btint_a[6]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[14]),
        .O(\input_btint_a[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[0]_i_11 
       (.I0(uart_transmitter_input_btint_a[10]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[2]),
        .O(\input_btint_a[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000454455554544)) 
    \input_btint_a[0]_i_2 
       (.I0(transmit_PROC_STATE[1]),
        .I1(\input_btint_a[0]_i_4_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_a[0]_i_5_n_0 ),
        .I4(uart_transmitter_column[0]),
        .I5(\input_btint_a[0]_i_6_n_0 ),
        .O(\input_btint_a[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \input_btint_a[0]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\input_btint_a[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB800FF00B8000000)) 
    \input_btint_a[0]_i_4 
       (.I0(uart_transmitter_input_btint_a[5]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[13]),
        .I3(uart_transmitter_column[1]),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_a[0]_i_7_n_0 ),
        .O(\input_btint_a[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[0]_i_5 
       (.I0(uart_transmitter_input_btint_a[7]),
        .I1(uart_transmitter_input_btint_a[15]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[11]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[3]),
        .O(\input_btint_a[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \input_btint_a[0]_i_6 
       (.I0(\input_btint_a[0]_i_8_n_0 ),
        .I1(\input_btint_a[0]_i_9_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_a[0]_i_10_n_0 ),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_a[0]_i_11_n_0 ),
        .O(\input_btint_a[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[0]_i_7 
       (.I0(uart_transmitter_input_btint_a[9]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[1]),
        .O(\input_btint_a[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[0]_i_8 
       (.I0(uart_transmitter_input_btint_a[4]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[12]),
        .O(\input_btint_a[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[0]_i_9 
       (.I0(uart_transmitter_input_btint_a[8]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[0]),
        .O(\input_btint_a[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBBB00088888)) 
    \input_btint_a[16]_i_1 
       (.I0(\input_btint_a[16]_i_2_n_0 ),
        .I1(\input_btint_a[24]_i_3_n_0 ),
        .I2(\input_btint_a[24]_i_5_n_0 ),
        .I3(\input_btint_a[16]_i_3_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(\input_btint_a_reg_n_0_[16] ),
        .O(\input_btint_a[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[16]_i_10 
       (.I0(uart_transmitter_input_btint_a[3]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[11]),
        .O(\input_btint_a[16]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[16]_i_11 
       (.I0(uart_transmitter_input_btint_a[12]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[4]),
        .O(\input_btint_a[16]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0101510151515151)) 
    \input_btint_a[16]_i_2 
       (.I0(transmit_PROC_STATE[1]),
        .I1(\input_btint_a[16]_i_4_n_0 ),
        .I2(uart_transmitter_column[0]),
        .I3(\input_btint_a[16]_i_5_n_0 ),
        .I4(uart_transmitter_column[1]),
        .I5(\input_btint_a[16]_i_6_n_0 ),
        .O(\input_btint_a[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \input_btint_a[16]_i_3 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\input_btint_a[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \input_btint_a[16]_i_4 
       (.I0(\input_btint_a[16]_i_7_n_0 ),
        .I1(\input_btint_a[16]_i_8_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_a[16]_i_9_n_0 ),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_a[16]_i_10_n_0 ),
        .O(\input_btint_a[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[16]_i_5 
       (.I0(uart_transmitter_input_btint_a[14]),
        .I1(uart_transmitter_input_btint_a[6]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[2]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[10]),
        .O(\input_btint_a[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00FF47FFFFFF47FF)) 
    \input_btint_a[16]_i_6 
       (.I0(uart_transmitter_input_btint_a[0]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[8]),
        .I3(uart_transmitter_column[1]),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_a[16]_i_11_n_0 ),
        .O(\input_btint_a[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[16]_i_7 
       (.I0(uart_transmitter_input_btint_a[1]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[9]),
        .O(\input_btint_a[16]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[16]_i_8 
       (.I0(uart_transmitter_input_btint_a[13]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[5]),
        .O(\input_btint_a[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_a[16]_i_9 
       (.I0(uart_transmitter_input_btint_a[15]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_a[7]),
        .O(\input_btint_a[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBBB00088888)) 
    \input_btint_a[24]_i_1 
       (.I0(input_btint_a_next),
        .I1(\input_btint_a[24]_i_3_n_0 ),
        .I2(\input_btint_a[24]_i_4_n_0 ),
        .I3(\input_btint_a[24]_i_5_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(\input_btint_a_reg_n_0_[24] ),
        .O(\input_btint_a[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[24]_i_10 
       (.I0(uart_transmitter_input_btint_a[3]),
        .I1(uart_transmitter_input_btint_a[11]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[7]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[15]),
        .O(\input_btint_a[24]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[24]_i_11 
       (.I0(uart_transmitter_input_btint_a[1]),
        .I1(uart_transmitter_input_btint_a[9]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[5]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[13]),
        .O(\input_btint_a[24]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \input_btint_a[24]_i_2 
       (.I0(\input_btint_a_reg[24]_i_7_n_0 ),
        .I1(uart_transmitter_column[0]),
        .I2(\input_btint_a[24]_i_8_n_0 ),
        .I3(uart_transmitter_column[1]),
        .I4(\input_btint_a[24]_i_9_n_0 ),
        .I5(transmit_PROC_STATE[1]),
        .O(input_btint_a_next));
  LUT2 #(
    .INIT(4'h2)) 
    \input_btint_a[24]_i_3 
       (.I0(uart_transmitter_reset_active_low),
        .I1(transmit_PROC_STATE[0]),
        .O(\input_btint_a[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \input_btint_a[24]_i_4 
       (.I0(\i_reg_n_0_[1] ),
        .I1(\i_reg_n_0_[0] ),
        .O(\input_btint_a[24]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \input_btint_a[24]_i_5 
       (.I0(transmit_PROC_STATE[2]),
        .I1(\k[31]_i_4_n_0 ),
        .O(\input_btint_a[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFAAFFAAFEAAFFAA)) 
    \input_btint_a[24]_i_6 
       (.I0(transmit_PROC_STATE[1]),
        .I1(\i_reg[31]_i_4_n_1 ),
        .I2(\j_reg[30]_i_2_n_1 ),
        .I3(transmit_PROC_STATE[2]),
        .I4(\transmit_PROC_STATE[0]_i_2_n_0 ),
        .I5(p_4_in),
        .O(\input_btint_a[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[24]_i_8 
       (.I0(uart_transmitter_input_btint_a[2]),
        .I1(uart_transmitter_input_btint_a[10]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[6]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[14]),
        .O(\input_btint_a[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[24]_i_9 
       (.I0(uart_transmitter_input_btint_a[0]),
        .I1(uart_transmitter_input_btint_a[8]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[4]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[12]),
        .O(\input_btint_a[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2F20002020)) 
    \input_btint_a[8]_i_1 
       (.I0(\input_btint_a_reg[8]_i_2_n_0 ),
        .I1(transmit_PROC_STATE[1]),
        .I2(\input_btint_a[24]_i_3_n_0 ),
        .I3(\input_btint_a[8]_i_3_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(\input_btint_a_reg_n_0_[8] ),
        .O(\input_btint_a[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \input_btint_a[8]_i_3 
       (.I0(\k[31]_i_4_n_0 ),
        .I1(transmit_PROC_STATE[2]),
        .I2(\i_reg_n_0_[1] ),
        .I3(\i_reg_n_0_[0] ),
        .O(\input_btint_a[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[8]_i_6 
       (.I0(uart_transmitter_input_btint_a[11]),
        .I1(uart_transmitter_input_btint_a[3]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[15]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[7]),
        .O(\input_btint_a[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[8]_i_7 
       (.I0(uart_transmitter_input_btint_a[9]),
        .I1(uart_transmitter_input_btint_a[1]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[13]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[5]),
        .O(\input_btint_a[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[8]_i_8 
       (.I0(uart_transmitter_input_btint_a[10]),
        .I1(uart_transmitter_input_btint_a[2]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[14]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[6]),
        .O(\input_btint_a[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_a[8]_i_9 
       (.I0(uart_transmitter_input_btint_a[8]),
        .I1(uart_transmitter_input_btint_a[0]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_a[12]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_a[4]),
        .O(\input_btint_a[8]_i_9_n_0 ));
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
  MUXF7 \input_btint_a_reg[24]_i_7 
       (.I0(\input_btint_a[24]_i_10_n_0 ),
        .I1(\input_btint_a[24]_i_11_n_0 ),
        .O(\input_btint_a_reg[24]_i_7_n_0 ),
        .S(uart_transmitter_column[1]));
  FDRE \input_btint_a_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_a[8]_i_1_n_0 ),
        .Q(\input_btint_a_reg_n_0_[8] ),
        .R(1'b0));
  MUXF8 \input_btint_a_reg[8]_i_2 
       (.I0(\input_btint_a_reg[8]_i_4_n_0 ),
        .I1(\input_btint_a_reg[8]_i_5_n_0 ),
        .O(\input_btint_a_reg[8]_i_2_n_0 ),
        .S(uart_transmitter_column[0]));
  MUXF7 \input_btint_a_reg[8]_i_4 
       (.I0(\input_btint_a[8]_i_6_n_0 ),
        .I1(\input_btint_a[8]_i_7_n_0 ),
        .O(\input_btint_a_reg[8]_i_4_n_0 ),
        .S(uart_transmitter_column[1]));
  MUXF7 \input_btint_a_reg[8]_i_5 
       (.I0(\input_btint_a[8]_i_8_n_0 ),
        .I1(\input_btint_a[8]_i_9_n_0 ),
        .O(\input_btint_a_reg[8]_i_5_n_0 ),
        .S(uart_transmitter_column[1]));
  LUT6 #(
    .INIT(64'h1FFF1F1F10001010)) 
    \input_btint_b[0]_i_1 
       (.I0(transmit_PROC_STATE[1]),
        .I1(\input_btint_b_reg[0]_i_2_n_0 ),
        .I2(\input_btint_a[24]_i_3_n_0 ),
        .I3(\input_btint_b[0]_i_3_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(input_btint_b[0]),
        .O(\input_btint_b[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_10 
       (.I0(uart_transmitter_input_btint_b[4]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[12]),
        .O(\input_btint_b[0]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_11 
       (.I0(uart_transmitter_input_btint_b[8]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[0]),
        .O(\input_btint_b[0]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_12 
       (.I0(uart_transmitter_input_btint_b[6]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[14]),
        .O(\input_btint_b[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_13 
       (.I0(uart_transmitter_input_btint_b[10]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[2]),
        .O(\input_btint_b[0]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \input_btint_b[0]_i_3 
       (.I0(\k[31]_i_4_n_0 ),
        .I1(transmit_PROC_STATE[2]),
        .I2(\i_reg_n_0_[0] ),
        .I3(\i_reg_n_0_[1] ),
        .O(\input_btint_b[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \input_btint_b[0]_i_4 
       (.I0(\input_btint_b[0]_i_6_n_0 ),
        .I1(\input_btint_b[0]_i_7_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_b[0]_i_8_n_0 ),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_b[0]_i_9_n_0 ),
        .O(\input_btint_b[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h505F3030505F3F3F)) 
    \input_btint_b[0]_i_5 
       (.I0(\input_btint_b[0]_i_10_n_0 ),
        .I1(\input_btint_b[0]_i_11_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_b[0]_i_12_n_0 ),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_b[0]_i_13_n_0 ),
        .O(\input_btint_b[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_6 
       (.I0(uart_transmitter_input_btint_b[9]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[1]),
        .O(\input_btint_b[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_7 
       (.I0(uart_transmitter_input_btint_b[5]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[13]),
        .O(\input_btint_b[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_8 
       (.I0(uart_transmitter_input_btint_b[7]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[15]),
        .O(\input_btint_b[0]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[0]_i_9 
       (.I0(uart_transmitter_input_btint_b[11]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[3]),
        .O(\input_btint_b[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBBB00088888)) 
    \input_btint_b[16]_i_1 
       (.I0(\input_btint_b[16]_i_2_n_0 ),
        .I1(\input_btint_a[24]_i_3_n_0 ),
        .I2(\input_btint_a[24]_i_5_n_0 ),
        .I3(\input_btint_a[16]_i_3_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(input_btint_b[16]),
        .O(\input_btint_b[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[16]_i_10 
       (.I0(uart_transmitter_input_btint_b[2]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[10]),
        .O(\input_btint_b[16]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000045555550455)) 
    \input_btint_b[16]_i_2 
       (.I0(transmit_PROC_STATE[1]),
        .I1(\input_btint_b[16]_i_3_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_b[16]_i_4_n_0 ),
        .I4(uart_transmitter_column[0]),
        .I5(\input_btint_b[16]_i_5_n_0 ),
        .O(\input_btint_b[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[16]_i_3 
       (.I0(uart_transmitter_input_btint_b[15]),
        .I1(uart_transmitter_input_btint_b[7]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[3]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[11]),
        .O(\input_btint_b[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00FF47FFFFFF47FF)) 
    \input_btint_b[16]_i_4 
       (.I0(uart_transmitter_input_btint_b[1]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[9]),
        .I3(uart_transmitter_column[1]),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_b[16]_i_6_n_0 ),
        .O(\input_btint_b[16]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h303F5050303F5F5F)) 
    \input_btint_b[16]_i_5 
       (.I0(\input_btint_b[16]_i_7_n_0 ),
        .I1(\input_btint_b[16]_i_8_n_0 ),
        .I2(uart_transmitter_column[1]),
        .I3(\input_btint_b[16]_i_9_n_0 ),
        .I4(uart_transmitter_column[2]),
        .I5(\input_btint_b[16]_i_10_n_0 ),
        .O(\input_btint_b[16]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[16]_i_6 
       (.I0(uart_transmitter_input_btint_b[13]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[5]),
        .O(\input_btint_b[16]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[16]_i_7 
       (.I0(uart_transmitter_input_btint_b[0]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[8]),
        .O(\input_btint_b[16]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[16]_i_8 
       (.I0(uart_transmitter_input_btint_b[12]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[4]),
        .O(\input_btint_b[16]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \input_btint_b[16]_i_9 
       (.I0(uart_transmitter_input_btint_b[14]),
        .I1(uart_transmitter_column[3]),
        .I2(uart_transmitter_input_btint_b[6]),
        .O(\input_btint_b[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBBBBB00088888)) 
    \input_btint_b[24]_i_1 
       (.I0(\input_btint_b[24]_i_2_n_0 ),
        .I1(\input_btint_a[24]_i_3_n_0 ),
        .I2(\input_btint_a[24]_i_4_n_0 ),
        .I3(\input_btint_a[24]_i_5_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(input_btint_b[24]),
        .O(\input_btint_b[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEE222E2)) 
    \input_btint_b[24]_i_2 
       (.I0(\input_btint_b_reg[24]_i_3_n_0 ),
        .I1(uart_transmitter_column[0]),
        .I2(\input_btint_b[24]_i_4_n_0 ),
        .I3(uart_transmitter_column[1]),
        .I4(\input_btint_b[24]_i_5_n_0 ),
        .I5(transmit_PROC_STATE[1]),
        .O(\input_btint_b[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[24]_i_4 
       (.I0(uart_transmitter_input_btint_b[2]),
        .I1(uart_transmitter_input_btint_b[10]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[6]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[14]),
        .O(\input_btint_b[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[24]_i_5 
       (.I0(uart_transmitter_input_btint_b[0]),
        .I1(uart_transmitter_input_btint_b[8]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[4]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[12]),
        .O(\input_btint_b[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[24]_i_6 
       (.I0(uart_transmitter_input_btint_b[3]),
        .I1(uart_transmitter_input_btint_b[11]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[7]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[15]),
        .O(\input_btint_b[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[24]_i_7 
       (.I0(uart_transmitter_input_btint_b[1]),
        .I1(uart_transmitter_input_btint_b[9]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[5]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[13]),
        .O(\input_btint_b[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2FFF2F2F20002020)) 
    \input_btint_b[8]_i_1 
       (.I0(\input_btint_b_reg[8]_i_2_n_0 ),
        .I1(transmit_PROC_STATE[1]),
        .I2(\input_btint_a[24]_i_3_n_0 ),
        .I3(\input_btint_a[8]_i_3_n_0 ),
        .I4(\input_btint_a[24]_i_6_n_0 ),
        .I5(input_btint_b[8]),
        .O(\input_btint_b[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[8]_i_5 
       (.I0(uart_transmitter_input_btint_b[11]),
        .I1(uart_transmitter_input_btint_b[3]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[15]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[7]),
        .O(\input_btint_b[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[8]_i_6 
       (.I0(uart_transmitter_input_btint_b[9]),
        .I1(uart_transmitter_input_btint_b[1]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[13]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[5]),
        .O(\input_btint_b[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[8]_i_7 
       (.I0(uart_transmitter_input_btint_b[10]),
        .I1(uart_transmitter_input_btint_b[2]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[14]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[6]),
        .O(\input_btint_b[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \input_btint_b[8]_i_8 
       (.I0(uart_transmitter_input_btint_b[8]),
        .I1(uart_transmitter_input_btint_b[0]),
        .I2(uart_transmitter_column[2]),
        .I3(uart_transmitter_input_btint_b[12]),
        .I4(uart_transmitter_column[3]),
        .I5(uart_transmitter_input_btint_b[4]),
        .O(\input_btint_b[8]_i_8_n_0 ));
  FDRE \input_btint_b_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_b[0]_i_1_n_0 ),
        .Q(input_btint_b[0]),
        .R(1'b0));
  MUXF7 \input_btint_b_reg[0]_i_2 
       (.I0(\input_btint_b[0]_i_4_n_0 ),
        .I1(\input_btint_b[0]_i_5_n_0 ),
        .O(\input_btint_b_reg[0]_i_2_n_0 ),
        .S(uart_transmitter_column[0]));
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
  MUXF7 \input_btint_b_reg[24]_i_3 
       (.I0(\input_btint_b[24]_i_6_n_0 ),
        .I1(\input_btint_b[24]_i_7_n_0 ),
        .O(\input_btint_b_reg[24]_i_3_n_0 ),
        .S(uart_transmitter_column[1]));
  FDRE \input_btint_b_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(\input_btint_b[8]_i_1_n_0 ),
        .Q(input_btint_b[8]),
        .R(1'b0));
  MUXF8 \input_btint_b_reg[8]_i_2 
       (.I0(\input_btint_b_reg[8]_i_3_n_0 ),
        .I1(\input_btint_b_reg[8]_i_4_n_0 ),
        .O(\input_btint_b_reg[8]_i_2_n_0 ),
        .S(uart_transmitter_column[0]));
  MUXF7 \input_btint_b_reg[8]_i_3 
       (.I0(\input_btint_b[8]_i_5_n_0 ),
        .I1(\input_btint_b[8]_i_6_n_0 ),
        .O(\input_btint_b_reg[8]_i_3_n_0 ),
        .S(uart_transmitter_column[1]));
  MUXF7 \input_btint_b_reg[8]_i_4 
       (.I0(\input_btint_b[8]_i_7_n_0 ),
        .I1(\input_btint_b[8]_i_8_n_0 ),
        .O(\input_btint_b_reg[8]_i_4_n_0 ),
        .S(uart_transmitter_column[1]));
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
  LUT5 #(
    .INIT(32'hBFFFBF00)) 
    \j[1]_i_1 
       (.I0(uart_transmitter_output_next2[1]),
        .I1(\j_reg[30]_i_2_n_1 ),
        .I2(transmit_PROC_STATE[2]),
        .I3(j),
        .I4(\j_reg_n_0_[1] ),
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
  LUT5 #(
    .INIT(32'hBFFFBF00)) 
    \j[2]_i_1 
       (.I0(uart_transmitter_output_next2[2]),
        .I1(\j_reg[30]_i_2_n_1 ),
        .I2(transmit_PROC_STATE[2]),
        .I3(j),
        .I4(\j_reg_n_0_[2] ),
        .O(\j[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000005D00000000)) 
    \j[30]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(\transmit_PROC_STATE[0]_i_2_n_0 ),
        .I2(p_4_in),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[1]),
        .I5(uart_transmitter_reset_active_low),
        .O(j));
  LUT1 #(
    .INIT(2'h1)) 
    \j[30]_i_3 
       (.I0(\j_reg_n_0_[30] ),
        .O(\j[30]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \j[30]_i_4 
       (.I0(\j_reg_n_0_[29] ),
        .O(\j[30]_i_4_n_0 ));
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
        .R(i));
  FDRE \j_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[11]),
        .Q(\j_reg_n_0_[11] ),
        .R(i));
  FDRE \j_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[12]),
        .Q(\j_reg_n_0_[12] ),
        .R(i));
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
        .R(i));
  FDRE \j_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[14]),
        .Q(\j_reg_n_0_[14] ),
        .R(i));
  FDRE \j_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[15]),
        .Q(\j_reg_n_0_[15] ),
        .R(i));
  FDRE \j_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[16]),
        .Q(\j_reg_n_0_[16] ),
        .R(i));
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
        .R(i));
  FDRE \j_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[18]),
        .Q(\j_reg_n_0_[18] ),
        .R(i));
  FDRE \j_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[19]),
        .Q(\j_reg_n_0_[19] ),
        .R(i));
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
        .R(i));
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
        .R(i));
  FDRE \j_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[22]),
        .Q(\j_reg_n_0_[22] ),
        .R(i));
  FDRE \j_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[23]),
        .Q(\j_reg_n_0_[23] ),
        .R(i));
  FDRE \j_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[24]),
        .Q(\j_reg_n_0_[24] ),
        .R(i));
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
        .R(i));
  FDRE \j_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[26]),
        .Q(\j_reg_n_0_[26] ),
        .R(i));
  FDRE \j_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[27]),
        .Q(\j_reg_n_0_[27] ),
        .R(i));
  FDRE \j_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[28]),
        .Q(\j_reg_n_0_[28] ),
        .R(i));
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
        .R(i));
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
        .R(i));
  CARRY4 \j_reg[30]_i_2 
       (.CI(\j_reg[28]_i_1_n_0 ),
        .CO({\NLW_j_reg[30]_i_2_CO_UNCONNECTED [3],\j_reg[30]_i_2_n_1 ,\NLW_j_reg[30]_i_2_CO_UNCONNECTED [1],\j_reg[30]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\j_reg_n_0_[30] ,\j_reg_n_0_[29] }),
        .O({\NLW_j_reg[30]_i_2_O_UNCONNECTED [3:2],uart_transmitter_output_next2[30:29]}),
        .S({1'b0,1'b1,\j[30]_i_3_n_0 ,\j[30]_i_4_n_0 }));
  FDRE \j_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[3]),
        .Q(\j_reg_n_0_[3] ),
        .R(i));
  FDRE \j_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[4]),
        .Q(\j_reg_n_0_[4] ),
        .R(i));
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
        .R(i));
  FDRE \j_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[6]),
        .Q(\j_reg_n_0_[6] ),
        .R(i));
  FDRE \j_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[7]),
        .Q(\j_reg_n_0_[7] ),
        .R(i));
  FDRE \j_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(j),
        .D(uart_transmitter_output_next2[8]),
        .Q(\j_reg_n_0_[8] ),
        .R(i));
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
        .R(i));
  LUT1 #(
    .INIT(2'h1)) 
    \k0[0]_i_1 
       (.I0(\k0_reg_n_0_[0] ),
        .O(\k0[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \k0[31]_i_1 
       (.I0(transmit_PROC_STATE[0]),
        .I1(\k[31]_i_4_n_0 ),
        .I2(transmit_PROC_STATE[2]),
        .I3(uart_transmitter_reset_active_low),
        .I4(transmit_PROC_STATE[1]),
        .O(\k0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0020)) 
    \k0[31]_i_2 
       (.I0(transmit_PROC_STATE[0]),
        .I1(\k[31]_i_4_n_0 ),
        .I2(uart_transmitter_reset_active_low),
        .I3(transmit_PROC_STATE[2]),
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
        .D(\k0_reg[12]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[10] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[12]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[11] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[12]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[12] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[12]_i_1 
       (.CI(\k0_reg[8]_i_1_n_0 ),
        .CO({\k0_reg[12]_i_1_n_0 ,\k0_reg[12]_i_1_n_1 ,\k0_reg[12]_i_1_n_2 ,\k0_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[12]_i_1_n_4 ,\k0_reg[12]_i_1_n_5 ,\k0_reg[12]_i_1_n_6 ,\k0_reg[12]_i_1_n_7 }),
        .S({\k0_reg_n_0_[12] ,\k0_reg_n_0_[11] ,\k0_reg_n_0_[10] ,\k0_reg_n_0_[9] }));
  FDRE \k0_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[16]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[13] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[16]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[14] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[16]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[15] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[16]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[16] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[16]_i_1 
       (.CI(\k0_reg[12]_i_1_n_0 ),
        .CO({\k0_reg[16]_i_1_n_0 ,\k0_reg[16]_i_1_n_1 ,\k0_reg[16]_i_1_n_2 ,\k0_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[16]_i_1_n_4 ,\k0_reg[16]_i_1_n_5 ,\k0_reg[16]_i_1_n_6 ,\k0_reg[16]_i_1_n_7 }),
        .S({\k0_reg_n_0_[16] ,\k0_reg_n_0_[15] ,\k0_reg_n_0_[14] ,\k0_reg_n_0_[13] }));
  FDRE \k0_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[20]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[17] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[20]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[18] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[20]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[19] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[4]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[1] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[20]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[20] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[20]_i_1 
       (.CI(\k0_reg[16]_i_1_n_0 ),
        .CO({\k0_reg[20]_i_1_n_0 ,\k0_reg[20]_i_1_n_1 ,\k0_reg[20]_i_1_n_2 ,\k0_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[20]_i_1_n_4 ,\k0_reg[20]_i_1_n_5 ,\k0_reg[20]_i_1_n_6 ,\k0_reg[20]_i_1_n_7 }),
        .S({\k0_reg_n_0_[20] ,\k0_reg_n_0_[19] ,\k0_reg_n_0_[18] ,\k0_reg_n_0_[17] }));
  FDRE \k0_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[24]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[21] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[24]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[22] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[24]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[23] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[24]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[24] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[24]_i_1 
       (.CI(\k0_reg[20]_i_1_n_0 ),
        .CO({\k0_reg[24]_i_1_n_0 ,\k0_reg[24]_i_1_n_1 ,\k0_reg[24]_i_1_n_2 ,\k0_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[24]_i_1_n_4 ,\k0_reg[24]_i_1_n_5 ,\k0_reg[24]_i_1_n_6 ,\k0_reg[24]_i_1_n_7 }),
        .S({\k0_reg_n_0_[24] ,\k0_reg_n_0_[23] ,\k0_reg_n_0_[22] ,\k0_reg_n_0_[21] }));
  FDRE \k0_reg[25] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[28]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[25] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[28]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[26] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[28]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[27] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[28]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[28] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[28]_i_1 
       (.CI(\k0_reg[24]_i_1_n_0 ),
        .CO({\k0_reg[28]_i_1_n_0 ,\k0_reg[28]_i_1_n_1 ,\k0_reg[28]_i_1_n_2 ,\k0_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[28]_i_1_n_4 ,\k0_reg[28]_i_1_n_5 ,\k0_reg[28]_i_1_n_6 ,\k0_reg[28]_i_1_n_7 }),
        .S({\k0_reg_n_0_[28] ,\k0_reg_n_0_[27] ,\k0_reg_n_0_[26] ,\k0_reg_n_0_[25] }));
  FDRE \k0_reg[29] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[31]_i_3_n_7 ),
        .Q(\k0_reg_n_0_[29] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[4]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[2] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[30] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[31]_i_3_n_6 ),
        .Q(\k0_reg_n_0_[30] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[31] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[31]_i_3_n_5 ),
        .Q(\k0_reg_n_0_[31] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[31]_i_3 
       (.CI(\k0_reg[28]_i_1_n_0 ),
        .CO({\NLW_k0_reg[31]_i_3_CO_UNCONNECTED [3:2],\k0_reg[31]_i_3_n_2 ,\k0_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k0_reg[31]_i_3_O_UNCONNECTED [3],\k0_reg[31]_i_3_n_5 ,\k0_reg[31]_i_3_n_6 ,\k0_reg[31]_i_3_n_7 }),
        .S({1'b0,\k0_reg_n_0_[31] ,\k0_reg_n_0_[30] ,\k0_reg_n_0_[29] }));
  FDRE \k0_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[4]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[3] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[4]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[4] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\k0_reg[4]_i_1_n_0 ,\k0_reg[4]_i_1_n_1 ,\k0_reg[4]_i_1_n_2 ,\k0_reg[4]_i_1_n_3 }),
        .CYINIT(\k0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[4]_i_1_n_4 ,\k0_reg[4]_i_1_n_5 ,\k0_reg[4]_i_1_n_6 ,\k0_reg[4]_i_1_n_7 }),
        .S({\k0_reg_n_0_[4] ,\k0_reg_n_0_[3] ,\k0_reg_n_0_[2] ,\k0_reg_n_0_[1] }));
  FDRE \k0_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[8]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[5] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[8]_i_1_n_6 ),
        .Q(\k0_reg_n_0_[6] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[8]_i_1_n_5 ),
        .Q(\k0_reg_n_0_[7] ),
        .R(\k0[31]_i_1_n_0 ));
  FDRE \k0_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[8]_i_1_n_4 ),
        .Q(\k0_reg_n_0_[8] ),
        .R(\k0[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k0_reg[8]_i_1 
       (.CI(\k0_reg[4]_i_1_n_0 ),
        .CO({\k0_reg[8]_i_1_n_0 ,\k0_reg[8]_i_1_n_1 ,\k0_reg[8]_i_1_n_2 ,\k0_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k0_reg[8]_i_1_n_4 ,\k0_reg[8]_i_1_n_5 ,\k0_reg[8]_i_1_n_6 ,\k0_reg[8]_i_1_n_7 }),
        .S({\k0_reg_n_0_[8] ,\k0_reg_n_0_[7] ,\k0_reg_n_0_[6] ,\k0_reg_n_0_[5] }));
  FDRE \k0_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(k0),
        .D(\k0_reg[12]_i_1_n_7 ),
        .Q(\k0_reg_n_0_[9] ),
        .R(\k0[31]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \k[0]_i_1 
       (.I0(\k_reg_n_0_[0] ),
        .O(\k[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \k[31]_i_1 
       (.I0(uart_transmitter_reset_active_low),
        .I1(\k[31]_i_4_n_0 ),
        .I2(transmit_PROC_STATE[0]),
        .I3(transmit_PROC_STATE[1]),
        .I4(\k_reg[31]_i_5_n_1 ),
        .I5(transmit_PROC_STATE[2]),
        .O(\k[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[31]_i_10 
       (.I0(transmit_WAIT_N_COUNTER[5]),
        .I1(transmit_WAIT_N_COUNTER[9]),
        .I2(transmit_WAIT_N_COUNTER[19]),
        .I3(transmit_WAIT_N_COUNTER[17]),
        .O(\k[31]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[31]_i_11 
       (.I0(transmit_WAIT_N_COUNTER[18]),
        .I1(transmit_WAIT_N_COUNTER[10]),
        .I2(transmit_WAIT_N_COUNTER[14]),
        .I3(transmit_WAIT_N_COUNTER[15]),
        .O(\k[31]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_13 
       (.I0(\k0_reg[31]_i_3_n_5 ),
        .I1(\k0_reg[31]_i_3_n_6 ),
        .O(\k[31]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_14 
       (.I0(\k0_reg[31]_i_3_n_7 ),
        .I1(\k0_reg[28]_i_1_n_4 ),
        .O(\k[31]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_15 
       (.I0(\k0_reg[28]_i_1_n_5 ),
        .I1(\k0_reg[28]_i_1_n_6 ),
        .O(\k[31]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_17 
       (.I0(\k0_reg[28]_i_1_n_7 ),
        .I1(\k0_reg[24]_i_1_n_4 ),
        .O(\k[31]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_18 
       (.I0(\k0_reg[24]_i_1_n_5 ),
        .I1(\k0_reg[24]_i_1_n_6 ),
        .O(\k[31]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_19 
       (.I0(\k0_reg[24]_i_1_n_7 ),
        .I1(\k0_reg[20]_i_1_n_4 ),
        .O(\k[31]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0002000200002000)) 
    \k[31]_i_2 
       (.I0(uart_transmitter_reset_active_low),
        .I1(\k[31]_i_4_n_0 ),
        .I2(transmit_PROC_STATE[0]),
        .I3(transmit_PROC_STATE[1]),
        .I4(\k_reg[31]_i_5_n_1 ),
        .I5(transmit_PROC_STATE[2]),
        .O(k));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_20 
       (.I0(\k0_reg[20]_i_1_n_5 ),
        .I1(\k0_reg[20]_i_1_n_6 ),
        .O(\k[31]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_22 
       (.I0(\k0_reg[20]_i_1_n_7 ),
        .I1(\k0_reg[16]_i_1_n_4 ),
        .O(\k[31]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_23 
       (.I0(\k0_reg[16]_i_1_n_5 ),
        .I1(\k0_reg[16]_i_1_n_6 ),
        .O(\k[31]_i_23_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_24 
       (.I0(\k0_reg[16]_i_1_n_7 ),
        .I1(\k0_reg[12]_i_1_n_4 ),
        .O(\k[31]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_25 
       (.I0(\k0_reg[12]_i_1_n_5 ),
        .I1(\k0_reg[12]_i_1_n_6 ),
        .O(\k[31]_i_25_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_26 
       (.I0(\k0_reg[4]_i_1_n_6 ),
        .I1(\k0_reg[4]_i_1_n_5 ),
        .O(\k[31]_i_26_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_27 
       (.I0(\k0_reg[12]_i_1_n_7 ),
        .I1(\k0_reg[8]_i_1_n_4 ),
        .O(\k[31]_i_27_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_28 
       (.I0(\k0_reg[8]_i_1_n_5 ),
        .I1(\k0_reg[8]_i_1_n_6 ),
        .O(\k[31]_i_28_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \k[31]_i_29 
       (.I0(\k0_reg[8]_i_1_n_7 ),
        .I1(\k0_reg[4]_i_1_n_4 ),
        .O(\k[31]_i_29_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \k[31]_i_30 
       (.I0(\k0_reg[4]_i_1_n_6 ),
        .I1(\k0_reg[4]_i_1_n_5 ),
        .O(\k[31]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \k[31]_i_4 
       (.I0(\k[31]_i_6_n_0 ),
        .I1(\k[31]_i_7_n_0 ),
        .I2(\k[31]_i_8_n_0 ),
        .I3(\k[31]_i_9_n_0 ),
        .I4(\k[31]_i_10_n_0 ),
        .I5(\k[31]_i_11_n_0 ),
        .O(\k[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[31]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[7]),
        .I1(transmit_WAIT_N_COUNTER[8]),
        .I2(transmit_WAIT_N_COUNTER[4]),
        .I3(transmit_WAIT_N_COUNTER[6]),
        .O(\k[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \k[31]_i_7 
       (.I0(transmit_WAIT_N_COUNTER[21]),
        .I1(transmit_WAIT_N_COUNTER[1]),
        .I2(transmit_WAIT_N_COUNTER[0]),
        .I3(transmit_WAIT_N_COUNTER[16]),
        .O(\k[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[31]_i_8 
       (.I0(transmit_WAIT_N_COUNTER[20]),
        .I1(transmit_WAIT_N_COUNTER[11]),
        .I2(transmit_WAIT_N_COUNTER[23]),
        .I3(transmit_WAIT_N_COUNTER[13]),
        .O(\k[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \k[31]_i_9 
       (.I0(transmit_WAIT_N_COUNTER[2]),
        .I1(transmit_WAIT_N_COUNTER[3]),
        .I2(transmit_WAIT_N_COUNTER[22]),
        .I3(transmit_WAIT_N_COUNTER[12]),
        .O(\k[31]_i_9_n_0 ));
  FDRE \k_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k[0]_i_1_n_0 ),
        .Q(\k_reg_n_0_[0] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[10] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[12]_i_1_n_6 ),
        .Q(\k_reg_n_0_[10] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[12]_i_1_n_5 ),
        .Q(\k_reg_n_0_[11] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[12]_i_1_n_4 ),
        .Q(\k_reg_n_0_[12] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[12]_i_1 
       (.CI(\k_reg[8]_i_1_n_0 ),
        .CO({\k_reg[12]_i_1_n_0 ,\k_reg[12]_i_1_n_1 ,\k_reg[12]_i_1_n_2 ,\k_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[12]_i_1_n_4 ,\k_reg[12]_i_1_n_5 ,\k_reg[12]_i_1_n_6 ,\k_reg[12]_i_1_n_7 }),
        .S({\k_reg_n_0_[12] ,\k_reg_n_0_[11] ,\k_reg_n_0_[10] ,\k_reg_n_0_[9] }));
  FDRE \k_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[16]_i_1_n_7 ),
        .Q(\k_reg_n_0_[13] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[16]_i_1_n_6 ),
        .Q(\k_reg_n_0_[14] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[16]_i_1_n_5 ),
        .Q(\k_reg_n_0_[15] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[16]_i_1_n_4 ),
        .Q(\k_reg_n_0_[16] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[16]_i_1 
       (.CI(\k_reg[12]_i_1_n_0 ),
        .CO({\k_reg[16]_i_1_n_0 ,\k_reg[16]_i_1_n_1 ,\k_reg[16]_i_1_n_2 ,\k_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[16]_i_1_n_4 ,\k_reg[16]_i_1_n_5 ,\k_reg[16]_i_1_n_6 ,\k_reg[16]_i_1_n_7 }),
        .S({\k_reg_n_0_[16] ,\k_reg_n_0_[15] ,\k_reg_n_0_[14] ,\k_reg_n_0_[13] }));
  FDRE \k_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[20]_i_1_n_7 ),
        .Q(\k_reg_n_0_[17] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[20]_i_1_n_6 ),
        .Q(\k_reg_n_0_[18] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[20]_i_1_n_5 ),
        .Q(\k_reg_n_0_[19] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[4]_i_1_n_7 ),
        .Q(\k_reg_n_0_[1] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[20]_i_1_n_4 ),
        .Q(\k_reg_n_0_[20] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[20]_i_1 
       (.CI(\k_reg[16]_i_1_n_0 ),
        .CO({\k_reg[20]_i_1_n_0 ,\k_reg[20]_i_1_n_1 ,\k_reg[20]_i_1_n_2 ,\k_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[20]_i_1_n_4 ,\k_reg[20]_i_1_n_5 ,\k_reg[20]_i_1_n_6 ,\k_reg[20]_i_1_n_7 }),
        .S({\k_reg_n_0_[20] ,\k_reg_n_0_[19] ,\k_reg_n_0_[18] ,\k_reg_n_0_[17] }));
  FDRE \k_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[24]_i_1_n_7 ),
        .Q(\k_reg_n_0_[21] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[24]_i_1_n_6 ),
        .Q(\k_reg_n_0_[22] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[24]_i_1_n_5 ),
        .Q(\k_reg_n_0_[23] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[24] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[24]_i_1_n_4 ),
        .Q(\k_reg_n_0_[24] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[24]_i_1 
       (.CI(\k_reg[20]_i_1_n_0 ),
        .CO({\k_reg[24]_i_1_n_0 ,\k_reg[24]_i_1_n_1 ,\k_reg[24]_i_1_n_2 ,\k_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[24]_i_1_n_4 ,\k_reg[24]_i_1_n_5 ,\k_reg[24]_i_1_n_6 ,\k_reg[24]_i_1_n_7 }),
        .S({\k_reg_n_0_[24] ,\k_reg_n_0_[23] ,\k_reg_n_0_[22] ,\k_reg_n_0_[21] }));
  FDRE \k_reg[25] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[28]_i_1_n_7 ),
        .Q(\k_reg_n_0_[25] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[26] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[28]_i_1_n_6 ),
        .Q(\k_reg_n_0_[26] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[27] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[28]_i_1_n_5 ),
        .Q(\k_reg_n_0_[27] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[28] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[28]_i_1_n_4 ),
        .Q(\k_reg_n_0_[28] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[28]_i_1 
       (.CI(\k_reg[24]_i_1_n_0 ),
        .CO({\k_reg[28]_i_1_n_0 ,\k_reg[28]_i_1_n_1 ,\k_reg[28]_i_1_n_2 ,\k_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[28]_i_1_n_4 ,\k_reg[28]_i_1_n_5 ,\k_reg[28]_i_1_n_6 ,\k_reg[28]_i_1_n_7 }),
        .S({\k_reg_n_0_[28] ,\k_reg_n_0_[27] ,\k_reg_n_0_[26] ,\k_reg_n_0_[25] }));
  FDRE \k_reg[29] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[31]_i_3_n_7 ),
        .Q(\k_reg_n_0_[29] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[4]_i_1_n_6 ),
        .Q(\k_reg_n_0_[2] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[30] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[31]_i_3_n_6 ),
        .Q(\k_reg_n_0_[30] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[31] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[31]_i_3_n_5 ),
        .Q(\k_reg_n_0_[31] ),
        .R(\k[31]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \k_reg[31]_i_12 
       (.CI(\k_reg[31]_i_16_n_0 ),
        .CO({\k_reg[31]_i_12_n_0 ,\k_reg[31]_i_12_n_1 ,\k_reg[31]_i_12_n_2 ,\k_reg[31]_i_12_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_k_reg[31]_i_12_O_UNCONNECTED [3:0]),
        .S({\k[31]_i_17_n_0 ,\k[31]_i_18_n_0 ,\k[31]_i_19_n_0 ,\k[31]_i_20_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \k_reg[31]_i_16 
       (.CI(\k_reg[31]_i_21_n_0 ),
        .CO({\k_reg[31]_i_16_n_0 ,\k_reg[31]_i_16_n_1 ,\k_reg[31]_i_16_n_2 ,\k_reg[31]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_k_reg[31]_i_16_O_UNCONNECTED [3:0]),
        .S({\k[31]_i_22_n_0 ,\k[31]_i_23_n_0 ,\k[31]_i_24_n_0 ,\k[31]_i_25_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \k_reg[31]_i_21 
       (.CI(1'b0),
        .CO({\k_reg[31]_i_21_n_0 ,\k_reg[31]_i_21_n_1 ,\k_reg[31]_i_21_n_2 ,\k_reg[31]_i_21_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\k[31]_i_26_n_0 }),
        .O(\NLW_k_reg[31]_i_21_O_UNCONNECTED [3:0]),
        .S({\k[31]_i_27_n_0 ,\k[31]_i_28_n_0 ,\k[31]_i_29_n_0 ,\k[31]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[31]_i_3 
       (.CI(\k_reg[28]_i_1_n_0 ),
        .CO({\NLW_k_reg[31]_i_3_CO_UNCONNECTED [3:2],\k_reg[31]_i_3_n_2 ,\k_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_k_reg[31]_i_3_O_UNCONNECTED [3],\k_reg[31]_i_3_n_5 ,\k_reg[31]_i_3_n_6 ,\k_reg[31]_i_3_n_7 }),
        .S({1'b0,\k_reg_n_0_[31] ,\k_reg_n_0_[30] ,\k_reg_n_0_[29] }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 \k_reg[31]_i_5 
       (.CI(\k_reg[31]_i_12_n_0 ),
        .CO({\NLW_k_reg[31]_i_5_CO_UNCONNECTED [3],\k_reg[31]_i_5_n_1 ,\k_reg[31]_i_5_n_2 ,\k_reg[31]_i_5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,\k0_reg[31]_i_3_n_5 ,1'b0,1'b0}),
        .O(\NLW_k_reg[31]_i_5_O_UNCONNECTED [3:0]),
        .S({1'b0,\k[31]_i_13_n_0 ,\k[31]_i_14_n_0 ,\k[31]_i_15_n_0 }));
  FDRE \k_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[4]_i_1_n_5 ),
        .Q(\k_reg_n_0_[3] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[4]_i_1_n_4 ),
        .Q(\k_reg_n_0_[4] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\k_reg[4]_i_1_n_0 ,\k_reg[4]_i_1_n_1 ,\k_reg[4]_i_1_n_2 ,\k_reg[4]_i_1_n_3 }),
        .CYINIT(\k_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[4]_i_1_n_4 ,\k_reg[4]_i_1_n_5 ,\k_reg[4]_i_1_n_6 ,\k_reg[4]_i_1_n_7 }),
        .S({\k_reg_n_0_[4] ,\k_reg_n_0_[3] ,\k_reg_n_0_[2] ,\k_reg_n_0_[1] }));
  FDRE \k_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[8]_i_1_n_7 ),
        .Q(\k_reg_n_0_[5] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[8]_i_1_n_6 ),
        .Q(\k_reg_n_0_[6] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[8]_i_1_n_5 ),
        .Q(\k_reg_n_0_[7] ),
        .R(\k[31]_i_1_n_0 ));
  FDRE \k_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[8]_i_1_n_4 ),
        .Q(\k_reg_n_0_[8] ),
        .R(\k[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \k_reg[8]_i_1 
       (.CI(\k_reg[4]_i_1_n_0 ),
        .CO({\k_reg[8]_i_1_n_0 ,\k_reg[8]_i_1_n_1 ,\k_reg[8]_i_1_n_2 ,\k_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\k_reg[8]_i_1_n_4 ,\k_reg[8]_i_1_n_5 ,\k_reg[8]_i_1_n_6 ,\k_reg[8]_i_1_n_7 }),
        .S({\k_reg_n_0_[8] ,\k_reg_n_0_[7] ,\k_reg_n_0_[6] ,\k_reg_n_0_[5] }));
  FDRE \k_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(k),
        .D(\k_reg[12]_i_1_n_7 ),
        .Q(\k_reg_n_0_[9] ),
        .R(\k[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7477300074773033)) 
    \transmit_PROC_STATE[0]_i_1 
       (.I0(p_4_in),
        .I1(transmit_PROC_STATE[2]),
        .I2(\k[31]_i_4_n_0 ),
        .I3(transmit_PROC_STATE[0]),
        .I4(\transmit_PROC_STATE[0]_i_2_n_0 ),
        .I5(transmit_PROC_STATE[1]),
        .O(transmit_PROC_STATE_next[0]));
  LUT4 #(
    .INIT(16'h0004)) 
    \transmit_PROC_STATE[0]_i_2 
       (.I0(\transmit_PROC_STATE[0]_i_3_n_0 ),
        .I1(\transmit_PROC_STATE[0]_i_4_n_0 ),
        .I2(\transmit_PROC_STATE[0]_i_5_n_0 ),
        .I3(\transmit_PROC_STATE[0]_i_6_n_0 ),
        .O(\transmit_PROC_STATE[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \transmit_PROC_STATE[0]_i_3 
       (.I0(transmit_WAIT_N_COUNTER[18]),
        .I1(transmit_WAIT_N_COUNTER[19]),
        .I2(transmit_WAIT_N_COUNTER[20]),
        .I3(transmit_WAIT_N_COUNTER[21]),
        .I4(transmit_WAIT_N_COUNTER[23]),
        .I5(transmit_WAIT_N_COUNTER[22]),
        .O(\transmit_PROC_STATE[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \transmit_PROC_STATE[0]_i_4 
       (.I0(transmit_WAIT_N_COUNTER[16]),
        .I1(transmit_WAIT_N_COUNTER[15]),
        .I2(transmit_WAIT_N_COUNTER[17]),
        .I3(transmit_WAIT_N_COUNTER[13]),
        .I4(transmit_WAIT_N_COUNTER[12]),
        .I5(transmit_WAIT_N_COUNTER[14]),
        .O(\transmit_PROC_STATE[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \transmit_PROC_STATE[0]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[7]),
        .I1(transmit_WAIT_N_COUNTER[6]),
        .I2(transmit_WAIT_N_COUNTER[8]),
        .I3(transmit_WAIT_N_COUNTER[10]),
        .I4(transmit_WAIT_N_COUNTER[9]),
        .I5(transmit_WAIT_N_COUNTER[11]),
        .O(\transmit_PROC_STATE[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \transmit_PROC_STATE[0]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[4]),
        .I1(transmit_WAIT_N_COUNTER[3]),
        .I2(transmit_WAIT_N_COUNTER[5]),
        .I3(transmit_WAIT_N_COUNTER[1]),
        .I4(transmit_WAIT_N_COUNTER[0]),
        .I5(transmit_WAIT_N_COUNTER[2]),
        .O(\transmit_PROC_STATE[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00FD0022)) 
    \transmit_PROC_STATE[1]_i_1 
       (.I0(transmit_PROC_STATE[0]),
        .I1(\k[31]_i_4_n_0 ),
        .I2(\k_reg[31]_i_5_n_1 ),
        .I3(transmit_PROC_STATE[2]),
        .I4(transmit_PROC_STATE[1]),
        .O(transmit_PROC_STATE_next[1]));
  LUT6 #(
    .INIT(64'h0F0F0F0F0F0F2F0F)) 
    \transmit_PROC_STATE[2]_i_1 
       (.I0(transmit_PROC_STATE[0]),
        .I1(\k[31]_i_4_n_0 ),
        .I2(\transmit_PROC_STATE[2]_i_2_n_0 ),
        .I3(transmit_PROC_STATE[1]),
        .I4(\k_reg[31]_i_5_n_1 ),
        .I5(transmit_PROC_STATE[2]),
        .O(transmit_PROC_STATE_next[2]));
  LUT3 #(
    .INIT(8'h4F)) 
    \transmit_PROC_STATE[2]_i_2 
       (.I0(p_4_in),
        .I1(\transmit_PROC_STATE[0]_i_2_n_0 ),
        .I2(transmit_PROC_STATE[2]),
        .O(\transmit_PROC_STATE[2]_i_2_n_0 ));
  FDRE \transmit_PROC_STATE_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_PROC_STATE_next[0]),
        .Q(transmit_PROC_STATE[0]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_PROC_STATE_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_PROC_STATE_next[1]),
        .Q(transmit_PROC_STATE[1]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_PROC_STATE_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_PROC_STATE_next[2]),
        .Q(transmit_PROC_STATE[2]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FE00)) 
    \transmit_WAIT_N_COUNTER[0]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER[0]),
        .O(transmit_WAIT_N_COUNTER_next1_in[0]));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[10]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[10]),
        .O(transmit_WAIT_N_COUNTER_next1_in[10]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[11]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[11]),
        .O(transmit_WAIT_N_COUNTER_next1_in[11]));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[12]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[12]),
        .O(transmit_WAIT_N_COUNTER_next1_in[12]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[12]_i_3 
       (.I0(transmit_WAIT_N_COUNTER[12]),
        .O(\transmit_WAIT_N_COUNTER[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[12]_i_4 
       (.I0(transmit_WAIT_N_COUNTER[11]),
        .O(\transmit_WAIT_N_COUNTER[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[12]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[10]),
        .O(\transmit_WAIT_N_COUNTER[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[12]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[9]),
        .O(\transmit_WAIT_N_COUNTER[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[13]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[13]),
        .O(transmit_WAIT_N_COUNTER_next1_in[13]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[14]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[14]),
        .O(transmit_WAIT_N_COUNTER_next1_in[14]));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[15]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[15]),
        .O(transmit_WAIT_N_COUNTER_next1_in[15]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[16]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[16]),
        .O(transmit_WAIT_N_COUNTER_next1_in[16]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[16]_i_3 
       (.I0(transmit_WAIT_N_COUNTER[16]),
        .O(\transmit_WAIT_N_COUNTER[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[16]_i_4 
       (.I0(transmit_WAIT_N_COUNTER[15]),
        .O(\transmit_WAIT_N_COUNTER[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[16]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[14]),
        .O(\transmit_WAIT_N_COUNTER[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[16]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[13]),
        .O(\transmit_WAIT_N_COUNTER[16]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[17]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[17]),
        .O(transmit_WAIT_N_COUNTER_next1_in[17]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[18]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[18]),
        .O(transmit_WAIT_N_COUNTER_next1_in[18]));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[19]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[19]),
        .O(transmit_WAIT_N_COUNTER_next1_in[19]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[1]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[1]),
        .O(transmit_WAIT_N_COUNTER_next1_in[1]));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[20]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[20]),
        .O(transmit_WAIT_N_COUNTER_next1_in[20]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[20]_i_3 
       (.I0(transmit_WAIT_N_COUNTER[20]),
        .O(\transmit_WAIT_N_COUNTER[20]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[20]_i_4 
       (.I0(transmit_WAIT_N_COUNTER[19]),
        .O(\transmit_WAIT_N_COUNTER[20]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[20]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[18]),
        .O(\transmit_WAIT_N_COUNTER[20]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[20]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[17]),
        .O(\transmit_WAIT_N_COUNTER[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[21]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[21]),
        .O(transmit_WAIT_N_COUNTER_next1_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[22]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[22]),
        .O(transmit_WAIT_N_COUNTER_next1_in[22]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[23]_i_1 
       (.I0(uart_transmitter_reset_active_low),
        .O(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \transmit_WAIT_N_COUNTER[23]_i_2 
       (.I0(transmit_PROC_STATE[0]),
        .I1(transmit_PROC_STATE[1]),
        .I2(transmit_PROC_STATE[2]),
        .O(transmit_WAIT_N_COUNTER_next));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[23]_i_3 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[23]),
        .O(transmit_WAIT_N_COUNTER_next1_in[23]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[23]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[23]),
        .O(\transmit_WAIT_N_COUNTER[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[23]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[22]),
        .O(\transmit_WAIT_N_COUNTER[23]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[23]_i_7 
       (.I0(transmit_WAIT_N_COUNTER[21]),
        .O(\transmit_WAIT_N_COUNTER[23]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[2]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[2]),
        .O(transmit_WAIT_N_COUNTER_next1_in[2]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[3]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[3]),
        .O(transmit_WAIT_N_COUNTER_next1_in[3]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[4]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[4]),
        .O(transmit_WAIT_N_COUNTER_next1_in[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[4]_i_3 
       (.I0(transmit_WAIT_N_COUNTER[4]),
        .O(\transmit_WAIT_N_COUNTER[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[4]_i_4 
       (.I0(transmit_WAIT_N_COUNTER[3]),
        .O(\transmit_WAIT_N_COUNTER[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[4]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[2]),
        .O(\transmit_WAIT_N_COUNTER[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[4]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[1]),
        .O(\transmit_WAIT_N_COUNTER[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[5]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[5]),
        .O(transmit_WAIT_N_COUNTER_next1_in[5]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[6]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[6]),
        .O(transmit_WAIT_N_COUNTER_next1_in[6]));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[7]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[7]),
        .O(transmit_WAIT_N_COUNTER_next1_in[7]));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \transmit_WAIT_N_COUNTER[8]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[8]),
        .O(transmit_WAIT_N_COUNTER_next1_in[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[8]_i_3 
       (.I0(transmit_WAIT_N_COUNTER[8]),
        .O(\transmit_WAIT_N_COUNTER[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[8]_i_4 
       (.I0(transmit_WAIT_N_COUNTER[7]),
        .O(\transmit_WAIT_N_COUNTER[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[8]_i_5 
       (.I0(transmit_WAIT_N_COUNTER[6]),
        .O(\transmit_WAIT_N_COUNTER[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \transmit_WAIT_N_COUNTER[8]_i_6 
       (.I0(transmit_WAIT_N_COUNTER[5]),
        .O(\transmit_WAIT_N_COUNTER[8]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hDFDF01DF)) 
    \transmit_WAIT_N_COUNTER[9]_i_1 
       (.I0(transmit_PROC_STATE[2]),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(\k[31]_i_4_n_0 ),
        .I4(transmit_WAIT_N_COUNTER_next0[9]),
        .O(transmit_WAIT_N_COUNTER_next1_in[9]));
  FDRE \transmit_WAIT_N_COUNTER_reg[0] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[0]),
        .Q(transmit_WAIT_N_COUNTER[0]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[10] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[10]),
        .Q(transmit_WAIT_N_COUNTER[10]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[11] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[11]),
        .Q(transmit_WAIT_N_COUNTER[11]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[12] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[12]),
        .Q(transmit_WAIT_N_COUNTER[12]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transmit_WAIT_N_COUNTER_reg[12]_i_2 
       (.CI(\transmit_WAIT_N_COUNTER_reg[8]_i_2_n_0 ),
        .CO({\transmit_WAIT_N_COUNTER_reg[12]_i_2_n_0 ,\transmit_WAIT_N_COUNTER_reg[12]_i_2_n_1 ,\transmit_WAIT_N_COUNTER_reg[12]_i_2_n_2 ,\transmit_WAIT_N_COUNTER_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(transmit_WAIT_N_COUNTER[12:9]),
        .O(transmit_WAIT_N_COUNTER_next0[12:9]),
        .S({\transmit_WAIT_N_COUNTER[12]_i_3_n_0 ,\transmit_WAIT_N_COUNTER[12]_i_4_n_0 ,\transmit_WAIT_N_COUNTER[12]_i_5_n_0 ,\transmit_WAIT_N_COUNTER[12]_i_6_n_0 }));
  FDRE \transmit_WAIT_N_COUNTER_reg[13] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[13]),
        .Q(transmit_WAIT_N_COUNTER[13]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[14] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[14]),
        .Q(transmit_WAIT_N_COUNTER[14]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[15] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[15]),
        .Q(transmit_WAIT_N_COUNTER[15]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[16] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[16]),
        .Q(transmit_WAIT_N_COUNTER[16]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transmit_WAIT_N_COUNTER_reg[16]_i_2 
       (.CI(\transmit_WAIT_N_COUNTER_reg[12]_i_2_n_0 ),
        .CO({\transmit_WAIT_N_COUNTER_reg[16]_i_2_n_0 ,\transmit_WAIT_N_COUNTER_reg[16]_i_2_n_1 ,\transmit_WAIT_N_COUNTER_reg[16]_i_2_n_2 ,\transmit_WAIT_N_COUNTER_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(transmit_WAIT_N_COUNTER[16:13]),
        .O(transmit_WAIT_N_COUNTER_next0[16:13]),
        .S({\transmit_WAIT_N_COUNTER[16]_i_3_n_0 ,\transmit_WAIT_N_COUNTER[16]_i_4_n_0 ,\transmit_WAIT_N_COUNTER[16]_i_5_n_0 ,\transmit_WAIT_N_COUNTER[16]_i_6_n_0 }));
  FDRE \transmit_WAIT_N_COUNTER_reg[17] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[17]),
        .Q(transmit_WAIT_N_COUNTER[17]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[18] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[18]),
        .Q(transmit_WAIT_N_COUNTER[18]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[19] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[19]),
        .Q(transmit_WAIT_N_COUNTER[19]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[1] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[1]),
        .Q(transmit_WAIT_N_COUNTER[1]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[20] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[20]),
        .Q(transmit_WAIT_N_COUNTER[20]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transmit_WAIT_N_COUNTER_reg[20]_i_2 
       (.CI(\transmit_WAIT_N_COUNTER_reg[16]_i_2_n_0 ),
        .CO({\transmit_WAIT_N_COUNTER_reg[20]_i_2_n_0 ,\transmit_WAIT_N_COUNTER_reg[20]_i_2_n_1 ,\transmit_WAIT_N_COUNTER_reg[20]_i_2_n_2 ,\transmit_WAIT_N_COUNTER_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(transmit_WAIT_N_COUNTER[20:17]),
        .O(transmit_WAIT_N_COUNTER_next0[20:17]),
        .S({\transmit_WAIT_N_COUNTER[20]_i_3_n_0 ,\transmit_WAIT_N_COUNTER[20]_i_4_n_0 ,\transmit_WAIT_N_COUNTER[20]_i_5_n_0 ,\transmit_WAIT_N_COUNTER[20]_i_6_n_0 }));
  FDRE \transmit_WAIT_N_COUNTER_reg[21] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[21]),
        .Q(transmit_WAIT_N_COUNTER[21]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[22] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[22]),
        .Q(transmit_WAIT_N_COUNTER[22]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[23] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[23]),
        .Q(transmit_WAIT_N_COUNTER[23]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transmit_WAIT_N_COUNTER_reg[23]_i_4 
       (.CI(\transmit_WAIT_N_COUNTER_reg[20]_i_2_n_0 ),
        .CO({\NLW_transmit_WAIT_N_COUNTER_reg[23]_i_4_CO_UNCONNECTED [3:2],\transmit_WAIT_N_COUNTER_reg[23]_i_4_n_2 ,\transmit_WAIT_N_COUNTER_reg[23]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,transmit_WAIT_N_COUNTER[22:21]}),
        .O({\NLW_transmit_WAIT_N_COUNTER_reg[23]_i_4_O_UNCONNECTED [3],transmit_WAIT_N_COUNTER_next0[23:21]}),
        .S({1'b0,\transmit_WAIT_N_COUNTER[23]_i_5_n_0 ,\transmit_WAIT_N_COUNTER[23]_i_6_n_0 ,\transmit_WAIT_N_COUNTER[23]_i_7_n_0 }));
  FDRE \transmit_WAIT_N_COUNTER_reg[2] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[2]),
        .Q(transmit_WAIT_N_COUNTER[2]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[3] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[3]),
        .Q(transmit_WAIT_N_COUNTER[3]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[4] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[4]),
        .Q(transmit_WAIT_N_COUNTER[4]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transmit_WAIT_N_COUNTER_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\transmit_WAIT_N_COUNTER_reg[4]_i_2_n_0 ,\transmit_WAIT_N_COUNTER_reg[4]_i_2_n_1 ,\transmit_WAIT_N_COUNTER_reg[4]_i_2_n_2 ,\transmit_WAIT_N_COUNTER_reg[4]_i_2_n_3 }),
        .CYINIT(transmit_WAIT_N_COUNTER[0]),
        .DI(transmit_WAIT_N_COUNTER[4:1]),
        .O(transmit_WAIT_N_COUNTER_next0[4:1]),
        .S({\transmit_WAIT_N_COUNTER[4]_i_3_n_0 ,\transmit_WAIT_N_COUNTER[4]_i_4_n_0 ,\transmit_WAIT_N_COUNTER[4]_i_5_n_0 ,\transmit_WAIT_N_COUNTER[4]_i_6_n_0 }));
  FDRE \transmit_WAIT_N_COUNTER_reg[5] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[5]),
        .Q(transmit_WAIT_N_COUNTER[5]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[6] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[6]),
        .Q(transmit_WAIT_N_COUNTER[6]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[7] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[7]),
        .Q(transmit_WAIT_N_COUNTER[7]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  FDRE \transmit_WAIT_N_COUNTER_reg[8] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[8]),
        .Q(transmit_WAIT_N_COUNTER[8]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \transmit_WAIT_N_COUNTER_reg[8]_i_2 
       (.CI(\transmit_WAIT_N_COUNTER_reg[4]_i_2_n_0 ),
        .CO({\transmit_WAIT_N_COUNTER_reg[8]_i_2_n_0 ,\transmit_WAIT_N_COUNTER_reg[8]_i_2_n_1 ,\transmit_WAIT_N_COUNTER_reg[8]_i_2_n_2 ,\transmit_WAIT_N_COUNTER_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(transmit_WAIT_N_COUNTER[8:5]),
        .O(transmit_WAIT_N_COUNTER_next0[8:5]),
        .S({\transmit_WAIT_N_COUNTER[8]_i_3_n_0 ,\transmit_WAIT_N_COUNTER[8]_i_4_n_0 ,\transmit_WAIT_N_COUNTER[8]_i_5_n_0 ,\transmit_WAIT_N_COUNTER[8]_i_6_n_0 }));
  FDRE \transmit_WAIT_N_COUNTER_reg[9] 
       (.C(uart_transmitter_clock),
        .CE(transmit_WAIT_N_COUNTER_next),
        .D(transmit_WAIT_N_COUNTER_next1_in[9]),
        .Q(transmit_WAIT_N_COUNTER[9]),
        .R(\transmit_WAIT_N_COUNTER[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEE222E2FFFFFFFF)) 
    uart_transmitter_output_i_1
       (.I0(uart_transmitter_output),
        .I1(uart_transmitter_output_i_2_n_0),
        .I2(uart_transmitter_output_i_3_n_0),
        .I3(transmit_PROC_STATE[2]),
        .I4(p_4_in),
        .I5(uart_transmitter_reset_active_low),
        .O(uart_transmitter_output_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_10
       (.I0(\k_reg[31]_i_3_n_7 ),
        .I1(\k_reg[28]_i_1_n_4 ),
        .O(uart_transmitter_output_i_10_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_11
       (.I0(\k_reg[28]_i_1_n_5 ),
        .I1(\k_reg[28]_i_1_n_6 ),
        .O(uart_transmitter_output_i_11_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_12
       (.I0(\k_reg[28]_i_1_n_7 ),
        .I1(\k_reg[24]_i_1_n_4 ),
        .O(uart_transmitter_output_i_12_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_14
       (.I0(\k_reg[24]_i_1_n_5 ),
        .I1(\k_reg[24]_i_1_n_6 ),
        .O(uart_transmitter_output_i_14_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_15
       (.I0(\k_reg[24]_i_1_n_7 ),
        .I1(\k_reg[20]_i_1_n_4 ),
        .O(uart_transmitter_output_i_15_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_16
       (.I0(\k_reg[20]_i_1_n_5 ),
        .I1(\k_reg[20]_i_1_n_6 ),
        .O(uart_transmitter_output_i_16_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_17
       (.I0(\k_reg[20]_i_1_n_7 ),
        .I1(\k_reg[16]_i_1_n_4 ),
        .O(uart_transmitter_output_i_17_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_19
       (.I0(\k_reg[16]_i_1_n_5 ),
        .I1(\k_reg[16]_i_1_n_6 ),
        .O(uart_transmitter_output_i_19_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0157)) 
    uart_transmitter_output_i_2
       (.I0(\k[31]_i_4_n_0 ),
        .I1(transmit_PROC_STATE[0]),
        .I2(transmit_PROC_STATE[1]),
        .I3(transmit_PROC_STATE[2]),
        .O(uart_transmitter_output_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_20
       (.I0(\k_reg[16]_i_1_n_7 ),
        .I1(\k_reg[12]_i_1_n_4 ),
        .O(uart_transmitter_output_i_20_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_21
       (.I0(\k_reg[12]_i_1_n_5 ),
        .I1(\k_reg[12]_i_1_n_6 ),
        .O(uart_transmitter_output_i_21_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_22
       (.I0(\k_reg[12]_i_1_n_7 ),
        .I1(\k_reg[8]_i_1_n_4 ),
        .O(uart_transmitter_output_i_22_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    uart_transmitter_output_i_23
       (.I0(\k_reg[4]_i_1_n_7 ),
        .O(uart_transmitter_output_i_23_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_24
       (.I0(\k_reg[8]_i_1_n_5 ),
        .I1(\k_reg[8]_i_1_n_6 ),
        .O(uart_transmitter_output_i_24_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_25
       (.I0(\k_reg[8]_i_1_n_7 ),
        .I1(\k_reg[4]_i_1_n_4 ),
        .O(uart_transmitter_output_i_25_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_26
       (.I0(\k_reg[4]_i_1_n_5 ),
        .I1(\k_reg[4]_i_1_n_6 ),
        .O(uart_transmitter_output_i_26_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    uart_transmitter_output_i_27
       (.I0(\k_reg[4]_i_1_n_7 ),
        .I1(\k_reg_n_0_[0] ),
        .O(uart_transmitter_output_i_27_n_0));
  LUT6 #(
    .INIT(64'hFBFFFA00FB00FA00)) 
    uart_transmitter_output_i_3
       (.I0(uart_transmitter_output_i_5_n_0),
        .I1(\k_reg[31]_i_5_n_1 ),
        .I2(uart_transmitter_output_i_6_n_0),
        .I3(transmit_PROC_STATE[0]),
        .I4(transmit_PROC_STATE[1]),
        .I5(uart_transmitter_output_i_7_n_0),
        .O(uart_transmitter_output_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    uart_transmitter_output_i_5
       (.I0(\input_btint_a_reg_n_0_[16] ),
        .I1(\i_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[1] ),
        .O(uart_transmitter_output_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hCFC00A0A)) 
    uart_transmitter_output_i_6
       (.I0(\input_btint_a_reg_n_0_[24] ),
        .I1(\input_btint_a_reg_n_0_[0] ),
        .I2(\i_reg_n_0_[0] ),
        .I3(\input_btint_a_reg_n_0_[8] ),
        .I4(\i_reg_n_0_[1] ),
        .O(uart_transmitter_output_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    uart_transmitter_output_i_7
       (.I0(input_btint_b[0]),
        .I1(input_btint_b[16]),
        .I2(\i_reg_n_0_[0] ),
        .I3(input_btint_b[8]),
        .I4(\i_reg_n_0_[1] ),
        .I5(input_btint_b[24]),
        .O(uart_transmitter_output_i_7_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    uart_transmitter_output_i_9
       (.I0(\k_reg[31]_i_3_n_5 ),
        .I1(\k_reg[31]_i_3_n_6 ),
        .O(uart_transmitter_output_i_9_n_0));
  FDRE uart_transmitter_output_reg
       (.C(uart_transmitter_clock),
        .CE(1'b1),
        .D(uart_transmitter_output_i_1_n_0),
        .Q(uart_transmitter_output),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_13
       (.CI(uart_transmitter_output_reg_i_18_n_0),
        .CO({uart_transmitter_output_reg_i_13_n_0,uart_transmitter_output_reg_i_13_n_1,uart_transmitter_output_reg_i_13_n_2,uart_transmitter_output_reg_i_13_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_13_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_19_n_0,uart_transmitter_output_i_20_n_0,uart_transmitter_output_i_21_n_0,uart_transmitter_output_i_22_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_18
       (.CI(1'b0),
        .CO({uart_transmitter_output_reg_i_18_n_0,uart_transmitter_output_reg_i_18_n_1,uart_transmitter_output_reg_i_18_n_2,uart_transmitter_output_reg_i_18_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,uart_transmitter_output_i_23_n_0}),
        .O(NLW_uart_transmitter_output_reg_i_18_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_24_n_0,uart_transmitter_output_i_25_n_0,uart_transmitter_output_i_26_n_0,uart_transmitter_output_i_27_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_4
       (.CI(uart_transmitter_output_reg_i_8_n_0),
        .CO({p_4_in,uart_transmitter_output_reg_i_4_n_1,uart_transmitter_output_reg_i_4_n_2,uart_transmitter_output_reg_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({\k_reg[31]_i_3_n_5 ,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_4_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_9_n_0,uart_transmitter_output_i_10_n_0,uart_transmitter_output_i_11_n_0,uart_transmitter_output_i_12_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 uart_transmitter_output_reg_i_8
       (.CI(uart_transmitter_output_reg_i_13_n_0),
        .CO({uart_transmitter_output_reg_i_8_n_0,uart_transmitter_output_reg_i_8_n_1,uart_transmitter_output_reg_i_8_n_2,uart_transmitter_output_reg_i_8_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_uart_transmitter_output_reg_i_8_O_UNCONNECTED[3:0]),
        .S({uart_transmitter_output_i_14_n_0,uart_transmitter_output_i_15_n_0,uart_transmitter_output_i_16_n_0,uart_transmitter_output_i_17_n_0}));
endmodule

(* CHECK_LICENSE_TYPE = "bachelor_UART_TRANSMITTER_0_0,UART_TRANSMITTER,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "UART_TRANSMITTER,Vivado 2023.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_UART_TRANSMITTER inst
       (.uart_transmitter_clock(uart_transmitter_clock),
        .uart_transmitter_column(uart_transmitter_column[3:0]),
        .uart_transmitter_input_btint_a({uart_transmitter_input_btint_a[120],uart_transmitter_input_btint_a[112],uart_transmitter_input_btint_a[104],uart_transmitter_input_btint_a[96],uart_transmitter_input_btint_a[88],uart_transmitter_input_btint_a[80],uart_transmitter_input_btint_a[72],uart_transmitter_input_btint_a[64],uart_transmitter_input_btint_a[56],uart_transmitter_input_btint_a[48],uart_transmitter_input_btint_a[40],uart_transmitter_input_btint_a[32],uart_transmitter_input_btint_a[24],uart_transmitter_input_btint_a[16],uart_transmitter_input_btint_a[8],uart_transmitter_input_btint_a[0]}),
        .uart_transmitter_input_btint_b({uart_transmitter_input_btint_b[120],uart_transmitter_input_btint_b[112],uart_transmitter_input_btint_b[104],uart_transmitter_input_btint_b[96],uart_transmitter_input_btint_b[88],uart_transmitter_input_btint_b[80],uart_transmitter_input_btint_b[72],uart_transmitter_input_btint_b[64],uart_transmitter_input_btint_b[56],uart_transmitter_input_btint_b[48],uart_transmitter_input_btint_b[40],uart_transmitter_input_btint_b[32],uart_transmitter_input_btint_b[24],uart_transmitter_input_btint_b[16],uart_transmitter_input_btint_b[8],uart_transmitter_input_btint_b[0]}),
        .uart_transmitter_output(uart_transmitter_output),
        .uart_transmitter_reset_active_low(uart_transmitter_reset_active_low));
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
