-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Mon Jun  2 15:39:37 2025
-- Host        : arch running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/robert/Downloads/Bachelor/Vivado/Vivado.gen/sources_1/bd/bachelor/ip/bachelor_COMBINED_OPERATIONS_0_0/bachelor_COMBINED_OPERATIONS_0_0_stub.vhdl
-- Design      : bachelor_COMBINED_OPERATIONS_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bachelor_COMBINED_OPERATIONS_0_0 is
  Port ( 
    combined_operations_clock : in STD_LOGIC;
    combined_operations_reset : in STD_LOGIC;
    combined_operations_m_a_btint_a : in STD_LOGIC_VECTOR ( 95 downto 0 );
    combined_operations_m_a_btint_b : in STD_LOGIC_VECTOR ( 95 downto 0 );
    combined_operations_m_a_overflow : in STD_LOGIC_VECTOR ( 23 downto 0 );
    combined_operations_m_b_btint_a : in STD_LOGIC_VECTOR ( 95 downto 0 );
    combined_operations_m_b_btint_b : in STD_LOGIC_VECTOR ( 95 downto 0 );
    combined_operations_m_b_overflow : in STD_LOGIC_VECTOR ( 23 downto 0 );
    combined_operations_v_btint_a : in STD_LOGIC_VECTOR ( 23 downto 0 );
    combined_operations_v_btint_b : in STD_LOGIC_VECTOR ( 23 downto 0 );
    combined_operations_v_overflow : in STD_LOGIC_VECTOR ( 5 downto 0 );
    combined_operations_op : in STD_LOGIC_VECTOR ( 1 downto 0 );
    combined_operations_done : out STD_LOGIC;
    combined_operations_result_u_btint_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    combined_operations_result_u_btint_b : out STD_LOGIC_VECTOR ( 127 downto 0 );
    combined_operations_result_u_overflow : out STD_LOGIC_VECTOR ( 31 downto 0 );
    combined_operations_result_d_btint_a : out STD_LOGIC_VECTOR ( 127 downto 0 );
    combined_operations_result_d_btint_b : out STD_LOGIC_VECTOR ( 127 downto 0 );
    combined_operations_result_d_overflow : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end bachelor_COMBINED_OPERATIONS_0_0;

architecture stub of bachelor_COMBINED_OPERATIONS_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "combined_operations_clock,combined_operations_reset,combined_operations_m_a_btint_a[95:0],combined_operations_m_a_btint_b[95:0],combined_operations_m_a_overflow[23:0],combined_operations_m_b_btint_a[95:0],combined_operations_m_b_btint_b[95:0],combined_operations_m_b_overflow[23:0],combined_operations_v_btint_a[23:0],combined_operations_v_btint_b[23:0],combined_operations_v_overflow[5:0],combined_operations_op[1:0],combined_operations_done,combined_operations_result_u_btint_a[127:0],combined_operations_result_u_btint_b[127:0],combined_operations_result_u_overflow[31:0],combined_operations_result_d_btint_a[127:0],combined_operations_result_d_btint_b[127:0],combined_operations_result_d_overflow[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "COMBINED_OPERATIONS,Vivado 2023.2";
begin
end;
