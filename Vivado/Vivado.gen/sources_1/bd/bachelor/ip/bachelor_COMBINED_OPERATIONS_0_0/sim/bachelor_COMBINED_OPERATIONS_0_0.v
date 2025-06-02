// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2025 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:COMBINED_OPERATIONS:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module bachelor_COMBINED_OPERATIONS_0_0 (
  combined_operations_clock,
  combined_operations_reset,
  combined_operations_m_a_btint_a,
  combined_operations_m_a_btint_b,
  combined_operations_m_a_overflow,
  combined_operations_m_b_btint_a,
  combined_operations_m_b_btint_b,
  combined_operations_m_b_overflow,
  combined_operations_v_btint_a,
  combined_operations_v_btint_b,
  combined_operations_v_overflow,
  combined_operations_op,
  combined_operations_done,
  combined_operations_result_u_btint_a,
  combined_operations_result_u_btint_b,
  combined_operations_result_u_overflow,
  combined_operations_result_d_btint_a,
  combined_operations_result_d_btint_b,
  combined_operations_result_d_overflow
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME combined_operations_clock, ASSOCIATED_RESET combined_operations_reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bachelor_combined_operations_clock_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 combined_operations_clock CLK" *)
input wire combined_operations_clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME combined_operations_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 combined_operations_reset RST" *)
input wire combined_operations_reset;
input wire [95 : 0] combined_operations_m_a_btint_a;
input wire [95 : 0] combined_operations_m_a_btint_b;
input wire [23 : 0] combined_operations_m_a_overflow;
input wire [95 : 0] combined_operations_m_b_btint_a;
input wire [95 : 0] combined_operations_m_b_btint_b;
input wire [23 : 0] combined_operations_m_b_overflow;
input wire [23 : 0] combined_operations_v_btint_a;
input wire [23 : 0] combined_operations_v_btint_b;
input wire [5 : 0] combined_operations_v_overflow;
input wire [1 : 0] combined_operations_op;
output wire combined_operations_done;
output wire [127 : 0] combined_operations_result_u_btint_a;
output wire [127 : 0] combined_operations_result_u_btint_b;
output wire [31 : 0] combined_operations_result_u_overflow;
output wire [127 : 0] combined_operations_result_d_btint_a;
output wire [127 : 0] combined_operations_result_d_btint_b;
output wire [31 : 0] combined_operations_result_d_overflow;

  COMBINED_OPERATIONS inst (
    .combined_operations_clock(combined_operations_clock),
    .combined_operations_reset(combined_operations_reset),
    .combined_operations_m_a_btint_a(combined_operations_m_a_btint_a),
    .combined_operations_m_a_btint_b(combined_operations_m_a_btint_b),
    .combined_operations_m_a_overflow(combined_operations_m_a_overflow),
    .combined_operations_m_b_btint_a(combined_operations_m_b_btint_a),
    .combined_operations_m_b_btint_b(combined_operations_m_b_btint_b),
    .combined_operations_m_b_overflow(combined_operations_m_b_overflow),
    .combined_operations_v_btint_a(combined_operations_v_btint_a),
    .combined_operations_v_btint_b(combined_operations_v_btint_b),
    .combined_operations_v_overflow(combined_operations_v_overflow),
    .combined_operations_op(combined_operations_op),
    .combined_operations_done(combined_operations_done),
    .combined_operations_result_u_btint_a(combined_operations_result_u_btint_a),
    .combined_operations_result_u_btint_b(combined_operations_result_u_btint_b),
    .combined_operations_result_u_overflow(combined_operations_result_u_overflow),
    .combined_operations_result_d_btint_a(combined_operations_result_d_btint_a),
    .combined_operations_result_d_btint_b(combined_operations_result_d_btint_b),
    .combined_operations_result_d_overflow(combined_operations_result_d_overflow)
  );
endmodule
