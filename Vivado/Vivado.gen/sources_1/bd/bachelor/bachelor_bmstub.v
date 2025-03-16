// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module bachelor (
  matrix_vector_clock,
  matrix_vector_reset,
  uart_transmitter_output
);

  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.MATRIX_VECTOR_CLOCK CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.MATRIX_VECTOR_CLOCK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.MATRIX_VECTOR_CLOCK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN bachelor_matrix_vector_clock_0, ASSOCIATED_RESET matrix_vector_reset, INSERT_VIP 0" *)
  input matrix_vector_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.MATRIX_VECTOR_RESET RST" *)
  (* X_INTERFACE_MODE = "slave RST.MATRIX_VECTOR_RESET" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.MATRIX_VECTOR_RESET, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
  input matrix_vector_reset;
  (* X_INTERFACE_IGNORE = "true" *)
  output uart_transmitter_output;

  // stub module has no contents

endmodule
