//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
//Date        : Sat Mar 15 19:46:43 2025
//Host        : arch running 64-bit unknown
//Command     : generate_target bachelor_wrapper.bd
//Design      : bachelor_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bachelor_wrapper
   (clk_100MHz,
    reset_rtl_0);
  input clk_100MHz;
  input reset_rtl_0;

  wire clk_100MHz;
  wire reset_rtl_0;

  bachelor bachelor_i
       (.clk_100MHz(clk_100MHz),
        .reset_rtl_0(reset_rtl_0));
endmodule
