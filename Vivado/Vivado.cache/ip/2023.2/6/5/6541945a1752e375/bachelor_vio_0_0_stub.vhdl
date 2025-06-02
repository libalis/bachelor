-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Wed May  7 19:21:14 2025
-- Host        : arch running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_vio_0_0_stub.vhdl
-- Design      : bachelor_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe_in2 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe_in3 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in4 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe_in5 : in STD_LOGIC_VECTOR ( 127 downto 0 );
    probe_in6 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_in7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_in8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 95 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 95 downto 0 );
    probe_out2 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_out3 : out STD_LOGIC_VECTOR ( 95 downto 0 );
    probe_out4 : out STD_LOGIC_VECTOR ( 95 downto 0 );
    probe_out5 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_out6 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_out7 : out STD_LOGIC_VECTOR ( 23 downto 0 );
    probe_out8 : out STD_LOGIC_VECTOR ( 5 downto 0 );
    probe_out9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    probe_out10 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    probe_out11 : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[0:0],probe_in1[127:0],probe_in2[127:0],probe_in3[31:0],probe_in4[127:0],probe_in5[127:0],probe_in6[31:0],probe_in7[0:0],probe_in8[0:0],probe_out0[95:0],probe_out1[95:0],probe_out2[23:0],probe_out3[95:0],probe_out4[95:0],probe_out5[23:0],probe_out6[23:0],probe_out7[23:0],probe_out8[5:0],probe_out9[1:0],probe_out10[31:0],probe_out11[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2023.2";
begin
end;
