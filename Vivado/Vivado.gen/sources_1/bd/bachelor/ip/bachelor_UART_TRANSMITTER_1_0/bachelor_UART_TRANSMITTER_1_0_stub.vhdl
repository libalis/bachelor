-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.2 (lin64) Build 4029153 Fri Oct 13 20:13:54 MDT 2023
-- Date        : Sun Jun  8 01:00:45 2025
-- Host        : arch running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/robert/Downloads/Bachelor/Vivado/Vivado.gen/sources_1/bd/bachelor/ip/bachelor_UART_TRANSMITTER_1_0/bachelor_UART_TRANSMITTER_1_0_stub.vhdl
-- Design      : bachelor_UART_TRANSMITTER_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bachelor_UART_TRANSMITTER_1_0 is
  Port ( 
    uart_transmitter_clock : in STD_LOGIC;
    uart_transmitter_reset_active_low : in STD_LOGIC;
    uart_transmitter_input_btint_a : in STD_LOGIC_VECTOR ( 127 downto 0 );
    uart_transmitter_input_btint_b : in STD_LOGIC_VECTOR ( 127 downto 0 );
    uart_transmitter_input_overflow : in STD_LOGIC_VECTOR ( 31 downto 0 );
    uart_transmitter_column : in STD_LOGIC_VECTOR ( 31 downto 0 );
    uart_transmitter_output : out STD_LOGIC
  );

end bachelor_UART_TRANSMITTER_1_0;

architecture stub of bachelor_UART_TRANSMITTER_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "uart_transmitter_clock,uart_transmitter_reset_active_low,uart_transmitter_input_btint_a[127:0],uart_transmitter_input_btint_b[127:0],uart_transmitter_input_overflow[31:0],uart_transmitter_column[31:0],uart_transmitter_output";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "UART_TRANSMITTER,Vivado 2023.2";
begin
end;
