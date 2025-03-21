-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Mar 21 18:55:00 2025
-- Host        : arch running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/robert/Downloads/Bachelor/Vivado/Vivado.gen/sources_1/bd/bachelor/ip/bachelor_UART_TRANSMITTER_0_0/bachelor_UART_TRANSMITTER_0_0_sim_netlist.vhdl
-- Design      : bachelor_UART_TRANSMITTER_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bachelor_UART_TRANSMITTER_0_0_UART_TRANSMITTER is
  port (
    uart_transmitter_output : out STD_LOGIC;
    uart_transmitter_reset : in STD_LOGIC;
    uart_transmitter_clock : in STD_LOGIC;
    uart_transmitter_input_btint_a : in STD_LOGIC_VECTOR ( 2 downto 0 );
    uart_transmitter_input_btint_b : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of bachelor_UART_TRANSMITTER_0_0_UART_TRANSMITTER : entity is "UART_TRANSMITTER";
end bachelor_UART_TRANSMITTER_0_0_UART_TRANSMITTER;

architecture STRUCTURE of bachelor_UART_TRANSMITTER_0_0_UART_TRANSMITTER is
  signal \FSM_sequential_transmit_PROC_STATE[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_transmit_PROC_STATE[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_transmit_PROC_STATE[2]_i_1_n_0\ : STD_LOGIC;
  signal i : STD_LOGIC;
  signal \i[0]_i_1_n_0\ : STD_LOGIC;
  signal \i[31]_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry__2_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__3_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__4_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__5_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__6_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_1__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_2__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_3__4_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__1_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__2_n_0\ : STD_LOGIC;
  signal \i__carry_i_4__3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal \i__carry_i_5__0_n_0\ : STD_LOGIC;
  signal \i__carry_i_5_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \i_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg_n_0_[0]\ : STD_LOGIC;
  signal \i_reg_n_0_[10]\ : STD_LOGIC;
  signal \i_reg_n_0_[11]\ : STD_LOGIC;
  signal \i_reg_n_0_[12]\ : STD_LOGIC;
  signal \i_reg_n_0_[13]\ : STD_LOGIC;
  signal \i_reg_n_0_[14]\ : STD_LOGIC;
  signal \i_reg_n_0_[15]\ : STD_LOGIC;
  signal \i_reg_n_0_[16]\ : STD_LOGIC;
  signal \i_reg_n_0_[17]\ : STD_LOGIC;
  signal \i_reg_n_0_[18]\ : STD_LOGIC;
  signal \i_reg_n_0_[19]\ : STD_LOGIC;
  signal \i_reg_n_0_[1]\ : STD_LOGIC;
  signal \i_reg_n_0_[20]\ : STD_LOGIC;
  signal \i_reg_n_0_[21]\ : STD_LOGIC;
  signal \i_reg_n_0_[22]\ : STD_LOGIC;
  signal \i_reg_n_0_[23]\ : STD_LOGIC;
  signal \i_reg_n_0_[24]\ : STD_LOGIC;
  signal \i_reg_n_0_[25]\ : STD_LOGIC;
  signal \i_reg_n_0_[26]\ : STD_LOGIC;
  signal \i_reg_n_0_[27]\ : STD_LOGIC;
  signal \i_reg_n_0_[28]\ : STD_LOGIC;
  signal \i_reg_n_0_[29]\ : STD_LOGIC;
  signal \i_reg_n_0_[2]\ : STD_LOGIC;
  signal \i_reg_n_0_[30]\ : STD_LOGIC;
  signal \i_reg_n_0_[31]\ : STD_LOGIC;
  signal \i_reg_n_0_[3]\ : STD_LOGIC;
  signal \i_reg_n_0_[4]\ : STD_LOGIC;
  signal \i_reg_n_0_[5]\ : STD_LOGIC;
  signal \i_reg_n_0_[6]\ : STD_LOGIC;
  signal \i_reg_n_0_[7]\ : STD_LOGIC;
  signal \i_reg_n_0_[8]\ : STD_LOGIC;
  signal \i_reg_n_0_[9]\ : STD_LOGIC;
  signal in12 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal in22 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal \input_btint_a[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_btint_a[0]_i_2_n_0\ : STD_LOGIC;
  signal \input_btint_a[16]_i_1_n_0\ : STD_LOGIC;
  signal \input_btint_a[16]_i_2_n_0\ : STD_LOGIC;
  signal \input_btint_a[16]_i_3_n_0\ : STD_LOGIC;
  signal \input_btint_a[16]_i_4_n_0\ : STD_LOGIC;
  signal \input_btint_a[16]_i_5_n_0\ : STD_LOGIC;
  signal \input_btint_a[8]_i_1_n_0\ : STD_LOGIC;
  signal \input_btint_a[8]_i_2_n_0\ : STD_LOGIC;
  signal \input_btint_a_reg_n_0_[0]\ : STD_LOGIC;
  signal \input_btint_a_reg_n_0_[16]\ : STD_LOGIC;
  signal \input_btint_a_reg_n_0_[8]\ : STD_LOGIC;
  signal input_btint_b : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \input_btint_b[0]_i_1_n_0\ : STD_LOGIC;
  signal \input_btint_b[16]_i_1_n_0\ : STD_LOGIC;
  signal \input_btint_b[8]_i_1_n_0\ : STD_LOGIC;
  signal j : STD_LOGIC;
  signal \j[10]_i_1_n_0\ : STD_LOGIC;
  signal \j[11]_i_1_n_0\ : STD_LOGIC;
  signal \j[12]_i_1_n_0\ : STD_LOGIC;
  signal \j[13]_i_1_n_0\ : STD_LOGIC;
  signal \j[14]_i_1_n_0\ : STD_LOGIC;
  signal \j[15]_i_1_n_0\ : STD_LOGIC;
  signal \j[16]_i_1_n_0\ : STD_LOGIC;
  signal \j[17]_i_1_n_0\ : STD_LOGIC;
  signal \j[18]_i_1_n_0\ : STD_LOGIC;
  signal \j[19]_i_1_n_0\ : STD_LOGIC;
  signal \j[1]_i_1_n_0\ : STD_LOGIC;
  signal \j[20]_i_1_n_0\ : STD_LOGIC;
  signal \j[21]_i_1_n_0\ : STD_LOGIC;
  signal \j[22]_i_1_n_0\ : STD_LOGIC;
  signal \j[23]_i_1_n_0\ : STD_LOGIC;
  signal \j[24]_i_1_n_0\ : STD_LOGIC;
  signal \j[25]_i_1_n_0\ : STD_LOGIC;
  signal \j[26]_i_1_n_0\ : STD_LOGIC;
  signal \j[27]_i_1_n_0\ : STD_LOGIC;
  signal \j[28]_i_1_n_0\ : STD_LOGIC;
  signal \j[29]_i_1_n_0\ : STD_LOGIC;
  signal \j[2]_i_1_n_0\ : STD_LOGIC;
  signal \j[30]_i_2_n_0\ : STD_LOGIC;
  signal \j[3]_i_1_n_0\ : STD_LOGIC;
  signal \j[4]_i_1_n_0\ : STD_LOGIC;
  signal \j[5]_i_1_n_0\ : STD_LOGIC;
  signal \j[6]_i_1_n_0\ : STD_LOGIC;
  signal \j[7]_i_1_n_0\ : STD_LOGIC;
  signal \j[8]_i_1_n_0\ : STD_LOGIC;
  signal \j[9]_i_1_n_0\ : STD_LOGIC;
  signal \j_reg_n_0_[10]\ : STD_LOGIC;
  signal \j_reg_n_0_[11]\ : STD_LOGIC;
  signal \j_reg_n_0_[12]\ : STD_LOGIC;
  signal \j_reg_n_0_[13]\ : STD_LOGIC;
  signal \j_reg_n_0_[14]\ : STD_LOGIC;
  signal \j_reg_n_0_[15]\ : STD_LOGIC;
  signal \j_reg_n_0_[16]\ : STD_LOGIC;
  signal \j_reg_n_0_[17]\ : STD_LOGIC;
  signal \j_reg_n_0_[18]\ : STD_LOGIC;
  signal \j_reg_n_0_[19]\ : STD_LOGIC;
  signal \j_reg_n_0_[1]\ : STD_LOGIC;
  signal \j_reg_n_0_[20]\ : STD_LOGIC;
  signal \j_reg_n_0_[21]\ : STD_LOGIC;
  signal \j_reg_n_0_[22]\ : STD_LOGIC;
  signal \j_reg_n_0_[23]\ : STD_LOGIC;
  signal \j_reg_n_0_[24]\ : STD_LOGIC;
  signal \j_reg_n_0_[25]\ : STD_LOGIC;
  signal \j_reg_n_0_[26]\ : STD_LOGIC;
  signal \j_reg_n_0_[27]\ : STD_LOGIC;
  signal \j_reg_n_0_[28]\ : STD_LOGIC;
  signal \j_reg_n_0_[29]\ : STD_LOGIC;
  signal \j_reg_n_0_[2]\ : STD_LOGIC;
  signal \j_reg_n_0_[30]\ : STD_LOGIC;
  signal \j_reg_n_0_[3]\ : STD_LOGIC;
  signal \j_reg_n_0_[4]\ : STD_LOGIC;
  signal \j_reg_n_0_[5]\ : STD_LOGIC;
  signal \j_reg_n_0_[6]\ : STD_LOGIC;
  signal \j_reg_n_0_[7]\ : STD_LOGIC;
  signal \j_reg_n_0_[8]\ : STD_LOGIC;
  signal \j_reg_n_0_[9]\ : STD_LOGIC;
  signal k : STD_LOGIC;
  signal \k0[0]_i_1_n_0\ : STD_LOGIC;
  signal \k0[31]_i_1_n_0\ : STD_LOGIC;
  signal \k0[31]_i_2_n_0\ : STD_LOGIC;
  signal \k0_reg_n_0_[0]\ : STD_LOGIC;
  signal \k0_reg_n_0_[10]\ : STD_LOGIC;
  signal \k0_reg_n_0_[11]\ : STD_LOGIC;
  signal \k0_reg_n_0_[12]\ : STD_LOGIC;
  signal \k0_reg_n_0_[13]\ : STD_LOGIC;
  signal \k0_reg_n_0_[14]\ : STD_LOGIC;
  signal \k0_reg_n_0_[15]\ : STD_LOGIC;
  signal \k0_reg_n_0_[16]\ : STD_LOGIC;
  signal \k0_reg_n_0_[17]\ : STD_LOGIC;
  signal \k0_reg_n_0_[18]\ : STD_LOGIC;
  signal \k0_reg_n_0_[19]\ : STD_LOGIC;
  signal \k0_reg_n_0_[1]\ : STD_LOGIC;
  signal \k0_reg_n_0_[20]\ : STD_LOGIC;
  signal \k0_reg_n_0_[21]\ : STD_LOGIC;
  signal \k0_reg_n_0_[22]\ : STD_LOGIC;
  signal \k0_reg_n_0_[23]\ : STD_LOGIC;
  signal \k0_reg_n_0_[24]\ : STD_LOGIC;
  signal \k0_reg_n_0_[25]\ : STD_LOGIC;
  signal \k0_reg_n_0_[26]\ : STD_LOGIC;
  signal \k0_reg_n_0_[27]\ : STD_LOGIC;
  signal \k0_reg_n_0_[28]\ : STD_LOGIC;
  signal \k0_reg_n_0_[29]\ : STD_LOGIC;
  signal \k0_reg_n_0_[2]\ : STD_LOGIC;
  signal \k0_reg_n_0_[30]\ : STD_LOGIC;
  signal \k0_reg_n_0_[31]\ : STD_LOGIC;
  signal \k0_reg_n_0_[3]\ : STD_LOGIC;
  signal \k0_reg_n_0_[4]\ : STD_LOGIC;
  signal \k0_reg_n_0_[5]\ : STD_LOGIC;
  signal \k0_reg_n_0_[6]\ : STD_LOGIC;
  signal \k0_reg_n_0_[7]\ : STD_LOGIC;
  signal \k0_reg_n_0_[8]\ : STD_LOGIC;
  signal \k0_reg_n_0_[9]\ : STD_LOGIC;
  signal \k[0]_i_1_n_0\ : STD_LOGIC;
  signal \k[31]_i_1_n_0\ : STD_LOGIC;
  signal \k_reg_n_0_[0]\ : STD_LOGIC;
  signal \k_reg_n_0_[10]\ : STD_LOGIC;
  signal \k_reg_n_0_[11]\ : STD_LOGIC;
  signal \k_reg_n_0_[12]\ : STD_LOGIC;
  signal \k_reg_n_0_[13]\ : STD_LOGIC;
  signal \k_reg_n_0_[14]\ : STD_LOGIC;
  signal \k_reg_n_0_[15]\ : STD_LOGIC;
  signal \k_reg_n_0_[16]\ : STD_LOGIC;
  signal \k_reg_n_0_[17]\ : STD_LOGIC;
  signal \k_reg_n_0_[18]\ : STD_LOGIC;
  signal \k_reg_n_0_[19]\ : STD_LOGIC;
  signal \k_reg_n_0_[1]\ : STD_LOGIC;
  signal \k_reg_n_0_[20]\ : STD_LOGIC;
  signal \k_reg_n_0_[21]\ : STD_LOGIC;
  signal \k_reg_n_0_[22]\ : STD_LOGIC;
  signal \k_reg_n_0_[23]\ : STD_LOGIC;
  signal \k_reg_n_0_[24]\ : STD_LOGIC;
  signal \k_reg_n_0_[25]\ : STD_LOGIC;
  signal \k_reg_n_0_[26]\ : STD_LOGIC;
  signal \k_reg_n_0_[27]\ : STD_LOGIC;
  signal \k_reg_n_0_[28]\ : STD_LOGIC;
  signal \k_reg_n_0_[29]\ : STD_LOGIC;
  signal \k_reg_n_0_[2]\ : STD_LOGIC;
  signal \k_reg_n_0_[30]\ : STD_LOGIC;
  signal \k_reg_n_0_[31]\ : STD_LOGIC;
  signal \k_reg_n_0_[3]\ : STD_LOGIC;
  signal \k_reg_n_0_[4]\ : STD_LOGIC;
  signal \k_reg_n_0_[5]\ : STD_LOGIC;
  signal \k_reg_n_0_[6]\ : STD_LOGIC;
  signal \k_reg_n_0_[7]\ : STD_LOGIC;
  signal \k_reg_n_0_[8]\ : STD_LOGIC;
  signal \k_reg_n_0_[9]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal transmit_PROC_STATE : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal uart_transmitter_output_i_1_n_0 : STD_LOGIC;
  signal uart_transmitter_output_i_2_n_0 : STD_LOGIC;
  signal uart_transmitter_output_i_4_n_0 : STD_LOGIC;
  signal uart_transmitter_output_i_5_n_0 : STD_LOGIC;
  signal uart_transmitter_output_i_6_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__0_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__1_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__2_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_carry__2_n_3\ : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_i_1_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_i_2_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_i_3_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_i_4_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_i_5_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_n_1 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_n_2 : STD_LOGIC;
  signal uart_transmitter_output_next1_carry_n_3 : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__2_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__2_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry__2_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next1_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2__60\ : STD_LOGIC_VECTOR ( 30 downto 1 );
  signal \uart_transmitter_output_next2_carry__0_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__0_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__0_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__0_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__1_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__1_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__1_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__2_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__2_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__2_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__3_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__3_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__3_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__3_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__4_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__4_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__4_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__4_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__5_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__5_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__5_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__5_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__6_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_carry__6_n_3\ : STD_LOGIC;
  signal uart_transmitter_output_next2_carry_n_0 : STD_LOGIC;
  signal uart_transmitter_output_next2_carry_n_1 : STD_LOGIC;
  signal uart_transmitter_output_next2_carry_n_2 : STD_LOGIC;
  signal uart_transmitter_output_next2_carry_n_3 : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__0_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__0_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__0_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__0_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__1_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__1_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__1_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__2_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__2_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__2_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__3_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__3_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__3_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__3_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__4_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__4_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__4_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__4_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__5_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__5_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__5_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__5_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry__6_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__1/i__carry_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__0_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__0_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__0_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__0_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__1_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__1_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__1_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__1_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__2_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__2_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__2_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__2_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__3_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__3_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__3_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__3_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__4_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__4_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__4_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__4_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__5_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__5_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__5_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__5_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__6_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry__6_n_3\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry_n_0\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry_n_1\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry_n_2\ : STD_LOGIC;
  signal \uart_transmitter_output_next2_inferred__2/i__carry_n_3\ : STD_LOGIC;
  signal \NLW_i_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_uart_transmitter_output_next1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uart_transmitter_output_next1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__0/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__2/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__2/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__2/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next1_inferred__2/i__carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_uart_transmitter_output_next2_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uart_transmitter_output_next2_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_uart_transmitter_output_next2_inferred__1/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_uart_transmitter_output_next2_inferred__1/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uart_transmitter_output_next2_inferred__2/i__carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_uart_transmitter_output_next2_inferred__2/i__carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_transmit_PROC_STATE[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \FSM_sequential_transmit_PROC_STATE[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_sequential_transmit_PROC_STATE[2]_i_1\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_transmit_PROC_STATE_reg[0]\ : label is "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:100,iSTATE3:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_transmit_PROC_STATE_reg[1]\ : label is "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:100,iSTATE3:001";
  attribute FSM_ENCODED_STATES of \FSM_sequential_transmit_PROC_STATE_reg[2]\ : label is "iSTATE:000,iSTATE0:011,iSTATE1:010,iSTATE2:100,iSTATE3:001";
  attribute SOFT_HLUTNM of \i[0]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \i_reg[12]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[16]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[20]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[24]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[28]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[31]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[4]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \i_reg[8]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \input_btint_a[0]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \input_btint_a[16]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \input_btint_a[16]_i_3\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \input_btint_a[16]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \input_btint_a[8]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \j[10]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \j[11]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \j[12]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \j[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \j[14]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \j[15]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \j[16]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j[17]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \j[18]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \j[19]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \j[20]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \j[21]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \j[22]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \j[23]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \j[24]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j[25]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \j[26]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j[27]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \j[28]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j[29]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \j[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \j[30]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \j[3]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \j[4]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \j[5]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \j[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \j[7]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \j[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \j[9]_i_1\ : label is "soft_lutpair14";
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of uart_transmitter_output_next1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__0/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__0/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__0/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__0/i__carry__2\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__2/i__carry\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__2/i__carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__2/i__carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \uart_transmitter_output_next1_inferred__2/i__carry__2\ : label is 11;
  attribute ADDER_THRESHOLD of uart_transmitter_output_next2_carry : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_carry__6\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \uart_transmitter_output_next2_inferred__2/i__carry__6\ : label is 35;
begin
\FSM_sequential_transmit_PROC_STATE[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => transmit_PROC_STATE(0),
      I1 => transmit_PROC_STATE(2),
      I2 => p_4_in,
      O => \FSM_sequential_transmit_PROC_STATE[0]_i_1_n_0\
    );
\FSM_sequential_transmit_PROC_STATE[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BC"
    )
        port map (
      I0 => p_0_in,
      I1 => transmit_PROC_STATE(1),
      I2 => transmit_PROC_STATE(0),
      O => \FSM_sequential_transmit_PROC_STATE[1]_i_1_n_0\
    );
\FSM_sequential_transmit_PROC_STATE[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CAA0C08"
    )
        port map (
      I0 => transmit_PROC_STATE(2),
      I1 => transmit_PROC_STATE(0),
      I2 => p_0_in,
      I3 => transmit_PROC_STATE(1),
      I4 => p_4_in,
      O => \FSM_sequential_transmit_PROC_STATE[2]_i_1_n_0\
    );
\FSM_sequential_transmit_PROC_STATE_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => uart_transmitter_output_i_2_n_0,
      D => \FSM_sequential_transmit_PROC_STATE[0]_i_1_n_0\,
      Q => transmit_PROC_STATE(0),
      R => uart_transmitter_output_i_1_n_0
    );
\FSM_sequential_transmit_PROC_STATE_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => uart_transmitter_output_i_2_n_0,
      D => \FSM_sequential_transmit_PROC_STATE[1]_i_1_n_0\,
      Q => transmit_PROC_STATE(1),
      R => uart_transmitter_output_i_1_n_0
    );
\FSM_sequential_transmit_PROC_STATE_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => uart_transmitter_output_i_2_n_0,
      D => \FSM_sequential_transmit_PROC_STATE[2]_i_1_n_0\,
      Q => transmit_PROC_STATE(2),
      R => uart_transmitter_output_i_1_n_0
    );
\i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_0\,
      I1 => transmit_PROC_STATE(2),
      I2 => transmit_PROC_STATE(0),
      I3 => transmit_PROC_STATE(1),
      I4 => \i_reg_n_0_[0]\,
      O => \i[0]_i_1_n_0\
    );
\i[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF70000"
    )
        port map (
      I0 => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_0\,
      I1 => transmit_PROC_STATE(2),
      I2 => transmit_PROC_STATE(0),
      I3 => transmit_PROC_STATE(1),
      I4 => i,
      O => \i[31]_i_1_n_0\
    );
\i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010003000300"
    )
        port map (
      I0 => p_4_in,
      I1 => transmit_PROC_STATE(1),
      I2 => transmit_PROC_STATE(0),
      I3 => uart_transmitter_reset,
      I4 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I5 => transmit_PROC_STATE(2),
      O => i
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[16]_i_1_n_5\,
      I1 => \i_reg[16]_i_1_n_6\,
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[8]\,
      O => \i__carry__0_i_1__0_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[16]_i_1_n_7\,
      I1 => \i_reg[12]_i_1_n_4\,
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[7]\,
      O => \i__carry__0_i_2__0_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[12]_i_1_n_5\,
      I1 => \i_reg[12]_i_1_n_6\,
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[6]\,
      O => \i__carry__0_i_3__0_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[12]_i_1_n_7\,
      I1 => \i_reg[8]_i_1_n_4\,
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[5]\,
      O => \i__carry__0_i_4__0_n_0\
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[24]_i_1_n_5\,
      I1 => \i_reg[24]_i_1_n_6\,
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[12]\,
      O => \i__carry__1_i_1__0_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[24]_i_1_n_7\,
      I1 => \i_reg[20]_i_1_n_4\,
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[11]\,
      O => \i__carry__1_i_2__0_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[20]_i_1_n_5\,
      I1 => \i_reg[20]_i_1_n_6\,
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[10]\,
      O => \i__carry__1_i_3__0_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[20]_i_1_n_7\,
      I1 => \i_reg[16]_i_1_n_4\,
      O => \i__carry__1_i_4_n_0\
    );
\i__carry__1_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[9]\,
      O => \i__carry__1_i_4__0_n_0\
    );
\i__carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[31]_i_3_n_5\,
      I1 => \i_reg[31]_i_3_n_6\,
      O => \i__carry__2_i_1_n_0\
    );
\i__carry__2_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[16]\,
      O => \i__carry__2_i_1__0_n_0\
    );
\i__carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[31]_i_3_n_7\,
      I1 => \i_reg[28]_i_1_n_4\,
      O => \i__carry__2_i_2_n_0\
    );
\i__carry__2_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[15]\,
      O => \i__carry__2_i_2__0_n_0\
    );
\i__carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[28]_i_1_n_5\,
      I1 => \i_reg[28]_i_1_n_6\,
      O => \i__carry__2_i_3_n_0\
    );
\i__carry__2_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[14]\,
      O => \i__carry__2_i_3__0_n_0\
    );
\i__carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[28]_i_1_n_7\,
      I1 => \i_reg[24]_i_1_n_4\,
      O => \i__carry__2_i_4_n_0\
    );
\i__carry__2_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[13]\,
      O => \i__carry__2_i_4__0_n_0\
    );
\i__carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[20]\,
      O => \i__carry__3_i_1_n_0\
    );
\i__carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[19]\,
      O => \i__carry__3_i_2_n_0\
    );
\i__carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[18]\,
      O => \i__carry__3_i_3_n_0\
    );
\i__carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[17]\,
      O => \i__carry__3_i_4_n_0\
    );
\i__carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[24]\,
      O => \i__carry__4_i_1_n_0\
    );
\i__carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[23]\,
      O => \i__carry__4_i_2_n_0\
    );
\i__carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[22]\,
      O => \i__carry__4_i_3_n_0\
    );
\i__carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[21]\,
      O => \i__carry__4_i_4_n_0\
    );
\i__carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[28]\,
      O => \i__carry__5_i_1_n_0\
    );
\i__carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[27]\,
      O => \i__carry__5_i_2_n_0\
    );
\i__carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[26]\,
      O => \i__carry__5_i_3_n_0\
    );
\i__carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[25]\,
      O => \i__carry__5_i_4_n_0\
    );
\i__carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[30]\,
      O => \i__carry__6_i_1_n_0\
    );
\i__carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[29]\,
      O => \i__carry__6_i_2_n_0\
    );
\i__carry_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \i_reg_n_0_[0]\,
      I1 => \i_reg[4]_i_1_n_7\,
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[4]\,
      O => \i__carry_i_1__0_n_0\
    );
\i__carry_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(1),
      O => \i__carry_i_1__1_n_0\
    );
\i__carry_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(15),
      I1 => in12(14),
      O => \i__carry_i_1__2_n_0\
    );
\i__carry_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(23),
      I1 => in12(22),
      O => \i__carry_i_1__3_n_0\
    );
\i__carry_i_1__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(31),
      I1 => in12(30),
      O => \i__carry_i_1__4_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[8]_i_1_n_5\,
      I1 => \i_reg[8]_i_1_n_6\,
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[3]\,
      O => \i__carry_i_2__0_n_0\
    );
\i__carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(7),
      I1 => in12(6),
      O => \i__carry_i_2__1_n_0\
    );
\i__carry_i_2__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(13),
      I1 => in12(12),
      O => \i__carry_i_2__2_n_0\
    );
\i__carry_i_2__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(21),
      I1 => in12(20),
      O => \i__carry_i_2__3_n_0\
    );
\i__carry_i_2__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(29),
      I1 => in12(28),
      O => \i__carry_i_2__4_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[8]_i_1_n_7\,
      I1 => \i_reg[4]_i_1_n_4\,
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \j_reg_n_0_[2]\,
      O => \i__carry_i_3__0_n_0\
    );
\i__carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(5),
      I1 => in12(4),
      O => \i__carry_i_3__1_n_0\
    );
\i__carry_i_3__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(11),
      I1 => in12(10),
      O => \i__carry_i_3__2_n_0\
    );
\i__carry_i_3__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(19),
      I1 => in12(18),
      O => \i__carry_i_3__3_n_0\
    );
\i__carry_i_3__4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(27),
      I1 => in12(26),
      O => \i__carry_i_3__4_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \i_reg[4]_i_1_n_5\,
      I1 => \i_reg[4]_i_1_n_6\,
      O => \i__carry_i_4_n_0\
    );
\i__carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(3),
      I1 => in12(2),
      O => \i__carry_i_4__0_n_0\
    );
\i__carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(9),
      I1 => in12(8),
      O => \i__carry_i_4__1_n_0\
    );
\i__carry_i_4__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(17),
      I1 => in12(16),
      O => \i__carry_i_4__2_n_0\
    );
\i__carry_i_4__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in12(25),
      I1 => in12(24),
      O => \i__carry_i_4__3_n_0\
    );
\i__carry_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \i_reg[4]_i_1_n_7\,
      I1 => \i_reg_n_0_[0]\,
      O => \i__carry_i_5_n_0\
    );
\i__carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \k_reg_n_0_[0]\,
      I1 => in12(1),
      O => \i__carry_i_5__0_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i[0]_i_1_n_0\,
      Q => \i_reg_n_0_[0]\,
      R => '0'
    );
\i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[12]_i_1_n_6\,
      Q => \i_reg_n_0_[10]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[12]_i_1_n_5\,
      Q => \i_reg_n_0_[11]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[12]_i_1_n_4\,
      Q => \i_reg_n_0_[12]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_1_n_0\,
      CO(3) => \i_reg[12]_i_1_n_0\,
      CO(2) => \i_reg[12]_i_1_n_1\,
      CO(1) => \i_reg[12]_i_1_n_2\,
      CO(0) => \i_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_1_n_4\,
      O(2) => \i_reg[12]_i_1_n_5\,
      O(1) => \i_reg[12]_i_1_n_6\,
      O(0) => \i_reg[12]_i_1_n_7\,
      S(3) => \i_reg_n_0_[12]\,
      S(2) => \i_reg_n_0_[11]\,
      S(1) => \i_reg_n_0_[10]\,
      S(0) => \i_reg_n_0_[9]\
    );
\i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[16]_i_1_n_7\,
      Q => \i_reg_n_0_[13]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[16]_i_1_n_6\,
      Q => \i_reg_n_0_[14]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[16]_i_1_n_5\,
      Q => \i_reg_n_0_[15]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[16]_i_1_n_4\,
      Q => \i_reg_n_0_[16]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_1_n_0\,
      CO(3) => \i_reg[16]_i_1_n_0\,
      CO(2) => \i_reg[16]_i_1_n_1\,
      CO(1) => \i_reg[16]_i_1_n_2\,
      CO(0) => \i_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_1_n_4\,
      O(2) => \i_reg[16]_i_1_n_5\,
      O(1) => \i_reg[16]_i_1_n_6\,
      O(0) => \i_reg[16]_i_1_n_7\,
      S(3) => \i_reg_n_0_[16]\,
      S(2) => \i_reg_n_0_[15]\,
      S(1) => \i_reg_n_0_[14]\,
      S(0) => \i_reg_n_0_[13]\
    );
\i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[20]_i_1_n_7\,
      Q => \i_reg_n_0_[17]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[20]_i_1_n_6\,
      Q => \i_reg_n_0_[18]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[20]_i_1_n_5\,
      Q => \i_reg_n_0_[19]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[4]_i_1_n_7\,
      Q => \i_reg_n_0_[1]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[20]_i_1_n_4\,
      Q => \i_reg_n_0_[20]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CO(3) => \i_reg[20]_i_1_n_0\,
      CO(2) => \i_reg[20]_i_1_n_1\,
      CO(1) => \i_reg[20]_i_1_n_2\,
      CO(0) => \i_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_1_n_4\,
      O(2) => \i_reg[20]_i_1_n_5\,
      O(1) => \i_reg[20]_i_1_n_6\,
      O(0) => \i_reg[20]_i_1_n_7\,
      S(3) => \i_reg_n_0_[20]\,
      S(2) => \i_reg_n_0_[19]\,
      S(1) => \i_reg_n_0_[18]\,
      S(0) => \i_reg_n_0_[17]\
    );
\i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[24]_i_1_n_7\,
      Q => \i_reg_n_0_[21]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[24]_i_1_n_6\,
      Q => \i_reg_n_0_[22]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[24]_i_1_n_5\,
      Q => \i_reg_n_0_[23]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[24]_i_1_n_4\,
      Q => \i_reg_n_0_[24]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_1_n_0\,
      CO(3) => \i_reg[24]_i_1_n_0\,
      CO(2) => \i_reg[24]_i_1_n_1\,
      CO(1) => \i_reg[24]_i_1_n_2\,
      CO(0) => \i_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[24]_i_1_n_4\,
      O(2) => \i_reg[24]_i_1_n_5\,
      O(1) => \i_reg[24]_i_1_n_6\,
      O(0) => \i_reg[24]_i_1_n_7\,
      S(3) => \i_reg_n_0_[24]\,
      S(2) => \i_reg_n_0_[23]\,
      S(1) => \i_reg_n_0_[22]\,
      S(0) => \i_reg_n_0_[21]\
    );
\i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[28]_i_1_n_7\,
      Q => \i_reg_n_0_[25]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[28]_i_1_n_6\,
      Q => \i_reg_n_0_[26]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[28]_i_1_n_5\,
      Q => \i_reg_n_0_[27]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[28]_i_1_n_4\,
      Q => \i_reg_n_0_[28]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[24]_i_1_n_0\,
      CO(3) => \i_reg[28]_i_1_n_0\,
      CO(2) => \i_reg[28]_i_1_n_1\,
      CO(1) => \i_reg[28]_i_1_n_2\,
      CO(0) => \i_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[28]_i_1_n_4\,
      O(2) => \i_reg[28]_i_1_n_5\,
      O(1) => \i_reg[28]_i_1_n_6\,
      O(0) => \i_reg[28]_i_1_n_7\,
      S(3) => \i_reg_n_0_[28]\,
      S(2) => \i_reg_n_0_[27]\,
      S(1) => \i_reg_n_0_[26]\,
      S(0) => \i_reg_n_0_[25]\
    );
\i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[31]_i_3_n_7\,
      Q => \i_reg_n_0_[29]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[4]_i_1_n_6\,
      Q => \i_reg_n_0_[2]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[31]_i_3_n_6\,
      Q => \i_reg_n_0_[30]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[31]_i_3_n_5\,
      Q => \i_reg_n_0_[31]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[28]_i_1_n_0\,
      CO(3 downto 2) => \NLW_i_reg[31]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i_reg[31]_i_3_n_2\,
      CO(0) => \i_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2) => \i_reg[31]_i_3_n_5\,
      O(1) => \i_reg[31]_i_3_n_6\,
      O(0) => \i_reg[31]_i_3_n_7\,
      S(3) => '0',
      S(2) => \i_reg_n_0_[31]\,
      S(1) => \i_reg_n_0_[30]\,
      S(0) => \i_reg_n_0_[29]\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[4]_i_1_n_5\,
      Q => \i_reg_n_0_[3]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[4]_i_1_n_4\,
      Q => \i_reg_n_0_[4]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[4]_i_1_n_0\,
      CO(2) => \i_reg[4]_i_1_n_1\,
      CO(1) => \i_reg[4]_i_1_n_2\,
      CO(0) => \i_reg[4]_i_1_n_3\,
      CYINIT => \i_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_1_n_4\,
      O(2) => \i_reg[4]_i_1_n_5\,
      O(1) => \i_reg[4]_i_1_n_6\,
      O(0) => \i_reg[4]_i_1_n_7\,
      S(3) => \i_reg_n_0_[4]\,
      S(2) => \i_reg_n_0_[3]\,
      S(1) => \i_reg_n_0_[2]\,
      S(0) => \i_reg_n_0_[1]\
    );
\i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[8]_i_1_n_7\,
      Q => \i_reg_n_0_[5]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[8]_i_1_n_6\,
      Q => \i_reg_n_0_[6]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[8]_i_1_n_5\,
      Q => \i_reg_n_0_[7]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[8]_i_1_n_4\,
      Q => \i_reg_n_0_[8]\,
      R => \i[31]_i_1_n_0\
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_1_n_0\,
      CO(3) => \i_reg[8]_i_1_n_0\,
      CO(2) => \i_reg[8]_i_1_n_1\,
      CO(1) => \i_reg[8]_i_1_n_2\,
      CO(0) => \i_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_1_n_4\,
      O(2) => \i_reg[8]_i_1_n_5\,
      O(1) => \i_reg[8]_i_1_n_6\,
      O(0) => \i_reg[8]_i_1_n_7\,
      S(3) => \i_reg_n_0_[8]\,
      S(2) => \i_reg_n_0_[7]\,
      S(1) => \i_reg_n_0_[6]\,
      S(0) => \i_reg_n_0_[5]\
    );
\i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => i,
      D => \i_reg[12]_i_1_n_7\,
      Q => \i_reg_n_0_[9]\,
      R => \i[31]_i_1_n_0\
    );
\input_btint_a[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => uart_transmitter_input_btint_a(0),
      I1 => \input_btint_a[16]_i_2_n_0\,
      I2 => \input_btint_a[16]_i_3_n_0\,
      I3 => \input_btint_a[0]_i_2_n_0\,
      I4 => \input_btint_a[16]_i_5_n_0\,
      I5 => \input_btint_a_reg_n_0_[0]\,
      O => \input_btint_a[0]_i_1_n_0\
    );
\input_btint_a[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => transmit_PROC_STATE(2),
      I1 => \i_reg_n_0_[1]\,
      I2 => \i_reg_n_0_[0]\,
      O => \input_btint_a[0]_i_2_n_0\
    );
\input_btint_a[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => uart_transmitter_input_btint_a(2),
      I1 => \input_btint_a[16]_i_2_n_0\,
      I2 => \input_btint_a[16]_i_3_n_0\,
      I3 => \input_btint_a[16]_i_4_n_0\,
      I4 => \input_btint_a[16]_i_5_n_0\,
      I5 => \input_btint_a_reg_n_0_[16]\,
      O => \input_btint_a[16]_i_1_n_0\
    );
\input_btint_a[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => transmit_PROC_STATE(0),
      I1 => transmit_PROC_STATE(1),
      O => \input_btint_a[16]_i_2_n_0\
    );
\input_btint_a[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => uart_transmitter_reset,
      I1 => transmit_PROC_STATE(0),
      O => \input_btint_a[16]_i_3_n_0\
    );
\input_btint_a[16]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \i_reg_n_0_[0]\,
      I1 => transmit_PROC_STATE(2),
      I2 => \i_reg_n_0_[1]\,
      O => \input_btint_a[16]_i_4_n_0\
    );
\input_btint_a[16]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFCCFECC"
    )
        port map (
      I0 => p_4_in,
      I1 => transmit_PROC_STATE(1),
      I2 => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_0\,
      I3 => transmit_PROC_STATE(2),
      I4 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      O => \input_btint_a[16]_i_5_n_0\
    );
\input_btint_a[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => uart_transmitter_input_btint_a(1),
      I1 => \input_btint_a[16]_i_2_n_0\,
      I2 => \input_btint_a[16]_i_3_n_0\,
      I3 => \input_btint_a[8]_i_2_n_0\,
      I4 => \input_btint_a[16]_i_5_n_0\,
      I5 => \input_btint_a_reg_n_0_[8]\,
      O => \input_btint_a[8]_i_1_n_0\
    );
\input_btint_a[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => transmit_PROC_STATE(2),
      I1 => \i_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[1]\,
      O => \input_btint_a[8]_i_2_n_0\
    );
\input_btint_a_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => '1',
      D => \input_btint_a[0]_i_1_n_0\,
      Q => \input_btint_a_reg_n_0_[0]\,
      R => '0'
    );
\input_btint_a_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => '1',
      D => \input_btint_a[16]_i_1_n_0\,
      Q => \input_btint_a_reg_n_0_[16]\,
      R => '0'
    );
\input_btint_a_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => '1',
      D => \input_btint_a[8]_i_1_n_0\,
      Q => \input_btint_a_reg_n_0_[8]\,
      R => '0'
    );
\input_btint_b[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => uart_transmitter_input_btint_b(0),
      I1 => \input_btint_a[16]_i_2_n_0\,
      I2 => \input_btint_a[16]_i_3_n_0\,
      I3 => \input_btint_a[0]_i_2_n_0\,
      I4 => \input_btint_a[16]_i_5_n_0\,
      I5 => input_btint_b(0),
      O => \input_btint_b[0]_i_1_n_0\
    );
\input_btint_b[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => uart_transmitter_input_btint_b(2),
      I1 => \input_btint_a[16]_i_2_n_0\,
      I2 => \input_btint_a[16]_i_3_n_0\,
      I3 => \input_btint_a[16]_i_4_n_0\,
      I4 => \input_btint_a[16]_i_5_n_0\,
      I5 => input_btint_b(16),
      O => \input_btint_b[16]_i_1_n_0\
    );
\input_btint_b[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFF2F2F20002020"
    )
        port map (
      I0 => uart_transmitter_input_btint_b(1),
      I1 => \input_btint_a[16]_i_2_n_0\,
      I2 => \input_btint_a[16]_i_3_n_0\,
      I3 => \input_btint_a[8]_i_2_n_0\,
      I4 => \input_btint_a[16]_i_5_n_0\,
      I5 => input_btint_b(8),
      O => \input_btint_b[8]_i_1_n_0\
    );
\input_btint_b_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => '1',
      D => \input_btint_b[0]_i_1_n_0\,
      Q => input_btint_b(0),
      R => '0'
    );
\input_btint_b_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => '1',
      D => \input_btint_b[16]_i_1_n_0\,
      Q => input_btint_b(16),
      R => '0'
    );
\input_btint_b_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => '1',
      D => \input_btint_b[8]_i_1_n_0\,
      Q => input_btint_b(8),
      R => '0'
    );
\j[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(10),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[10]_i_1_n_0\
    );
\j[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(11),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[11]_i_1_n_0\
    );
\j[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(12),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[12]_i_1_n_0\
    );
\j[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(13),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[13]_i_1_n_0\
    );
\j[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(14),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[14]_i_1_n_0\
    );
\j[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(15),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[15]_i_1_n_0\
    );
\j[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(16),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[16]_i_1_n_0\
    );
\j[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(17),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[17]_i_1_n_0\
    );
\j[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(18),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[18]_i_1_n_0\
    );
\j[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(19),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[19]_i_1_n_0\
    );
\j[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(1),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[1]_i_1_n_0\
    );
\j[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(20),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[20]_i_1_n_0\
    );
\j[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(21),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[21]_i_1_n_0\
    );
\j[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(22),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[22]_i_1_n_0\
    );
\j[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(23),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[23]_i_1_n_0\
    );
\j[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(24),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[24]_i_1_n_0\
    );
\j[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(25),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[25]_i_1_n_0\
    );
\j[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(26),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[26]_i_1_n_0\
    );
\j[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(27),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[27]_i_1_n_0\
    );
\j[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(28),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[28]_i_1_n_0\
    );
\j[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(29),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[29]_i_1_n_0\
    );
\j[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BF"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(2),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[2]_i_1_n_0\
    );
\j[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020202"
    )
        port map (
      I0 => uart_transmitter_reset,
      I1 => transmit_PROC_STATE(0),
      I2 => transmit_PROC_STATE(1),
      I3 => p_4_in,
      I4 => transmit_PROC_STATE(2),
      O => j
    );
\j[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(30),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[30]_i_2_n_0\
    );
\j[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(3),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[3]_i_1_n_0\
    );
\j[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(4),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[4]_i_1_n_0\
    );
\j[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(5),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[5]_i_1_n_0\
    );
\j[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(6),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[6]_i_1_n_0\
    );
\j[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(7),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[7]_i_1_n_0\
    );
\j[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(8),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[8]_i_1_n_0\
    );
\j[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \uart_transmitter_output_next2__60\(9),
      I1 => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      I2 => transmit_PROC_STATE(2),
      O => \j[9]_i_1_n_0\
    );
\j_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[10]_i_1_n_0\,
      Q => \j_reg_n_0_[10]\,
      R => '0'
    );
\j_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[11]_i_1_n_0\,
      Q => \j_reg_n_0_[11]\,
      R => '0'
    );
\j_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[12]_i_1_n_0\,
      Q => \j_reg_n_0_[12]\,
      R => '0'
    );
\j_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[13]_i_1_n_0\,
      Q => \j_reg_n_0_[13]\,
      R => '0'
    );
\j_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[14]_i_1_n_0\,
      Q => \j_reg_n_0_[14]\,
      R => '0'
    );
\j_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[15]_i_1_n_0\,
      Q => \j_reg_n_0_[15]\,
      R => '0'
    );
\j_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[16]_i_1_n_0\,
      Q => \j_reg_n_0_[16]\,
      R => '0'
    );
\j_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[17]_i_1_n_0\,
      Q => \j_reg_n_0_[17]\,
      R => '0'
    );
\j_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[18]_i_1_n_0\,
      Q => \j_reg_n_0_[18]\,
      R => '0'
    );
\j_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[19]_i_1_n_0\,
      Q => \j_reg_n_0_[19]\,
      R => '0'
    );
\j_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[1]_i_1_n_0\,
      Q => \j_reg_n_0_[1]\,
      R => '0'
    );
\j_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[20]_i_1_n_0\,
      Q => \j_reg_n_0_[20]\,
      R => '0'
    );
\j_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[21]_i_1_n_0\,
      Q => \j_reg_n_0_[21]\,
      R => '0'
    );
\j_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[22]_i_1_n_0\,
      Q => \j_reg_n_0_[22]\,
      R => '0'
    );
\j_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[23]_i_1_n_0\,
      Q => \j_reg_n_0_[23]\,
      R => '0'
    );
\j_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[24]_i_1_n_0\,
      Q => \j_reg_n_0_[24]\,
      R => '0'
    );
\j_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[25]_i_1_n_0\,
      Q => \j_reg_n_0_[25]\,
      R => '0'
    );
\j_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[26]_i_1_n_0\,
      Q => \j_reg_n_0_[26]\,
      R => '0'
    );
\j_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[27]_i_1_n_0\,
      Q => \j_reg_n_0_[27]\,
      R => '0'
    );
\j_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[28]_i_1_n_0\,
      Q => \j_reg_n_0_[28]\,
      R => '0'
    );
\j_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[29]_i_1_n_0\,
      Q => \j_reg_n_0_[29]\,
      R => '0'
    );
\j_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[2]_i_1_n_0\,
      Q => \j_reg_n_0_[2]\,
      R => '0'
    );
\j_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[30]_i_2_n_0\,
      Q => \j_reg_n_0_[30]\,
      R => '0'
    );
\j_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[3]_i_1_n_0\,
      Q => \j_reg_n_0_[3]\,
      R => '0'
    );
\j_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[4]_i_1_n_0\,
      Q => \j_reg_n_0_[4]\,
      R => '0'
    );
\j_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[5]_i_1_n_0\,
      Q => \j_reg_n_0_[5]\,
      R => '0'
    );
\j_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[6]_i_1_n_0\,
      Q => \j_reg_n_0_[6]\,
      R => '0'
    );
\j_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[7]_i_1_n_0\,
      Q => \j_reg_n_0_[7]\,
      R => '0'
    );
\j_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[8]_i_1_n_0\,
      Q => \j_reg_n_0_[8]\,
      R => '0'
    );
\j_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => j,
      D => \j[9]_i_1_n_0\,
      Q => \j_reg_n_0_[9]\,
      R => '0'
    );
\k0[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k0_reg_n_0_[0]\,
      O => \k0[0]_i_1_n_0\
    );
\k0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => uart_transmitter_reset,
      I1 => transmit_PROC_STATE(0),
      I2 => transmit_PROC_STATE(2),
      I3 => transmit_PROC_STATE(1),
      O => \k0[31]_i_1_n_0\
    );
\k0[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => transmit_PROC_STATE(2),
      I1 => transmit_PROC_STATE(0),
      I2 => uart_transmitter_reset,
      O => \k0[31]_i_2_n_0\
    );
\k0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => \k0[0]_i_1_n_0\,
      Q => \k0_reg_n_0_[0]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(10),
      Q => \k0_reg_n_0_[10]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(11),
      Q => \k0_reg_n_0_[11]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(12),
      Q => \k0_reg_n_0_[12]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(13),
      Q => \k0_reg_n_0_[13]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(14),
      Q => \k0_reg_n_0_[14]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(15),
      Q => \k0_reg_n_0_[15]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(16),
      Q => \k0_reg_n_0_[16]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(17),
      Q => \k0_reg_n_0_[17]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(18),
      Q => \k0_reg_n_0_[18]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(19),
      Q => \k0_reg_n_0_[19]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(1),
      Q => \k0_reg_n_0_[1]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(20),
      Q => \k0_reg_n_0_[20]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(21),
      Q => \k0_reg_n_0_[21]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(22),
      Q => \k0_reg_n_0_[22]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(23),
      Q => \k0_reg_n_0_[23]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(24),
      Q => \k0_reg_n_0_[24]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(25),
      Q => \k0_reg_n_0_[25]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(26),
      Q => \k0_reg_n_0_[26]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(27),
      Q => \k0_reg_n_0_[27]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(28),
      Q => \k0_reg_n_0_[28]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(29),
      Q => \k0_reg_n_0_[29]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(2),
      Q => \k0_reg_n_0_[2]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(30),
      Q => \k0_reg_n_0_[30]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(31),
      Q => \k0_reg_n_0_[31]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(3),
      Q => \k0_reg_n_0_[3]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(4),
      Q => \k0_reg_n_0_[4]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(5),
      Q => \k0_reg_n_0_[5]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(6),
      Q => \k0_reg_n_0_[6]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(7),
      Q => \k0_reg_n_0_[7]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(8),
      Q => \k0_reg_n_0_[8]\,
      R => \k0[31]_i_1_n_0\
    );
\k0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => \k0[31]_i_2_n_0\,
      D => in22(9),
      Q => \k0_reg_n_0_[9]\,
      R => \k0[31]_i_1_n_0\
    );
\k[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \k_reg_n_0_[0]\,
      O => \k[0]_i_1_n_0\
    );
\k[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
        port map (
      I0 => transmit_PROC_STATE(1),
      I1 => transmit_PROC_STATE(2),
      I2 => transmit_PROC_STATE(0),
      I3 => p_0_in,
      I4 => uart_transmitter_reset,
      O => \k[31]_i_1_n_0\
    );
\k[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200A00"
    )
        port map (
      I0 => uart_transmitter_reset,
      I1 => p_0_in,
      I2 => transmit_PROC_STATE(0),
      I3 => transmit_PROC_STATE(2),
      I4 => transmit_PROC_STATE(1),
      O => k
    );
\k_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => \k[0]_i_1_n_0\,
      Q => \k_reg_n_0_[0]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(10),
      Q => \k_reg_n_0_[10]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(11),
      Q => \k_reg_n_0_[11]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(12),
      Q => \k_reg_n_0_[12]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(13),
      Q => \k_reg_n_0_[13]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(14),
      Q => \k_reg_n_0_[14]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(15),
      Q => \k_reg_n_0_[15]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(16),
      Q => \k_reg_n_0_[16]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(17),
      Q => \k_reg_n_0_[17]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(18),
      Q => \k_reg_n_0_[18]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(19),
      Q => \k_reg_n_0_[19]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(1),
      Q => \k_reg_n_0_[1]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(20),
      Q => \k_reg_n_0_[20]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(21),
      Q => \k_reg_n_0_[21]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(22),
      Q => \k_reg_n_0_[22]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(23),
      Q => \k_reg_n_0_[23]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(24),
      Q => \k_reg_n_0_[24]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(25),
      Q => \k_reg_n_0_[25]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(26),
      Q => \k_reg_n_0_[26]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(27),
      Q => \k_reg_n_0_[27]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(28),
      Q => \k_reg_n_0_[28]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(29),
      Q => \k_reg_n_0_[29]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(2),
      Q => \k_reg_n_0_[2]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(30),
      Q => \k_reg_n_0_[30]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(31),
      Q => \k_reg_n_0_[31]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(3),
      Q => \k_reg_n_0_[3]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(4),
      Q => \k_reg_n_0_[4]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(5),
      Q => \k_reg_n_0_[5]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(6),
      Q => \k_reg_n_0_[6]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(7),
      Q => \k_reg_n_0_[7]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(8),
      Q => \k_reg_n_0_[8]\,
      R => \k[31]_i_1_n_0\
    );
\k_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => uart_transmitter_clock,
      CE => k,
      D => in12(9),
      Q => \k_reg_n_0_[9]\,
      R => \k[31]_i_1_n_0\
    );
uart_transmitter_output_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => uart_transmitter_reset,
      O => uart_transmitter_output_i_1_n_0
    );
uart_transmitter_output_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => transmit_PROC_STATE(2),
      I1 => transmit_PROC_STATE(1),
      I2 => transmit_PROC_STATE(0),
      O => uart_transmitter_output_i_2_n_0
    );
uart_transmitter_output_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ABAAAAAA"
    )
        port map (
      I0 => uart_transmitter_output_i_4_n_0,
      I1 => transmit_PROC_STATE(1),
      I2 => transmit_PROC_STATE(0),
      I3 => transmit_PROC_STATE(2),
      I4 => p_4_in,
      O => uart_transmitter_output_next
    );
uart_transmitter_output_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00C0005000C0"
    )
        port map (
      I0 => p_0_in,
      I1 => uart_transmitter_output_i_5_n_0,
      I2 => transmit_PROC_STATE(1),
      I3 => transmit_PROC_STATE(2),
      I4 => transmit_PROC_STATE(0),
      I5 => uart_transmitter_output_i_6_n_0,
      O => uart_transmitter_output_i_4_n_0
    );
uart_transmitter_output_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => input_btint_b(8),
      I1 => input_btint_b(0),
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => input_btint_b(16),
      O => uart_transmitter_output_i_5_n_0
    );
uart_transmitter_output_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAF0CA0"
    )
        port map (
      I0 => \input_btint_a_reg_n_0_[8]\,
      I1 => \input_btint_a_reg_n_0_[0]\,
      I2 => \i_reg_n_0_[0]\,
      I3 => \i_reg_n_0_[1]\,
      I4 => \input_btint_a_reg_n_0_[16]\,
      O => uart_transmitter_output_i_6_n_0
    );
uart_transmitter_output_next1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => uart_transmitter_output_next1_carry_n_0,
      CO(2) => uart_transmitter_output_next1_carry_n_1,
      CO(1) => uart_transmitter_output_next1_carry_n_2,
      CO(0) => uart_transmitter_output_next1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => uart_transmitter_output_next1_carry_i_1_n_0,
      O(3 downto 0) => NLW_uart_transmitter_output_next1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => uart_transmitter_output_next1_carry_i_2_n_0,
      S(2) => uart_transmitter_output_next1_carry_i_3_n_0,
      S(1) => uart_transmitter_output_next1_carry_i_4_n_0,
      S(0) => uart_transmitter_output_next1_carry_i_5_n_0
    );
\uart_transmitter_output_next1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => uart_transmitter_output_next1_carry_n_0,
      CO(3) => \uart_transmitter_output_next1_carry__0_n_0\,
      CO(2) => \uart_transmitter_output_next1_carry__0_n_1\,
      CO(1) => \uart_transmitter_output_next1_carry__0_n_2\,
      CO(0) => \uart_transmitter_output_next1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \uart_transmitter_output_next1_carry__0_i_1_n_0\,
      S(2) => \uart_transmitter_output_next1_carry__0_i_2_n_0\,
      S(1) => \uart_transmitter_output_next1_carry__0_i_3_n_0\,
      S(0) => \uart_transmitter_output_next1_carry__0_i_4_n_0\
    );
\uart_transmitter_output_next1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(17),
      I1 => in22(16),
      O => \uart_transmitter_output_next1_carry__0_i_1_n_0\
    );
\uart_transmitter_output_next1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(15),
      I1 => in22(14),
      O => \uart_transmitter_output_next1_carry__0_i_2_n_0\
    );
\uart_transmitter_output_next1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(13),
      I1 => in22(12),
      O => \uart_transmitter_output_next1_carry__0_i_3_n_0\
    );
\uart_transmitter_output_next1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(11),
      I1 => in22(10),
      O => \uart_transmitter_output_next1_carry__0_i_4_n_0\
    );
\uart_transmitter_output_next1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_carry__0_n_0\,
      CO(3) => \uart_transmitter_output_next1_carry__1_n_0\,
      CO(2) => \uart_transmitter_output_next1_carry__1_n_1\,
      CO(1) => \uart_transmitter_output_next1_carry__1_n_2\,
      CO(0) => \uart_transmitter_output_next1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \uart_transmitter_output_next1_carry__1_i_1_n_0\,
      S(2) => \uart_transmitter_output_next1_carry__1_i_2_n_0\,
      S(1) => \uart_transmitter_output_next1_carry__1_i_3_n_0\,
      S(0) => \uart_transmitter_output_next1_carry__1_i_4_n_0\
    );
\uart_transmitter_output_next1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(25),
      I1 => in22(24),
      O => \uart_transmitter_output_next1_carry__1_i_1_n_0\
    );
\uart_transmitter_output_next1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(23),
      I1 => in22(22),
      O => \uart_transmitter_output_next1_carry__1_i_2_n_0\
    );
\uart_transmitter_output_next1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(21),
      I1 => in22(20),
      O => \uart_transmitter_output_next1_carry__1_i_3_n_0\
    );
\uart_transmitter_output_next1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(19),
      I1 => in22(18),
      O => \uart_transmitter_output_next1_carry__1_i_4_n_0\
    );
\uart_transmitter_output_next1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_carry__1_n_0\,
      CO(3) => \NLW_uart_transmitter_output_next1_carry__2_CO_UNCONNECTED\(3),
      CO(2) => p_0_in,
      CO(1) => \uart_transmitter_output_next1_carry__2_n_2\,
      CO(0) => \uart_transmitter_output_next1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => in22(31),
      DI(1 downto 0) => B"00",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \uart_transmitter_output_next1_carry__2_i_1_n_0\,
      S(1) => \uart_transmitter_output_next1_carry__2_i_2_n_0\,
      S(0) => \uart_transmitter_output_next1_carry__2_i_3_n_0\
    );
\uart_transmitter_output_next1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(31),
      I1 => in22(30),
      O => \uart_transmitter_output_next1_carry__2_i_1_n_0\
    );
\uart_transmitter_output_next1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(29),
      I1 => in22(28),
      O => \uart_transmitter_output_next1_carry__2_i_2_n_0\
    );
\uart_transmitter_output_next1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(27),
      I1 => in22(26),
      O => \uart_transmitter_output_next1_carry__2_i_3_n_0\
    );
uart_transmitter_output_next1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(2),
      I1 => in22(3),
      O => uart_transmitter_output_next1_carry_i_1_n_0
    );
uart_transmitter_output_next1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(9),
      I1 => in22(8),
      O => uart_transmitter_output_next1_carry_i_2_n_0
    );
uart_transmitter_output_next1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(7),
      I1 => in22(6),
      O => uart_transmitter_output_next1_carry_i_3_n_0
    );
uart_transmitter_output_next1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in22(5),
      I1 => in22(4),
      O => uart_transmitter_output_next1_carry_i_4_n_0
    );
uart_transmitter_output_next1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => in22(2),
      I1 => in22(3),
      O => uart_transmitter_output_next1_carry_i_5_n_0
    );
\uart_transmitter_output_next1_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uart_transmitter_output_next1_inferred__0/i__carry_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__0/i__carry_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__0/i__carry_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1_n_0\,
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2_n_0\,
      S(2) => \i__carry_i_3_n_0\,
      S(1) => \i__carry_i_4_n_0\,
      S(0) => \i__carry_i_5_n_0\
    );
\uart_transmitter_output_next1_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_inferred__0/i__carry_n_0\,
      CO(3) => \uart_transmitter_output_next1_inferred__0/i__carry__0_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__0/i__carry__0_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__0/i__carry__0_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\uart_transmitter_output_next1_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_inferred__0/i__carry__0_n_0\,
      CO(3) => \uart_transmitter_output_next1_inferred__0/i__carry__1_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__0/i__carry__1_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__0/i__carry__1_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__1_i_1_n_0\,
      S(2) => \i__carry__1_i_2_n_0\,
      S(1) => \i__carry__1_i_3_n_0\,
      S(0) => \i__carry__1_i_4_n_0\
    );
\uart_transmitter_output_next1_inferred__0/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_inferred__0/i__carry__1_n_0\,
      CO(3) => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__0/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \i_reg[31]_i_3_n_5\,
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__0/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__2_i_1_n_0\,
      S(2) => \i__carry__2_i_2_n_0\,
      S(1) => \i__carry__2_i_3_n_0\,
      S(0) => \i__carry__2_i_4_n_0\
    );
\uart_transmitter_output_next1_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uart_transmitter_output_next1_inferred__2/i__carry_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__2/i__carry_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__2/i__carry_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__2/i__carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \i__carry_i_1__1_n_0\,
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__2/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_2__1_n_0\,
      S(2) => \i__carry_i_3__1_n_0\,
      S(1) => \i__carry_i_4__0_n_0\,
      S(0) => \i__carry_i_5__0_n_0\
    );
\uart_transmitter_output_next1_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_inferred__2/i__carry_n_0\,
      CO(3) => \uart_transmitter_output_next1_inferred__2/i__carry__0_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__2/i__carry__0_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__2/i__carry__0_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__2/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__2_n_0\,
      S(2) => \i__carry_i_2__2_n_0\,
      S(1) => \i__carry_i_3__2_n_0\,
      S(0) => \i__carry_i_4__1_n_0\
    );
\uart_transmitter_output_next1_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_inferred__2/i__carry__0_n_0\,
      CO(3) => \uart_transmitter_output_next1_inferred__2/i__carry__1_n_0\,
      CO(2) => \uart_transmitter_output_next1_inferred__2/i__carry__1_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__2/i__carry__1_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__2/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__3_n_0\,
      S(2) => \i__carry_i_2__3_n_0\,
      S(1) => \i__carry_i_3__3_n_0\,
      S(0) => \i__carry_i_4__2_n_0\
    );
\uart_transmitter_output_next1_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next1_inferred__2/i__carry__1_n_0\,
      CO(3) => p_4_in,
      CO(2) => \uart_transmitter_output_next1_inferred__2/i__carry__2_n_1\,
      CO(1) => \uart_transmitter_output_next1_inferred__2/i__carry__2_n_2\,
      CO(0) => \uart_transmitter_output_next1_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => in12(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_uart_transmitter_output_next1_inferred__2/i__carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1__4_n_0\,
      S(2) => \i__carry_i_2__4_n_0\,
      S(1) => \i__carry_i_3__4_n_0\,
      S(0) => \i__carry_i_4__3_n_0\
    );
uart_transmitter_output_next2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => uart_transmitter_output_next2_carry_n_0,
      CO(2) => uart_transmitter_output_next2_carry_n_1,
      CO(1) => uart_transmitter_output_next2_carry_n_2,
      CO(0) => uart_transmitter_output_next2_carry_n_3,
      CYINIT => \k0_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(4 downto 1),
      S(3) => \k0_reg_n_0_[4]\,
      S(2) => \k0_reg_n_0_[3]\,
      S(1) => \k0_reg_n_0_[2]\,
      S(0) => \k0_reg_n_0_[1]\
    );
\uart_transmitter_output_next2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => uart_transmitter_output_next2_carry_n_0,
      CO(3) => \uart_transmitter_output_next2_carry__0_n_0\,
      CO(2) => \uart_transmitter_output_next2_carry__0_n_1\,
      CO(1) => \uart_transmitter_output_next2_carry__0_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(8 downto 5),
      S(3) => \k0_reg_n_0_[8]\,
      S(2) => \k0_reg_n_0_[7]\,
      S(1) => \k0_reg_n_0_[6]\,
      S(0) => \k0_reg_n_0_[5]\
    );
\uart_transmitter_output_next2_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_carry__0_n_0\,
      CO(3) => \uart_transmitter_output_next2_carry__1_n_0\,
      CO(2) => \uart_transmitter_output_next2_carry__1_n_1\,
      CO(1) => \uart_transmitter_output_next2_carry__1_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(12 downto 9),
      S(3) => \k0_reg_n_0_[12]\,
      S(2) => \k0_reg_n_0_[11]\,
      S(1) => \k0_reg_n_0_[10]\,
      S(0) => \k0_reg_n_0_[9]\
    );
\uart_transmitter_output_next2_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_carry__1_n_0\,
      CO(3) => \uart_transmitter_output_next2_carry__2_n_0\,
      CO(2) => \uart_transmitter_output_next2_carry__2_n_1\,
      CO(1) => \uart_transmitter_output_next2_carry__2_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(16 downto 13),
      S(3) => \k0_reg_n_0_[16]\,
      S(2) => \k0_reg_n_0_[15]\,
      S(1) => \k0_reg_n_0_[14]\,
      S(0) => \k0_reg_n_0_[13]\
    );
\uart_transmitter_output_next2_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_carry__2_n_0\,
      CO(3) => \uart_transmitter_output_next2_carry__3_n_0\,
      CO(2) => \uart_transmitter_output_next2_carry__3_n_1\,
      CO(1) => \uart_transmitter_output_next2_carry__3_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(20 downto 17),
      S(3) => \k0_reg_n_0_[20]\,
      S(2) => \k0_reg_n_0_[19]\,
      S(1) => \k0_reg_n_0_[18]\,
      S(0) => \k0_reg_n_0_[17]\
    );
\uart_transmitter_output_next2_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_carry__3_n_0\,
      CO(3) => \uart_transmitter_output_next2_carry__4_n_0\,
      CO(2) => \uart_transmitter_output_next2_carry__4_n_1\,
      CO(1) => \uart_transmitter_output_next2_carry__4_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(24 downto 21),
      S(3) => \k0_reg_n_0_[24]\,
      S(2) => \k0_reg_n_0_[23]\,
      S(1) => \k0_reg_n_0_[22]\,
      S(0) => \k0_reg_n_0_[21]\
    );
\uart_transmitter_output_next2_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_carry__4_n_0\,
      CO(3) => \uart_transmitter_output_next2_carry__5_n_0\,
      CO(2) => \uart_transmitter_output_next2_carry__5_n_1\,
      CO(1) => \uart_transmitter_output_next2_carry__5_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in22(28 downto 25),
      S(3) => \k0_reg_n_0_[28]\,
      S(2) => \k0_reg_n_0_[27]\,
      S(1) => \k0_reg_n_0_[26]\,
      S(0) => \k0_reg_n_0_[25]\
    );
\uart_transmitter_output_next2_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_carry__5_n_0\,
      CO(3 downto 2) => \NLW_uart_transmitter_output_next2_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uart_transmitter_output_next2_carry__6_n_2\,
      CO(0) => \uart_transmitter_output_next2_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_uart_transmitter_output_next2_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in22(31 downto 29),
      S(3) => '0',
      S(2) => \k0_reg_n_0_[31]\,
      S(1) => \k0_reg_n_0_[30]\,
      S(0) => \k0_reg_n_0_[29]\
    );
\uart_transmitter_output_next2_inferred__1/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[4]\,
      DI(2) => \j_reg_n_0_[3]\,
      DI(1) => \j_reg_n_0_[2]\,
      DI(0) => '0',
      O(3 downto 0) => \uart_transmitter_output_next2__60\(4 downto 1),
      S(3) => \i__carry_i_1__0_n_0\,
      S(2) => \i__carry_i_2__0_n_0\,
      S(1) => \i__carry_i_3__0_n_0\,
      S(0) => \j_reg_n_0_[1]\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry__0_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__0_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry__0_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[8]\,
      DI(2) => \j_reg_n_0_[7]\,
      DI(1) => \j_reg_n_0_[6]\,
      DI(0) => \j_reg_n_0_[5]\,
      O(3 downto 0) => \uart_transmitter_output_next2__60\(8 downto 5),
      S(3) => \i__carry__0_i_1__0_n_0\,
      S(2) => \i__carry__0_i_2__0_n_0\,
      S(1) => \i__carry__0_i_3__0_n_0\,
      S(0) => \i__carry__0_i_4__0_n_0\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry__0_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry__1_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__1_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry__1_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[12]\,
      DI(2) => \j_reg_n_0_[11]\,
      DI(1) => \j_reg_n_0_[10]\,
      DI(0) => \j_reg_n_0_[9]\,
      O(3 downto 0) => \uart_transmitter_output_next2__60\(12 downto 9),
      S(3) => \i__carry__1_i_1__0_n_0\,
      S(2) => \i__carry__1_i_2__0_n_0\,
      S(1) => \i__carry__1_i_3__0_n_0\,
      S(0) => \i__carry__1_i_4__0_n_0\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry__1_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry__2_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__2_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry__2_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[16]\,
      DI(2) => \j_reg_n_0_[15]\,
      DI(1) => \j_reg_n_0_[14]\,
      DI(0) => \j_reg_n_0_[13]\,
      O(3 downto 0) => \uart_transmitter_output_next2__60\(16 downto 13),
      S(3) => \i__carry__2_i_1__0_n_0\,
      S(2) => \i__carry__2_i_2__0_n_0\,
      S(1) => \i__carry__2_i_3__0_n_0\,
      S(0) => \i__carry__2_i_4__0_n_0\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry__2_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry__3_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__3_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry__3_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[20]\,
      DI(2) => \j_reg_n_0_[19]\,
      DI(1) => \j_reg_n_0_[18]\,
      DI(0) => \j_reg_n_0_[17]\,
      O(3 downto 0) => \uart_transmitter_output_next2__60\(20 downto 17),
      S(3) => \i__carry__3_i_1_n_0\,
      S(2) => \i__carry__3_i_2_n_0\,
      S(1) => \i__carry__3_i_3_n_0\,
      S(0) => \i__carry__3_i_4_n_0\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry__3_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry__4_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__4_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry__4_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[24]\,
      DI(2) => \j_reg_n_0_[23]\,
      DI(1) => \j_reg_n_0_[22]\,
      DI(0) => \j_reg_n_0_[21]\,
      O(3 downto 0) => \uart_transmitter_output_next2__60\(24 downto 21),
      S(3) => \i__carry__4_i_1_n_0\,
      S(2) => \i__carry__4_i_2_n_0\,
      S(1) => \i__carry__4_i_3_n_0\,
      S(0) => \i__carry__4_i_4_n_0\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry__4_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__1/i__carry__5_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__5_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__1/i__carry__5_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3) => \j_reg_n_0_[28]\,
      DI(2) => \j_reg_n_0_[27]\,
      DI(1) => \j_reg_n_0_[26]\,
      DI(0) => \j_reg_n_0_[25]\,
      O(3 downto 0) => \uart_transmitter_output_next2__60\(28 downto 25),
      S(3) => \i__carry__5_i_1_n_0\,
      S(2) => \i__carry__5_i_2_n_0\,
      S(1) => \i__carry__5_i_3_n_0\,
      S(0) => \i__carry__5_i_4_n_0\
    );
\uart_transmitter_output_next2_inferred__1/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__1/i__carry__5_n_0\,
      CO(3) => \NLW_uart_transmitter_output_next2_inferred__1/i__carry__6_CO_UNCONNECTED\(3),
      CO(2) => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_1\,
      CO(1) => \NLW_uart_transmitter_output_next2_inferred__1/i__carry__6_CO_UNCONNECTED\(1),
      CO(0) => \uart_transmitter_output_next2_inferred__1/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \j_reg_n_0_[30]\,
      DI(0) => \j_reg_n_0_[29]\,
      O(3 downto 2) => \NLW_uart_transmitter_output_next2_inferred__1/i__carry__6_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => \uart_transmitter_output_next2__60\(30 downto 29),
      S(3 downto 2) => B"01",
      S(1) => \i__carry__6_i_1_n_0\,
      S(0) => \i__carry__6_i_2_n_0\
    );
\uart_transmitter_output_next2_inferred__2/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry_n_3\,
      CYINIT => \k_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(4 downto 1),
      S(3) => \k_reg_n_0_[4]\,
      S(2) => \k_reg_n_0_[3]\,
      S(1) => \k_reg_n_0_[2]\,
      S(0) => \k_reg_n_0_[1]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry__0_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry__0_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__0_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(8 downto 5),
      S(3) => \k_reg_n_0_[8]\,
      S(2) => \k_reg_n_0_[7]\,
      S(1) => \k_reg_n_0_[6]\,
      S(0) => \k_reg_n_0_[5]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry__0_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry__1_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry__1_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__1_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(12 downto 9),
      S(3) => \k_reg_n_0_[12]\,
      S(2) => \k_reg_n_0_[11]\,
      S(1) => \k_reg_n_0_[10]\,
      S(0) => \k_reg_n_0_[9]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry__1_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry__2_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry__2_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__2_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(16 downto 13),
      S(3) => \k_reg_n_0_[16]\,
      S(2) => \k_reg_n_0_[15]\,
      S(1) => \k_reg_n_0_[14]\,
      S(0) => \k_reg_n_0_[13]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry__2_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry__3_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry__3_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__3_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(20 downto 17),
      S(3) => \k_reg_n_0_[20]\,
      S(2) => \k_reg_n_0_[19]\,
      S(1) => \k_reg_n_0_[18]\,
      S(0) => \k_reg_n_0_[17]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry__3_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry__4_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry__4_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__4_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(24 downto 21),
      S(3) => \k_reg_n_0_[24]\,
      S(2) => \k_reg_n_0_[23]\,
      S(1) => \k_reg_n_0_[22]\,
      S(0) => \k_reg_n_0_[21]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry__4_n_0\,
      CO(3) => \uart_transmitter_output_next2_inferred__2/i__carry__5_n_0\,
      CO(2) => \uart_transmitter_output_next2_inferred__2/i__carry__5_n_1\,
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__5_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => in12(28 downto 25),
      S(3) => \k_reg_n_0_[28]\,
      S(2) => \k_reg_n_0_[27]\,
      S(1) => \k_reg_n_0_[26]\,
      S(0) => \k_reg_n_0_[25]\
    );
\uart_transmitter_output_next2_inferred__2/i__carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \uart_transmitter_output_next2_inferred__2/i__carry__5_n_0\,
      CO(3 downto 2) => \NLW_uart_transmitter_output_next2_inferred__2/i__carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \uart_transmitter_output_next2_inferred__2/i__carry__6_n_2\,
      CO(0) => \uart_transmitter_output_next2_inferred__2/i__carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_uart_transmitter_output_next2_inferred__2/i__carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => in12(31 downto 29),
      S(3) => '0',
      S(2) => \k_reg_n_0_[31]\,
      S(1) => \k_reg_n_0_[30]\,
      S(0) => \k_reg_n_0_[29]\
    );
uart_transmitter_output_reg: unisim.vcomponents.FDSE
     port map (
      C => uart_transmitter_clock,
      CE => uart_transmitter_output_i_2_n_0,
      D => uart_transmitter_output_next,
      Q => uart_transmitter_output,
      S => uart_transmitter_output_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bachelor_UART_TRANSMITTER_0_0 is
  port (
    uart_transmitter_clock : in STD_LOGIC;
    uart_transmitter_reset : in STD_LOGIC;
    uart_transmitter_input_btint_a : in STD_LOGIC_VECTOR ( 23 downto 0 );
    uart_transmitter_input_btint_b : in STD_LOGIC_VECTOR ( 23 downto 0 );
    uart_transmitter_input_overflow : in STD_LOGIC_VECTOR ( 5 downto 0 );
    uart_transmitter_output : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of bachelor_UART_TRANSMITTER_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of bachelor_UART_TRANSMITTER_0_0 : entity is "bachelor_UART_TRANSMITTER_0_0,UART_TRANSMITTER,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of bachelor_UART_TRANSMITTER_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of bachelor_UART_TRANSMITTER_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of bachelor_UART_TRANSMITTER_0_0 : entity is "UART_TRANSMITTER,Vivado 2023.2";
end bachelor_UART_TRANSMITTER_0_0;

architecture STRUCTURE of bachelor_UART_TRANSMITTER_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of uart_transmitter_clock : signal is "xilinx.com:signal:clock:1.0 uart_transmitter_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of uart_transmitter_clock : signal is "XIL_INTERFACENAME uart_transmitter_clock, ASSOCIATED_RESET uart_transmitter_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bachelor_matrix_vector_clock_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of uart_transmitter_reset : signal is "xilinx.com:signal:reset:1.0 uart_transmitter_reset RST";
  attribute X_INTERFACE_PARAMETER of uart_transmitter_reset : signal is "XIL_INTERFACENAME uart_transmitter_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.bachelor_UART_TRANSMITTER_0_0_UART_TRANSMITTER
     port map (
      uart_transmitter_clock => uart_transmitter_clock,
      uart_transmitter_input_btint_a(2) => uart_transmitter_input_btint_a(16),
      uart_transmitter_input_btint_a(1) => uart_transmitter_input_btint_a(8),
      uart_transmitter_input_btint_a(0) => uart_transmitter_input_btint_a(0),
      uart_transmitter_input_btint_b(2) => uart_transmitter_input_btint_b(16),
      uart_transmitter_input_btint_b(1) => uart_transmitter_input_btint_b(8),
      uart_transmitter_input_btint_b(0) => uart_transmitter_input_btint_b(0),
      uart_transmitter_output => uart_transmitter_output,
      uart_transmitter_reset => uart_transmitter_reset
    );
end STRUCTURE;
