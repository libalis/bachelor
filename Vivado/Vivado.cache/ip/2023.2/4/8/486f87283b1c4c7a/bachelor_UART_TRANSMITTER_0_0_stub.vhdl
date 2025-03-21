-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Fri Mar 21 18:54:59 2025
-- Host        : arch running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bachelor_UART_TRANSMITTER_0_0_stub.vhdl
-- Design      : bachelor_UART_TRANSMITTER_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    uart_transmitter_clock : in STD_LOGIC;
    uart_transmitter_reset : in STD_LOGIC;
    uart_transmitter_input_btint_a : in STD_LOGIC_VECTOR ( 23 downto 0 );
    uart_transmitter_input_btint_b : in STD_LOGIC_VECTOR ( 23 downto 0 );
    uart_transmitter_input_overflow : in STD_LOGIC_VECTOR ( 5 downto 0 );
    uart_transmitter_output : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "uart_transmitter_clock,uart_transmitter_reset,uart_transmitter_input_btint_a[23:0],uart_transmitter_input_btint_b[23:0],uart_transmitter_input_overflow[5:0],uart_transmitter_output";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_TRANSMITTER,Vivado 2023.2";
begin
end;
