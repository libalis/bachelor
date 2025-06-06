module COMBINED_OPERATIONS (
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
	input wire combined_operations_clock;
	input wire combined_operations_reset;
	input wire [95:0] combined_operations_m_a_btint_a;
	input wire [95:0] combined_operations_m_a_btint_b;
	input wire [23:0] combined_operations_m_a_overflow;
	input wire [95:0] combined_operations_m_b_btint_a;
	input wire [95:0] combined_operations_m_b_btint_b;
	input wire [23:0] combined_operations_m_b_overflow;
	input wire [23:0] combined_operations_v_btint_a;
	input wire [23:0] combined_operations_v_btint_b;
	input wire [5:0] combined_operations_v_overflow;
	input wire [1:0] combined_operations_op;
	output wire combined_operations_done;
	output wire [127:0] combined_operations_result_u_btint_a;
	output wire [127:0] combined_operations_result_u_btint_b;
	output wire [31:0] combined_operations_result_u_overflow;
	output wire [127:0] combined_operations_result_d_btint_a;
	output wire [127:0] combined_operations_result_d_btint_b;
	output wire [31:0] combined_operations_result_d_overflow;
	wire [7:0] cell_a_in_btint_a [0:3][0:2];
	wire [7:0] cell_a_in_btint_b [0:3][0:2];
	wire [1:0] cell_a_in_overflow [0:3][0:2];
	wire [7:0] cell_c_in_u_btint_a [0:3][0:2];
	wire [7:0] cell_c_in_u_btint_b [0:3][0:2];
	wire [1:0] cell_c_in_u_overflow [0:3][0:2];
	wire [7:0] cell_c_in_d_btint_a [0:3][0:2];
	wire [7:0] cell_c_in_d_btint_b [0:3][0:2];
	wire [1:0] cell_c_in_d_overflow [0:3][0:2];
	wire cell_s_in [0:3][0:2];
	wire [0:3] cell_s_mm;
	wire [7:0] cell_a_out_btint_a [0:3][0:2];
	wire [7:0] cell_a_out_btint_b [0:3][0:2];
	wire [1:0] cell_a_out_overflow [0:3][0:2];
	wire [7:0] cell_c_out_u_btint_a [0:3][0:2];
	wire [7:0] cell_c_out_u_btint_b [0:3][0:2];
	wire [1:0] cell_c_out_u_overflow [0:3][0:2];
	wire [7:0] cell_c_out_d_btint_a [0:3][0:2];
	wire [7:0] cell_c_out_d_btint_b [0:3][0:2];
	wire [1:0] cell_c_out_d_overflow [0:3][0:2];
	wire cell_s_out [0:3][0:2];
	CELL cell_0_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[0][0]),
		.cell_a_in_btint_b(cell_a_in_btint_b[0][0]),
		.cell_a_in_overflow(cell_a_in_overflow[0][0]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[0][0]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[0][0]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[0][0]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[0][0]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[0][0]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[0][0]),
		.cell_s_in(cell_s_in[0][0]),
		.cell_s_mm(cell_s_mm[0]),
		.cell_a_out_btint_a(cell_a_out_btint_a[0][0]),
		.cell_a_out_btint_b(cell_a_out_btint_b[0][0]),
		.cell_a_out_overflow(cell_a_out_overflow[0][0]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[0][0]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[0][0]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[0][0]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[0][0]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[0][0]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[0][0]),
		.cell_s_out(cell_s_out[0][0])
	);
	CELL cell_0_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[0][1]),
		.cell_a_in_btint_b(cell_a_in_btint_b[0][1]),
		.cell_a_in_overflow(cell_a_in_overflow[0][1]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[0][1]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[0][1]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[0][1]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[0][1]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[0][1]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[0][1]),
		.cell_s_in(cell_s_in[0][1]),
		.cell_s_mm(cell_s_mm[0]),
		.cell_a_out_btint_a(cell_a_out_btint_a[0][1]),
		.cell_a_out_btint_b(cell_a_out_btint_b[0][1]),
		.cell_a_out_overflow(cell_a_out_overflow[0][1]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[0][1]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[0][1]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[0][1]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[0][1]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[0][1]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[0][1]),
		.cell_s_out(cell_s_out[0][1])
	);
	CELL cell_0_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[0][2]),
		.cell_a_in_btint_b(cell_a_in_btint_b[0][2]),
		.cell_a_in_overflow(cell_a_in_overflow[0][2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[0][2]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[0][2]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[0][2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[0][2]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[0][2]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[0][2]),
		.cell_s_in(cell_s_in[0][2]),
		.cell_s_mm(cell_s_mm[0]),
		.cell_a_out_btint_a(cell_a_out_btint_a[0][2]),
		.cell_a_out_btint_b(cell_a_out_btint_b[0][2]),
		.cell_a_out_overflow(cell_a_out_overflow[0][2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[0][2]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[0][2]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[0][2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[0][2]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[0][2]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[0][2]),
		.cell_s_out(cell_s_out[0][2])
	);
	CELL cell_1_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[1][0]),
		.cell_a_in_btint_b(cell_a_in_btint_b[1][0]),
		.cell_a_in_overflow(cell_a_in_overflow[1][0]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[1][0]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[1][0]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[1][0]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[1][0]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[1][0]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[1][0]),
		.cell_s_in(cell_s_in[1][0]),
		.cell_s_mm(cell_s_mm[1]),
		.cell_a_out_btint_a(cell_a_out_btint_a[1][0]),
		.cell_a_out_btint_b(cell_a_out_btint_b[1][0]),
		.cell_a_out_overflow(cell_a_out_overflow[1][0]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[1][0]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[1][0]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[1][0]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[1][0]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[1][0]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[1][0]),
		.cell_s_out(cell_s_out[1][0])
	);
	CELL cell_1_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[1][1]),
		.cell_a_in_btint_b(cell_a_in_btint_b[1][1]),
		.cell_a_in_overflow(cell_a_in_overflow[1][1]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[1][1]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[1][1]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[1][1]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[1][1]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[1][1]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[1][1]),
		.cell_s_in(cell_s_in[1][1]),
		.cell_s_mm(cell_s_mm[1]),
		.cell_a_out_btint_a(cell_a_out_btint_a[1][1]),
		.cell_a_out_btint_b(cell_a_out_btint_b[1][1]),
		.cell_a_out_overflow(cell_a_out_overflow[1][1]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[1][1]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[1][1]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[1][1]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[1][1]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[1][1]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[1][1]),
		.cell_s_out(cell_s_out[1][1])
	);
	CELL cell_1_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[1][2]),
		.cell_a_in_btint_b(cell_a_in_btint_b[1][2]),
		.cell_a_in_overflow(cell_a_in_overflow[1][2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[1][2]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[1][2]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[1][2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[1][2]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[1][2]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[1][2]),
		.cell_s_in(cell_s_in[1][2]),
		.cell_s_mm(cell_s_mm[1]),
		.cell_a_out_btint_a(cell_a_out_btint_a[1][2]),
		.cell_a_out_btint_b(cell_a_out_btint_b[1][2]),
		.cell_a_out_overflow(cell_a_out_overflow[1][2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[1][2]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[1][2]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[1][2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[1][2]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[1][2]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[1][2]),
		.cell_s_out(cell_s_out[1][2])
	);
	CELL cell_2_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[2][0]),
		.cell_a_in_btint_b(cell_a_in_btint_b[2][0]),
		.cell_a_in_overflow(cell_a_in_overflow[2][0]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[2][0]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[2][0]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[2][0]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[2][0]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[2][0]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[2][0]),
		.cell_s_in(cell_s_in[2][0]),
		.cell_s_mm(cell_s_mm[2]),
		.cell_a_out_btint_a(cell_a_out_btint_a[2][0]),
		.cell_a_out_btint_b(cell_a_out_btint_b[2][0]),
		.cell_a_out_overflow(cell_a_out_overflow[2][0]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[2][0]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[2][0]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[2][0]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[2][0]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[2][0]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[2][0]),
		.cell_s_out(cell_s_out[2][0])
	);
	CELL cell_2_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[2][1]),
		.cell_a_in_btint_b(cell_a_in_btint_b[2][1]),
		.cell_a_in_overflow(cell_a_in_overflow[2][1]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[2][1]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[2][1]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[2][1]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[2][1]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[2][1]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[2][1]),
		.cell_s_in(cell_s_in[2][1]),
		.cell_s_mm(cell_s_mm[2]),
		.cell_a_out_btint_a(cell_a_out_btint_a[2][1]),
		.cell_a_out_btint_b(cell_a_out_btint_b[2][1]),
		.cell_a_out_overflow(cell_a_out_overflow[2][1]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[2][1]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[2][1]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[2][1]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[2][1]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[2][1]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[2][1]),
		.cell_s_out(cell_s_out[2][1])
	);
	CELL cell_2_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[2][2]),
		.cell_a_in_btint_b(cell_a_in_btint_b[2][2]),
		.cell_a_in_overflow(cell_a_in_overflow[2][2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[2][2]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[2][2]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[2][2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[2][2]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[2][2]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[2][2]),
		.cell_s_in(cell_s_in[2][2]),
		.cell_s_mm(cell_s_mm[2]),
		.cell_a_out_btint_a(cell_a_out_btint_a[2][2]),
		.cell_a_out_btint_b(cell_a_out_btint_b[2][2]),
		.cell_a_out_overflow(cell_a_out_overflow[2][2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[2][2]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[2][2]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[2][2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[2][2]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[2][2]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[2][2]),
		.cell_s_out(cell_s_out[2][2])
	);
	CELL cell_3_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[3][0]),
		.cell_a_in_btint_b(cell_a_in_btint_b[3][0]),
		.cell_a_in_overflow(cell_a_in_overflow[3][0]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[3][0]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[3][0]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[3][0]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[3][0]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[3][0]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[3][0]),
		.cell_s_in(cell_s_in[3][0]),
		.cell_s_mm(cell_s_mm[3]),
		.cell_a_out_btint_a(cell_a_out_btint_a[3][0]),
		.cell_a_out_btint_b(cell_a_out_btint_b[3][0]),
		.cell_a_out_overflow(cell_a_out_overflow[3][0]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[3][0]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[3][0]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[3][0]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[3][0]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[3][0]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[3][0]),
		.cell_s_out(cell_s_out[3][0])
	);
	CELL cell_3_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[3][1]),
		.cell_a_in_btint_b(cell_a_in_btint_b[3][1]),
		.cell_a_in_overflow(cell_a_in_overflow[3][1]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[3][1]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[3][1]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[3][1]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[3][1]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[3][1]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[3][1]),
		.cell_s_in(cell_s_in[3][1]),
		.cell_s_mm(cell_s_mm[3]),
		.cell_a_out_btint_a(cell_a_out_btint_a[3][1]),
		.cell_a_out_btint_b(cell_a_out_btint_b[3][1]),
		.cell_a_out_overflow(cell_a_out_overflow[3][1]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[3][1]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[3][1]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[3][1]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[3][1]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[3][1]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[3][1]),
		.cell_s_out(cell_s_out[3][1])
	);
	CELL cell_3_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[3][2]),
		.cell_a_in_btint_b(cell_a_in_btint_b[3][2]),
		.cell_a_in_overflow(cell_a_in_overflow[3][2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[3][2]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[3][2]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[3][2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[3][2]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[3][2]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[3][2]),
		.cell_s_in(cell_s_in[3][2]),
		.cell_s_mm(cell_s_mm[3]),
		.cell_a_out_btint_a(cell_a_out_btint_a[3][2]),
		.cell_a_out_btint_b(cell_a_out_btint_b[3][2]),
		.cell_a_out_overflow(cell_a_out_overflow[3][2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[3][2]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[3][2]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[3][2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[3][2]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[3][2]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[3][2]),
		.cell_s_out(cell_s_out[3][2])
	);
	CONTROLLER controller(
		.controller_clock(combined_operations_clock),
		.controller_reset(combined_operations_reset),
		.controller_m_a_btint_a0(combined_operations_m_a_btint_a[88+:8]),
		.controller_m_a_btint_b0(combined_operations_m_a_btint_b[88+:8]),
		.controller_m_a_overflow0(combined_operations_m_a_overflow[22+:2]),
		.controller_m_a_btint_a1(combined_operations_m_a_btint_a[80+:8]),
		.controller_m_a_btint_b1(combined_operations_m_a_btint_b[80+:8]),
		.controller_m_a_overflow1(combined_operations_m_a_overflow[20+:2]),
		.controller_m_a_btint_a2(combined_operations_m_a_btint_a[72+:8]),
		.controller_m_a_btint_b2(combined_operations_m_a_btint_b[72+:8]),
		.controller_m_a_overflow2(combined_operations_m_a_overflow[18+:2]),
		.controller_m_a_btint_a3(combined_operations_m_a_btint_a[64+:8]),
		.controller_m_a_btint_b3(combined_operations_m_a_btint_b[64+:8]),
		.controller_m_a_overflow3(combined_operations_m_a_overflow[16+:2]),
		.controller_m_a_btint_a4(combined_operations_m_a_btint_a[56+:8]),
		.controller_m_a_btint_b4(combined_operations_m_a_btint_b[56+:8]),
		.controller_m_a_overflow4(combined_operations_m_a_overflow[14+:2]),
		.controller_m_a_btint_a5(combined_operations_m_a_btint_a[48+:8]),
		.controller_m_a_btint_b5(combined_operations_m_a_btint_b[48+:8]),
		.controller_m_a_overflow5(combined_operations_m_a_overflow[12+:2]),
		.controller_m_a_btint_a6(combined_operations_m_a_btint_a[40+:8]),
		.controller_m_a_btint_b6(combined_operations_m_a_btint_b[40+:8]),
		.controller_m_a_overflow6(combined_operations_m_a_overflow[10+:2]),
		.controller_m_a_btint_a7(combined_operations_m_a_btint_a[32+:8]),
		.controller_m_a_btint_b7(combined_operations_m_a_btint_b[32+:8]),
		.controller_m_a_overflow7(combined_operations_m_a_overflow[8+:2]),
		.controller_m_a_btint_a8(combined_operations_m_a_btint_a[24+:8]),
		.controller_m_a_btint_b8(combined_operations_m_a_btint_b[24+:8]),
		.controller_m_a_overflow8(combined_operations_m_a_overflow[6+:2]),
		.controller_m_a_btint_a9(combined_operations_m_a_btint_a[16+:8]),
		.controller_m_a_btint_b9(combined_operations_m_a_btint_b[16+:8]),
		.controller_m_a_overflow9(combined_operations_m_a_overflow[4+:2]),
		.controller_m_a_btint_a10(combined_operations_m_a_btint_a[8+:8]),
		.controller_m_a_btint_b10(combined_operations_m_a_btint_b[8+:8]),
		.controller_m_a_overflow10(combined_operations_m_a_overflow[2+:2]),
		.controller_m_a_btint_a11(combined_operations_m_a_btint_a[0+:8]),
		.controller_m_a_btint_b11(combined_operations_m_a_btint_b[0+:8]),
		.controller_m_a_overflow11(combined_operations_m_a_overflow[0+:2]),
		.controller_m_b_btint_a0(combined_operations_m_b_btint_a[88+:8]),
		.controller_m_b_btint_b0(combined_operations_m_b_btint_b[88+:8]),
		.controller_m_b_overflow0(combined_operations_m_b_overflow[22+:2]),
		.controller_m_b_btint_a1(combined_operations_m_b_btint_a[80+:8]),
		.controller_m_b_btint_b1(combined_operations_m_b_btint_b[80+:8]),
		.controller_m_b_overflow1(combined_operations_m_b_overflow[20+:2]),
		.controller_m_b_btint_a2(combined_operations_m_b_btint_a[72+:8]),
		.controller_m_b_btint_b2(combined_operations_m_b_btint_b[72+:8]),
		.controller_m_b_overflow2(combined_operations_m_b_overflow[18+:2]),
		.controller_m_b_btint_a3(combined_operations_m_b_btint_a[64+:8]),
		.controller_m_b_btint_b3(combined_operations_m_b_btint_b[64+:8]),
		.controller_m_b_overflow3(combined_operations_m_b_overflow[16+:2]),
		.controller_m_b_btint_a4(combined_operations_m_b_btint_a[56+:8]),
		.controller_m_b_btint_b4(combined_operations_m_b_btint_b[56+:8]),
		.controller_m_b_overflow4(combined_operations_m_b_overflow[14+:2]),
		.controller_m_b_btint_a5(combined_operations_m_b_btint_a[48+:8]),
		.controller_m_b_btint_b5(combined_operations_m_b_btint_b[48+:8]),
		.controller_m_b_overflow5(combined_operations_m_b_overflow[12+:2]),
		.controller_m_b_btint_a6(combined_operations_m_b_btint_a[40+:8]),
		.controller_m_b_btint_b6(combined_operations_m_b_btint_b[40+:8]),
		.controller_m_b_overflow6(combined_operations_m_b_overflow[10+:2]),
		.controller_m_b_btint_a7(combined_operations_m_b_btint_a[32+:8]),
		.controller_m_b_btint_b7(combined_operations_m_b_btint_b[32+:8]),
		.controller_m_b_overflow7(combined_operations_m_b_overflow[8+:2]),
		.controller_m_b_btint_a8(combined_operations_m_b_btint_a[24+:8]),
		.controller_m_b_btint_b8(combined_operations_m_b_btint_b[24+:8]),
		.controller_m_b_overflow8(combined_operations_m_b_overflow[6+:2]),
		.controller_m_b_btint_a9(combined_operations_m_b_btint_a[16+:8]),
		.controller_m_b_btint_b9(combined_operations_m_b_btint_b[16+:8]),
		.controller_m_b_overflow9(combined_operations_m_b_overflow[4+:2]),
		.controller_m_b_btint_a10(combined_operations_m_b_btint_a[8+:8]),
		.controller_m_b_btint_b10(combined_operations_m_b_btint_b[8+:8]),
		.controller_m_b_overflow10(combined_operations_m_b_overflow[2+:2]),
		.controller_m_b_btint_a11(combined_operations_m_b_btint_a[0+:8]),
		.controller_m_b_btint_b11(combined_operations_m_b_btint_b[0+:8]),
		.controller_m_b_overflow11(combined_operations_m_b_overflow[0+:2]),
		.controller_v_btint_a(combined_operations_v_btint_a),
		.controller_v_btint_b(combined_operations_v_btint_b),
		.controller_v_overflow(combined_operations_v_overflow),
		.controller_op(combined_operations_op),
		.controller_a_out_btint_a0(cell_a_out_btint_a[0][0]),
		.controller_a_out_btint_b0(cell_a_out_btint_b[0][0]),
		.controller_a_out_overflow0(cell_a_out_overflow[0][0]),
		.controller_a_out_btint_a1(cell_a_out_btint_a[0][1]),
		.controller_a_out_btint_b1(cell_a_out_btint_b[0][1]),
		.controller_a_out_overflow1(cell_a_out_overflow[0][1]),
		.controller_a_out_btint_a2(cell_a_out_btint_a[0][2]),
		.controller_a_out_btint_b2(cell_a_out_btint_b[0][2]),
		.controller_a_out_overflow2(cell_a_out_overflow[0][2]),
		.controller_a_out_btint_a3(cell_a_out_btint_a[1][0]),
		.controller_a_out_btint_b3(cell_a_out_btint_b[1][0]),
		.controller_a_out_overflow3(cell_a_out_overflow[1][0]),
		.controller_a_out_btint_a4(cell_a_out_btint_a[1][1]),
		.controller_a_out_btint_b4(cell_a_out_btint_b[1][1]),
		.controller_a_out_overflow4(cell_a_out_overflow[1][1]),
		.controller_a_out_btint_a5(cell_a_out_btint_a[1][2]),
		.controller_a_out_btint_b5(cell_a_out_btint_b[1][2]),
		.controller_a_out_overflow5(cell_a_out_overflow[1][2]),
		.controller_a_out_btint_a6(cell_a_out_btint_a[2][0]),
		.controller_a_out_btint_b6(cell_a_out_btint_b[2][0]),
		.controller_a_out_overflow6(cell_a_out_overflow[2][0]),
		.controller_a_out_btint_a7(cell_a_out_btint_a[2][1]),
		.controller_a_out_btint_b7(cell_a_out_btint_b[2][1]),
		.controller_a_out_overflow7(cell_a_out_overflow[2][1]),
		.controller_a_out_btint_a8(cell_a_out_btint_a[2][2]),
		.controller_a_out_btint_b8(cell_a_out_btint_b[2][2]),
		.controller_a_out_overflow8(cell_a_out_overflow[2][2]),
		.controller_a_out_btint_a9(cell_a_out_btint_a[3][0]),
		.controller_a_out_btint_b9(cell_a_out_btint_b[3][0]),
		.controller_a_out_overflow9(cell_a_out_overflow[3][0]),
		.controller_a_out_btint_a10(cell_a_out_btint_a[3][1]),
		.controller_a_out_btint_b10(cell_a_out_btint_b[3][1]),
		.controller_a_out_overflow10(cell_a_out_overflow[3][1]),
		.controller_a_out_btint_a11(cell_a_out_btint_a[3][2]),
		.controller_a_out_btint_b11(cell_a_out_btint_b[3][2]),
		.controller_a_out_overflow11(cell_a_out_overflow[3][2]),
		.controller_c_out_u_btint_a0(cell_c_out_u_btint_a[0][0]),
		.controller_c_out_u_btint_b0(cell_c_out_u_btint_b[0][0]),
		.controller_c_out_u_overflow0(cell_c_out_u_overflow[0][0]),
		.controller_c_out_u_btint_a1(cell_c_out_u_btint_a[0][1]),
		.controller_c_out_u_btint_b1(cell_c_out_u_btint_b[0][1]),
		.controller_c_out_u_overflow1(cell_c_out_u_overflow[0][1]),
		.controller_c_out_u_btint_a2(cell_c_out_u_btint_a[0][2]),
		.controller_c_out_u_btint_b2(cell_c_out_u_btint_b[0][2]),
		.controller_c_out_u_overflow2(cell_c_out_u_overflow[0][2]),
		.controller_c_out_u_btint_a3(cell_c_out_u_btint_a[1][0]),
		.controller_c_out_u_btint_b3(cell_c_out_u_btint_b[1][0]),
		.controller_c_out_u_overflow3(cell_c_out_u_overflow[1][0]),
		.controller_c_out_u_btint_a4(cell_c_out_u_btint_a[1][1]),
		.controller_c_out_u_btint_b4(cell_c_out_u_btint_b[1][1]),
		.controller_c_out_u_overflow4(cell_c_out_u_overflow[1][1]),
		.controller_c_out_u_btint_a5(cell_c_out_u_btint_a[1][2]),
		.controller_c_out_u_btint_b5(cell_c_out_u_btint_b[1][2]),
		.controller_c_out_u_overflow5(cell_c_out_u_overflow[1][2]),
		.controller_c_out_u_btint_a6(cell_c_out_u_btint_a[2][0]),
		.controller_c_out_u_btint_b6(cell_c_out_u_btint_b[2][0]),
		.controller_c_out_u_overflow6(cell_c_out_u_overflow[2][0]),
		.controller_c_out_u_btint_a7(cell_c_out_u_btint_a[2][1]),
		.controller_c_out_u_btint_b7(cell_c_out_u_btint_b[2][1]),
		.controller_c_out_u_overflow7(cell_c_out_u_overflow[2][1]),
		.controller_c_out_u_btint_a8(cell_c_out_u_btint_a[2][2]),
		.controller_c_out_u_btint_b8(cell_c_out_u_btint_b[2][2]),
		.controller_c_out_u_overflow8(cell_c_out_u_overflow[2][2]),
		.controller_c_out_u_btint_a9(cell_c_out_u_btint_a[3][0]),
		.controller_c_out_u_btint_b9(cell_c_out_u_btint_b[3][0]),
		.controller_c_out_u_overflow9(cell_c_out_u_overflow[3][0]),
		.controller_c_out_u_btint_a10(cell_c_out_u_btint_a[3][1]),
		.controller_c_out_u_btint_b10(cell_c_out_u_btint_b[3][1]),
		.controller_c_out_u_overflow10(cell_c_out_u_overflow[3][1]),
		.controller_c_out_u_btint_a11(cell_c_out_u_btint_a[3][2]),
		.controller_c_out_u_btint_b11(cell_c_out_u_btint_b[3][2]),
		.controller_c_out_u_overflow11(cell_c_out_u_overflow[3][2]),
		.controller_c_out_d_btint_a0(cell_c_out_d_btint_a[0][0]),
		.controller_c_out_d_btint_b0(cell_c_out_d_btint_b[0][0]),
		.controller_c_out_d_overflow0(cell_c_out_d_overflow[0][0]),
		.controller_c_out_d_btint_a1(cell_c_out_d_btint_a[0][1]),
		.controller_c_out_d_btint_b1(cell_c_out_d_btint_b[0][1]),
		.controller_c_out_d_overflow1(cell_c_out_d_overflow[0][1]),
		.controller_c_out_d_btint_a2(cell_c_out_d_btint_a[0][2]),
		.controller_c_out_d_btint_b2(cell_c_out_d_btint_b[0][2]),
		.controller_c_out_d_overflow2(cell_c_out_d_overflow[0][2]),
		.controller_c_out_d_btint_a3(cell_c_out_d_btint_a[1][0]),
		.controller_c_out_d_btint_b3(cell_c_out_d_btint_b[1][0]),
		.controller_c_out_d_overflow3(cell_c_out_d_overflow[1][0]),
		.controller_c_out_d_btint_a4(cell_c_out_d_btint_a[1][1]),
		.controller_c_out_d_btint_b4(cell_c_out_d_btint_b[1][1]),
		.controller_c_out_d_overflow4(cell_c_out_d_overflow[1][1]),
		.controller_c_out_d_btint_a5(cell_c_out_d_btint_a[1][2]),
		.controller_c_out_d_btint_b5(cell_c_out_d_btint_b[1][2]),
		.controller_c_out_d_overflow5(cell_c_out_d_overflow[1][2]),
		.controller_c_out_d_btint_a6(cell_c_out_d_btint_a[2][0]),
		.controller_c_out_d_btint_b6(cell_c_out_d_btint_b[2][0]),
		.controller_c_out_d_overflow6(cell_c_out_d_overflow[2][0]),
		.controller_c_out_d_btint_a7(cell_c_out_d_btint_a[2][1]),
		.controller_c_out_d_btint_b7(cell_c_out_d_btint_b[2][1]),
		.controller_c_out_d_overflow7(cell_c_out_d_overflow[2][1]),
		.controller_c_out_d_btint_a8(cell_c_out_d_btint_a[2][2]),
		.controller_c_out_d_btint_b8(cell_c_out_d_btint_b[2][2]),
		.controller_c_out_d_overflow8(cell_c_out_d_overflow[2][2]),
		.controller_c_out_d_btint_a9(cell_c_out_d_btint_a[3][0]),
		.controller_c_out_d_btint_b9(cell_c_out_d_btint_b[3][0]),
		.controller_c_out_d_overflow9(cell_c_out_d_overflow[3][0]),
		.controller_c_out_d_btint_a10(cell_c_out_d_btint_a[3][1]),
		.controller_c_out_d_btint_b10(cell_c_out_d_btint_b[3][1]),
		.controller_c_out_d_overflow10(cell_c_out_d_overflow[3][1]),
		.controller_c_out_d_btint_a11(cell_c_out_d_btint_a[3][2]),
		.controller_c_out_d_btint_b11(cell_c_out_d_btint_b[3][2]),
		.controller_c_out_d_overflow11(cell_c_out_d_overflow[3][2]),
		.controller_s_out0(cell_s_out[0][0]),
		.controller_s_out1(cell_s_out[0][1]),
		.controller_s_out2(cell_s_out[0][2]),
		.controller_s_out3(cell_s_out[1][0]),
		.controller_s_out4(cell_s_out[1][1]),
		.controller_s_out5(cell_s_out[1][2]),
		.controller_s_out6(cell_s_out[2][0]),
		.controller_s_out7(cell_s_out[2][1]),
		.controller_s_out8(cell_s_out[2][2]),
		.controller_s_out9(cell_s_out[3][0]),
		.controller_s_out10(cell_s_out[3][1]),
		.controller_s_out11(cell_s_out[3][2]),
		.controller_a_in_btint_a0(cell_a_in_btint_a[0][0]),
		.controller_a_in_btint_b0(cell_a_in_btint_b[0][0]),
		.controller_a_in_overflow0(cell_a_in_overflow[0][0]),
		.controller_a_in_btint_a1(cell_a_in_btint_a[0][1]),
		.controller_a_in_btint_b1(cell_a_in_btint_b[0][1]),
		.controller_a_in_overflow1(cell_a_in_overflow[0][1]),
		.controller_a_in_btint_a2(cell_a_in_btint_a[0][2]),
		.controller_a_in_btint_b2(cell_a_in_btint_b[0][2]),
		.controller_a_in_overflow2(cell_a_in_overflow[0][2]),
		.controller_a_in_btint_a3(cell_a_in_btint_a[1][0]),
		.controller_a_in_btint_b3(cell_a_in_btint_b[1][0]),
		.controller_a_in_overflow3(cell_a_in_overflow[1][0]),
		.controller_a_in_btint_a4(cell_a_in_btint_a[1][1]),
		.controller_a_in_btint_b4(cell_a_in_btint_b[1][1]),
		.controller_a_in_overflow4(cell_a_in_overflow[1][1]),
		.controller_a_in_btint_a5(cell_a_in_btint_a[1][2]),
		.controller_a_in_btint_b5(cell_a_in_btint_b[1][2]),
		.controller_a_in_overflow5(cell_a_in_overflow[1][2]),
		.controller_a_in_btint_a6(cell_a_in_btint_a[2][0]),
		.controller_a_in_btint_b6(cell_a_in_btint_b[2][0]),
		.controller_a_in_overflow6(cell_a_in_overflow[2][0]),
		.controller_a_in_btint_a7(cell_a_in_btint_a[2][1]),
		.controller_a_in_btint_b7(cell_a_in_btint_b[2][1]),
		.controller_a_in_overflow7(cell_a_in_overflow[2][1]),
		.controller_a_in_btint_a8(cell_a_in_btint_a[2][2]),
		.controller_a_in_btint_b8(cell_a_in_btint_b[2][2]),
		.controller_a_in_overflow8(cell_a_in_overflow[2][2]),
		.controller_a_in_btint_a9(cell_a_in_btint_a[3][0]),
		.controller_a_in_btint_b9(cell_a_in_btint_b[3][0]),
		.controller_a_in_overflow9(cell_a_in_overflow[3][0]),
		.controller_a_in_btint_a10(cell_a_in_btint_a[3][1]),
		.controller_a_in_btint_b10(cell_a_in_btint_b[3][1]),
		.controller_a_in_overflow10(cell_a_in_overflow[3][1]),
		.controller_a_in_btint_a11(cell_a_in_btint_a[3][2]),
		.controller_a_in_btint_b11(cell_a_in_btint_b[3][2]),
		.controller_a_in_overflow11(cell_a_in_overflow[3][2]),
		.controller_c_in_u_btint_a0(cell_c_in_u_btint_a[0][0]),
		.controller_c_in_u_btint_b0(cell_c_in_u_btint_b[0][0]),
		.controller_c_in_u_overflow0(cell_c_in_u_overflow[0][0]),
		.controller_c_in_u_btint_a1(cell_c_in_u_btint_a[0][1]),
		.controller_c_in_u_btint_b1(cell_c_in_u_btint_b[0][1]),
		.controller_c_in_u_overflow1(cell_c_in_u_overflow[0][1]),
		.controller_c_in_u_btint_a2(cell_c_in_u_btint_a[0][2]),
		.controller_c_in_u_btint_b2(cell_c_in_u_btint_b[0][2]),
		.controller_c_in_u_overflow2(cell_c_in_u_overflow[0][2]),
		.controller_c_in_u_btint_a3(cell_c_in_u_btint_a[1][0]),
		.controller_c_in_u_btint_b3(cell_c_in_u_btint_b[1][0]),
		.controller_c_in_u_overflow3(cell_c_in_u_overflow[1][0]),
		.controller_c_in_u_btint_a4(cell_c_in_u_btint_a[1][1]),
		.controller_c_in_u_btint_b4(cell_c_in_u_btint_b[1][1]),
		.controller_c_in_u_overflow4(cell_c_in_u_overflow[1][1]),
		.controller_c_in_u_btint_a5(cell_c_in_u_btint_a[1][2]),
		.controller_c_in_u_btint_b5(cell_c_in_u_btint_b[1][2]),
		.controller_c_in_u_overflow5(cell_c_in_u_overflow[1][2]),
		.controller_c_in_u_btint_a6(cell_c_in_u_btint_a[2][0]),
		.controller_c_in_u_btint_b6(cell_c_in_u_btint_b[2][0]),
		.controller_c_in_u_overflow6(cell_c_in_u_overflow[2][0]),
		.controller_c_in_u_btint_a7(cell_c_in_u_btint_a[2][1]),
		.controller_c_in_u_btint_b7(cell_c_in_u_btint_b[2][1]),
		.controller_c_in_u_overflow7(cell_c_in_u_overflow[2][1]),
		.controller_c_in_u_btint_a8(cell_c_in_u_btint_a[2][2]),
		.controller_c_in_u_btint_b8(cell_c_in_u_btint_b[2][2]),
		.controller_c_in_u_overflow8(cell_c_in_u_overflow[2][2]),
		.controller_c_in_u_btint_a9(cell_c_in_u_btint_a[3][0]),
		.controller_c_in_u_btint_b9(cell_c_in_u_btint_b[3][0]),
		.controller_c_in_u_overflow9(cell_c_in_u_overflow[3][0]),
		.controller_c_in_u_btint_a10(cell_c_in_u_btint_a[3][1]),
		.controller_c_in_u_btint_b10(cell_c_in_u_btint_b[3][1]),
		.controller_c_in_u_overflow10(cell_c_in_u_overflow[3][1]),
		.controller_c_in_u_btint_a11(cell_c_in_u_btint_a[3][2]),
		.controller_c_in_u_btint_b11(cell_c_in_u_btint_b[3][2]),
		.controller_c_in_u_overflow11(cell_c_in_u_overflow[3][2]),
		.controller_c_in_d_btint_a0(cell_c_in_d_btint_a[0][0]),
		.controller_c_in_d_btint_b0(cell_c_in_d_btint_b[0][0]),
		.controller_c_in_d_overflow0(cell_c_in_d_overflow[0][0]),
		.controller_c_in_d_btint_a1(cell_c_in_d_btint_a[0][1]),
		.controller_c_in_d_btint_b1(cell_c_in_d_btint_b[0][1]),
		.controller_c_in_d_overflow1(cell_c_in_d_overflow[0][1]),
		.controller_c_in_d_btint_a2(cell_c_in_d_btint_a[0][2]),
		.controller_c_in_d_btint_b2(cell_c_in_d_btint_b[0][2]),
		.controller_c_in_d_overflow2(cell_c_in_d_overflow[0][2]),
		.controller_c_in_d_btint_a3(cell_c_in_d_btint_a[1][0]),
		.controller_c_in_d_btint_b3(cell_c_in_d_btint_b[1][0]),
		.controller_c_in_d_overflow3(cell_c_in_d_overflow[1][0]),
		.controller_c_in_d_btint_a4(cell_c_in_d_btint_a[1][1]),
		.controller_c_in_d_btint_b4(cell_c_in_d_btint_b[1][1]),
		.controller_c_in_d_overflow4(cell_c_in_d_overflow[1][1]),
		.controller_c_in_d_btint_a5(cell_c_in_d_btint_a[1][2]),
		.controller_c_in_d_btint_b5(cell_c_in_d_btint_b[1][2]),
		.controller_c_in_d_overflow5(cell_c_in_d_overflow[1][2]),
		.controller_c_in_d_btint_a6(cell_c_in_d_btint_a[2][0]),
		.controller_c_in_d_btint_b6(cell_c_in_d_btint_b[2][0]),
		.controller_c_in_d_overflow6(cell_c_in_d_overflow[2][0]),
		.controller_c_in_d_btint_a7(cell_c_in_d_btint_a[2][1]),
		.controller_c_in_d_btint_b7(cell_c_in_d_btint_b[2][1]),
		.controller_c_in_d_overflow7(cell_c_in_d_overflow[2][1]),
		.controller_c_in_d_btint_a8(cell_c_in_d_btint_a[2][2]),
		.controller_c_in_d_btint_b8(cell_c_in_d_btint_b[2][2]),
		.controller_c_in_d_overflow8(cell_c_in_d_overflow[2][2]),
		.controller_c_in_d_btint_a9(cell_c_in_d_btint_a[3][0]),
		.controller_c_in_d_btint_b9(cell_c_in_d_btint_b[3][0]),
		.controller_c_in_d_overflow9(cell_c_in_d_overflow[3][0]),
		.controller_c_in_d_btint_a10(cell_c_in_d_btint_a[3][1]),
		.controller_c_in_d_btint_b10(cell_c_in_d_btint_b[3][1]),
		.controller_c_in_d_overflow10(cell_c_in_d_overflow[3][1]),
		.controller_c_in_d_btint_a11(cell_c_in_d_btint_a[3][2]),
		.controller_c_in_d_btint_b11(cell_c_in_d_btint_b[3][2]),
		.controller_c_in_d_overflow11(cell_c_in_d_overflow[3][2]),
		.controller_s_in0(cell_s_in[0][0]),
		.controller_s_in1(cell_s_in[0][1]),
		.controller_s_in2(cell_s_in[0][2]),
		.controller_s_in3(cell_s_in[1][0]),
		.controller_s_in4(cell_s_in[1][1]),
		.controller_s_in5(cell_s_in[1][2]),
		.controller_s_in6(cell_s_in[2][0]),
		.controller_s_in7(cell_s_in[2][1]),
		.controller_s_in8(cell_s_in[2][2]),
		.controller_s_in9(cell_s_in[3][0]),
		.controller_s_in10(cell_s_in[3][1]),
		.controller_s_in11(cell_s_in[3][2]),
		.controller_s_mm(cell_s_mm),
		.controller_done(combined_operations_done),
		.controller_result_u_btint_a0(combined_operations_result_u_btint_a[120+:8]),
		.controller_result_u_btint_b0(combined_operations_result_u_btint_b[120+:8]),
		.controller_result_u_overflow0(combined_operations_result_u_overflow[30+:2]),
		.controller_result_u_btint_a1(combined_operations_result_u_btint_a[112+:8]),
		.controller_result_u_btint_b1(combined_operations_result_u_btint_b[112+:8]),
		.controller_result_u_overflow1(combined_operations_result_u_overflow[28+:2]),
		.controller_result_u_btint_a2(combined_operations_result_u_btint_a[104+:8]),
		.controller_result_u_btint_b2(combined_operations_result_u_btint_b[104+:8]),
		.controller_result_u_overflow2(combined_operations_result_u_overflow[26+:2]),
		.controller_result_u_btint_a3(combined_operations_result_u_btint_a[96+:8]),
		.controller_result_u_btint_b3(combined_operations_result_u_btint_b[96+:8]),
		.controller_result_u_overflow3(combined_operations_result_u_overflow[24+:2]),
		.controller_result_u_btint_a4(combined_operations_result_u_btint_a[88+:8]),
		.controller_result_u_btint_b4(combined_operations_result_u_btint_b[88+:8]),
		.controller_result_u_overflow4(combined_operations_result_u_overflow[22+:2]),
		.controller_result_u_btint_a5(combined_operations_result_u_btint_a[80+:8]),
		.controller_result_u_btint_b5(combined_operations_result_u_btint_b[80+:8]),
		.controller_result_u_overflow5(combined_operations_result_u_overflow[20+:2]),
		.controller_result_u_btint_a6(combined_operations_result_u_btint_a[72+:8]),
		.controller_result_u_btint_b6(combined_operations_result_u_btint_b[72+:8]),
		.controller_result_u_overflow6(combined_operations_result_u_overflow[18+:2]),
		.controller_result_u_btint_a7(combined_operations_result_u_btint_a[64+:8]),
		.controller_result_u_btint_b7(combined_operations_result_u_btint_b[64+:8]),
		.controller_result_u_overflow7(combined_operations_result_u_overflow[16+:2]),
		.controller_result_u_btint_a8(combined_operations_result_u_btint_a[56+:8]),
		.controller_result_u_btint_b8(combined_operations_result_u_btint_b[56+:8]),
		.controller_result_u_overflow8(combined_operations_result_u_overflow[14+:2]),
		.controller_result_u_btint_a9(combined_operations_result_u_btint_a[48+:8]),
		.controller_result_u_btint_b9(combined_operations_result_u_btint_b[48+:8]),
		.controller_result_u_overflow9(combined_operations_result_u_overflow[12+:2]),
		.controller_result_u_btint_a10(combined_operations_result_u_btint_a[40+:8]),
		.controller_result_u_btint_b10(combined_operations_result_u_btint_b[40+:8]),
		.controller_result_u_overflow10(combined_operations_result_u_overflow[10+:2]),
		.controller_result_u_btint_a11(combined_operations_result_u_btint_a[32+:8]),
		.controller_result_u_btint_b11(combined_operations_result_u_btint_b[32+:8]),
		.controller_result_u_overflow11(combined_operations_result_u_overflow[8+:2]),
		.controller_result_u_btint_a12(combined_operations_result_u_btint_a[24+:8]),
		.controller_result_u_btint_b12(combined_operations_result_u_btint_b[24+:8]),
		.controller_result_u_overflow12(combined_operations_result_u_overflow[6+:2]),
		.controller_result_u_btint_a13(combined_operations_result_u_btint_a[16+:8]),
		.controller_result_u_btint_b13(combined_operations_result_u_btint_b[16+:8]),
		.controller_result_u_overflow13(combined_operations_result_u_overflow[4+:2]),
		.controller_result_u_btint_a14(combined_operations_result_u_btint_a[8+:8]),
		.controller_result_u_btint_b14(combined_operations_result_u_btint_b[8+:8]),
		.controller_result_u_overflow14(combined_operations_result_u_overflow[2+:2]),
		.controller_result_u_btint_a15(combined_operations_result_u_btint_a[0+:8]),
		.controller_result_u_btint_b15(combined_operations_result_u_btint_b[0+:8]),
		.controller_result_u_overflow15(combined_operations_result_u_overflow[0+:2]),
		.controller_result_d_btint_a0(combined_operations_result_d_btint_a[120+:8]),
		.controller_result_d_btint_b0(combined_operations_result_d_btint_b[120+:8]),
		.controller_result_d_overflow0(combined_operations_result_d_overflow[30+:2]),
		.controller_result_d_btint_a1(combined_operations_result_d_btint_a[112+:8]),
		.controller_result_d_btint_b1(combined_operations_result_d_btint_b[112+:8]),
		.controller_result_d_overflow1(combined_operations_result_d_overflow[28+:2]),
		.controller_result_d_btint_a2(combined_operations_result_d_btint_a[104+:8]),
		.controller_result_d_btint_b2(combined_operations_result_d_btint_b[104+:8]),
		.controller_result_d_overflow2(combined_operations_result_d_overflow[26+:2]),
		.controller_result_d_btint_a3(combined_operations_result_d_btint_a[96+:8]),
		.controller_result_d_btint_b3(combined_operations_result_d_btint_b[96+:8]),
		.controller_result_d_overflow3(combined_operations_result_d_overflow[24+:2]),
		.controller_result_d_btint_a4(combined_operations_result_d_btint_a[88+:8]),
		.controller_result_d_btint_b4(combined_operations_result_d_btint_b[88+:8]),
		.controller_result_d_overflow4(combined_operations_result_d_overflow[22+:2]),
		.controller_result_d_btint_a5(combined_operations_result_d_btint_a[80+:8]),
		.controller_result_d_btint_b5(combined_operations_result_d_btint_b[80+:8]),
		.controller_result_d_overflow5(combined_operations_result_d_overflow[20+:2]),
		.controller_result_d_btint_a6(combined_operations_result_d_btint_a[72+:8]),
		.controller_result_d_btint_b6(combined_operations_result_d_btint_b[72+:8]),
		.controller_result_d_overflow6(combined_operations_result_d_overflow[18+:2]),
		.controller_result_d_btint_a7(combined_operations_result_d_btint_a[64+:8]),
		.controller_result_d_btint_b7(combined_operations_result_d_btint_b[64+:8]),
		.controller_result_d_overflow7(combined_operations_result_d_overflow[16+:2]),
		.controller_result_d_btint_a8(combined_operations_result_d_btint_a[56+:8]),
		.controller_result_d_btint_b8(combined_operations_result_d_btint_b[56+:8]),
		.controller_result_d_overflow8(combined_operations_result_d_overflow[14+:2]),
		.controller_result_d_btint_a9(combined_operations_result_d_btint_a[48+:8]),
		.controller_result_d_btint_b9(combined_operations_result_d_btint_b[48+:8]),
		.controller_result_d_overflow9(combined_operations_result_d_overflow[12+:2]),
		.controller_result_d_btint_a10(combined_operations_result_d_btint_a[40+:8]),
		.controller_result_d_btint_b10(combined_operations_result_d_btint_b[40+:8]),
		.controller_result_d_overflow10(combined_operations_result_d_overflow[10+:2]),
		.controller_result_d_btint_a11(combined_operations_result_d_btint_a[32+:8]),
		.controller_result_d_btint_b11(combined_operations_result_d_btint_b[32+:8]),
		.controller_result_d_overflow11(combined_operations_result_d_overflow[8+:2]),
		.controller_result_d_btint_a12(combined_operations_result_d_btint_a[24+:8]),
		.controller_result_d_btint_b12(combined_operations_result_d_btint_b[24+:8]),
		.controller_result_d_overflow12(combined_operations_result_d_overflow[6+:2]),
		.controller_result_d_btint_a13(combined_operations_result_d_btint_a[16+:8]),
		.controller_result_d_btint_b13(combined_operations_result_d_btint_b[16+:8]),
		.controller_result_d_overflow13(combined_operations_result_d_overflow[4+:2]),
		.controller_result_d_btint_a14(combined_operations_result_d_btint_a[8+:8]),
		.controller_result_d_btint_b14(combined_operations_result_d_btint_b[8+:8]),
		.controller_result_d_overflow14(combined_operations_result_d_overflow[2+:2]),
		.controller_result_d_btint_a15(combined_operations_result_d_btint_a[0+:8]),
		.controller_result_d_btint_b15(combined_operations_result_d_btint_b[0+:8]),
		.controller_result_d_overflow15(combined_operations_result_d_overflow[0+:2])
	);
endmodule
module CELL (
	cell_clock,
	cell_reset,
	cell_op,
	cell_a_in_btint_a,
	cell_a_in_btint_b,
	cell_a_in_overflow,
	cell_c_in_u_btint_a,
	cell_c_in_u_btint_b,
	cell_c_in_u_overflow,
	cell_c_in_d_btint_a,
	cell_c_in_d_btint_b,
	cell_c_in_d_overflow,
	cell_s_in,
	cell_s_mm,
	cell_a_out_btint_a,
	cell_a_out_btint_b,
	cell_a_out_overflow,
	cell_c_out_u_btint_a,
	cell_c_out_u_btint_b,
	cell_c_out_u_overflow,
	cell_c_out_d_btint_a,
	cell_c_out_d_btint_b,
	cell_c_out_d_overflow,
	cell_s_out
);
	reg _sv2v_0;
	input wire cell_clock;
	input wire cell_reset;
	input wire [1:0] cell_op;
	input wire [7:0] cell_a_in_btint_a;
	input wire [7:0] cell_a_in_btint_b;
	input wire [1:0] cell_a_in_overflow;
	input wire [7:0] cell_c_in_u_btint_a;
	input wire [7:0] cell_c_in_u_btint_b;
	input wire [1:0] cell_c_in_u_overflow;
	input wire [7:0] cell_c_in_d_btint_a;
	input wire [7:0] cell_c_in_d_btint_b;
	input wire [1:0] cell_c_in_d_overflow;
	input wire cell_s_in;
	input wire cell_s_mm;
	output reg [7:0] cell_a_out_btint_a;
	output reg [7:0] cell_a_out_btint_b;
	output reg [1:0] cell_a_out_overflow;
	output reg [7:0] cell_c_out_u_btint_a;
	output reg [7:0] cell_c_out_u_btint_b;
	output reg [1:0] cell_c_out_u_overflow;
	output reg [7:0] cell_c_out_d_btint_a;
	output reg [7:0] cell_c_out_d_btint_b;
	output reg [1:0] cell_c_out_d_overflow;
	output reg cell_s_out;
	reg [15:0] adder_subtractor_a_btint_a;
	reg [15:0] adder_subtractor_a_btint_b;
	reg [1:0] adder_subtractor_a_overflow;
	reg [15:0] adder_subtractor_b_btint_a;
	reg [15:0] adder_subtractor_b_btint_b;
	reg [1:0] adder_subtractor_b_overflow;
	reg adder_subtractor_subtract;
	wire [16:0] adder_subtractor_sum_btint_a;
	wire [16:0] adder_subtractor_sum_btint_b;
	wire [1:0] adder_subtractor_sum_overflow;
	reg [0:3] multiplier_reset;
	reg [31:0] multiplier_a_btint_a;
	reg [31:0] multiplier_a_btint_b;
	reg [7:0] multiplier_a_overflow;
	reg [31:0] multiplier_b_btint_a;
	reg [31:0] multiplier_b_btint_b;
	reg [7:0] multiplier_b_overflow;
	wire [15:0] multiplier_product_btint_a [0:3];
	wire [15:0] multiplier_product_btint_b [0:3];
	wire [1:0] multiplier_product_overflow [0:3];
	reg [7:0] cell_a_out_btint_a_next;
	reg [7:0] cell_a_out_btint_b_next;
	reg [1:0] cell_a_out_overflow_next;
	reg [7:0] cell_c_out_u_btint_a_next;
	reg [7:0] cell_c_out_u_btint_b_next;
	reg [1:0] cell_c_out_u_overflow_next;
	reg [7:0] cell_c_out_d_btint_a_next;
	reg [7:0] cell_c_out_d_btint_b_next;
	reg [1:0] cell_c_out_d_overflow_next;
	reg cell_s_out_next;
	reg [63:0] product_btint_a;
	reg [63:0] product_btint_a_next;
	reg [63:0] product_btint_b;
	reg [63:0] product_btint_b_next;
	reg [7:0] product_overflow;
	reg [7:0] product_overflow_next;
	reg [7:0] state_u_btint_a;
	reg [7:0] state_u_btint_a_next;
	reg [7:0] state_u_btint_b;
	reg [7:0] state_u_btint_b_next;
	reg [1:0] state_u_overflow;
	reg [1:0] state_u_overflow_next;
	reg [7:0] state_d_btint_a;
	reg [7:0] state_d_btint_a_next;
	reg [7:0] state_d_btint_b;
	reg [7:0] state_d_btint_b_next;
	reg [1:0] state_d_overflow;
	reg [1:0] state_d_overflow_next;
	reg [7:0] zero_btint_a;
	reg [7:0] zero_btint_a_next;
	reg [7:0] zero_btint_b;
	reg [7:0] zero_btint_b_next;
	reg [1:0] zero_overflow;
	reg [1:0] zero_overflow_next;
	reg [0:3] multiplier_reset_next;
	reg [31:0] multiplier_a_btint_a_next;
	reg [31:0] multiplier_a_btint_b_next;
	reg [7:0] multiplier_a_overflow_next;
	reg [31:0] multiplier_b_btint_a_next;
	reg [31:0] multiplier_b_btint_b_next;
	reg [7:0] multiplier_b_overflow_next;
	reg [15:0] adder_subtractor_a_btint_a_next;
	reg [15:0] adder_subtractor_a_btint_b_next;
	reg [1:0] adder_subtractor_a_overflow_next;
	reg [15:0] adder_subtractor_b_btint_a_next;
	reg [15:0] adder_subtractor_b_btint_b_next;
	reg [1:0] adder_subtractor_b_overflow_next;
	reg adder_subtractor_subtract_next;
	task compute_func;
		integer TMP_0_value;
		reg [7:0] output_btint_a;
		reg [7:0] output_btint_b;
		reg [1:0] output_overflow;
		integer output_index;
		integer output_value;
		reg [7:0] output_btint_a_1;
		reg [7:0] output_btint_b_1;
		reg [1:0] output_overflow_1;
		reg [7:0] TMP_2_btint_a;
		reg [7:0] TMP_2_btint_b;
		reg [1:0] TMP_2_overflow;
		reg TMP_0_isNegative;
		integer TMP_0_i;
		reg [7:0] TMP_1_btint_a;
		reg [7:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		reg [16:0] sum_btint_a;
		reg [16:0] sum_btint_b;
		reg [1:0] sum_overflow;
		reg [7:0] c_in_u_btint_a;
		reg [7:0] c_in_u_btint_b;
		reg [1:0] c_in_u_overflow;
		reg [7:0] a_in_btint_a;
		reg [7:0] a_in_btint_b;
		reg [1:0] a_in_overflow;
		reg [15:0] output_btint_a_2;
		reg [15:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer TMP_7;
		integer output_index_1;
		integer product_msd;
		integer TMP_9;
		integer product_msd_1_1;
		integer TMP_11;
		integer product_msd_2_1;
		integer output_index_2;
		integer output_value_1;
		reg [15:0] output_btint_a_3;
		reg [15:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg [15:0] TMP_13_btint_a;
		reg [15:0] TMP_13_btint_b;
		reg [1:0] TMP_13_overflow;
		reg [15:0] TMP_14_btint_a;
		reg [15:0] TMP_14_btint_b;
		reg [1:0] TMP_14_overflow;
		reg [15:0] TMP_15_btint_a;
		reg [15:0] TMP_15_btint_b;
		reg [1:0] TMP_15_overflow;
		reg [15:0] TMP_6_btint_a;
		reg [15:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		integer TMP_6_from;
		integer TMP_6_to;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		reg [7:0] TMP_16_btint_a;
		reg [7:0] TMP_16_btint_b;
		reg [1:0] TMP_16_overflow;
		integer TMP_21;
		integer c_in_u_output_v;
		integer TMP_22;
		integer c_in_u_index;
		reg [7:0] output_btint_a_5;
		reg [7:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
		integer TMP_24;
		integer output_index_3;
		integer output_index_4;
		integer output_value_2;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		reg [7:0] TMP_25_btint_a;
		reg [7:0] TMP_25_btint_b;
		reg [1:0] TMP_25_overflow;
		integer TMP_27;
		integer output_value_3;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg [7:0] TMP_28_btint_a;
		reg [7:0] TMP_28_btint_b;
		reg [1:0] TMP_28_overflow;
		reg [7:0] TMP_23_btint_a;
		reg [7:0] TMP_23_btint_b;
		reg [1:0] TMP_23_overflow;
		integer TMP_34;
		integer a_in_output_v;
		integer a_in_index;
		integer TMP_35;
		integer output_v_1;
		integer index;
		reg [16:0] output_btint_a_8;
		reg [16:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		integer TMP_42;
		integer output_index_5;
		integer sum_msd;
		integer TMP_44;
		integer sum_msd_1_1;
		integer TMP_46;
		integer sum_msd_2_1;
		integer output_index_6;
		integer output_value_4;
		reg [16:0] output_btint_a_9;
		reg [16:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg [16:0] TMP_48_btint_a;
		reg [16:0] TMP_48_btint_b;
		reg [1:0] TMP_48_overflow;
		reg [16:0] TMP_49_btint_a;
		reg [16:0] TMP_49_btint_b;
		reg [1:0] TMP_49_overflow;
		reg [16:0] TMP_50_btint_a;
		reg [16:0] TMP_50_btint_b;
		reg [1:0] TMP_50_overflow;
		reg [16:0] TMP_41_btint_a;
		reg [16:0] TMP_41_btint_b;
		reg [1:0] TMP_41_overflow;
		integer TMP_41_from;
		integer TMP_41_to;
		reg [7:0] output_btint_a_10;
		reg [7:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
		reg [7:0] TMP_51_btint_a;
		reg [7:0] TMP_51_btint_b;
		reg [1:0] TMP_51_overflow;
		reg [7:0] output_btint_a_11;
		reg [7:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg [7:0] input_btint_a;
		reg [7:0] input_btint_b;
		reg [1:0] input_overflow;
		reg [7:0] low_btint_a;
		reg [7:0] low_btint_b;
		reg [1:0] low_overflow;
		reg [15:0] output_btint_a_12;
		reg [15:0] output_btint_b_12;
		reg [1:0] output_overflow_12;
		reg [15:0] TMP_57_btint_a;
		reg [15:0] TMP_57_btint_b;
		reg [1:0] TMP_57_overflow;
		begin
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			TMP_7 = 0;
			output_index_1 = 0;
			product_msd = 0;
			TMP_9 = 0;
			product_msd_1_1 = 0;
			TMP_11 = 0;
			product_msd_2_1 = 0;
			output_index_2 = 0;
			output_value_1 = 0;
			output_btint_a_3 = 0;
			output_btint_b_3 = 0;
			output_overflow_3 = 0;
			TMP_13_btint_a = 0;
			TMP_13_btint_b = 0;
			TMP_13_overflow = 0;
			TMP_14_btint_a = 0;
			TMP_14_btint_b = 0;
			TMP_14_overflow = 0;
			TMP_15_btint_a = 0;
			TMP_15_btint_b = 0;
			TMP_15_overflow = 0;
			TMP_6_btint_a = 0;
			TMP_6_btint_b = 0;
			TMP_6_overflow = 0;
			TMP_6_from = 0;
			TMP_6_to = 0;
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			TMP_16_btint_a = 0;
			TMP_16_btint_b = 0;
			TMP_16_overflow = 0;
			TMP_21 = 0;
			c_in_u_output_v = 0;
			TMP_22 = 0;
			c_in_u_index = 0;
			output_btint_a_5 = 0;
			output_btint_b_5 = 0;
			output_overflow_5 = 0;
			TMP_24 = 0;
			output_index_3 = 0;
			output_index_4 = 0;
			output_value_2 = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			TMP_25_btint_a = 0;
			TMP_25_btint_b = 0;
			TMP_25_overflow = 0;
			TMP_27 = 0;
			output_value_3 = 0;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			TMP_28_btint_a = 0;
			TMP_28_btint_b = 0;
			TMP_28_overflow = 0;
			TMP_23_btint_a = 0;
			TMP_23_btint_b = 0;
			TMP_23_overflow = 0;
			TMP_34 = 0;
			a_in_output_v = 0;
			a_in_index = 0;
			TMP_35 = 0;
			output_v_1 = 0;
			index = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			TMP_42 = 0;
			output_index_5 = 0;
			sum_msd = 0;
			TMP_44 = 0;
			sum_msd_1_1 = 0;
			TMP_46 = 0;
			sum_msd_2_1 = 0;
			output_index_6 = 0;
			output_value_4 = 0;
			output_btint_a_9 = 0;
			output_btint_b_9 = 0;
			output_overflow_9 = 0;
			TMP_48_btint_a = 0;
			TMP_48_btint_b = 0;
			TMP_48_overflow = 0;
			TMP_49_btint_a = 0;
			TMP_49_btint_b = 0;
			TMP_49_overflow = 0;
			TMP_50_btint_a = 0;
			TMP_50_btint_b = 0;
			TMP_50_overflow = 0;
			TMP_41_btint_a = 0;
			TMP_41_btint_b = 0;
			TMP_41_overflow = 0;
			TMP_41_from = 0;
			TMP_41_to = 0;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			TMP_51_btint_a = 0;
			TMP_51_btint_b = 0;
			TMP_51_overflow = 0;
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
			input_btint_a = 0;
			input_btint_b = 0;
			input_overflow = 0;
			low_btint_a = 0;
			low_btint_b = 0;
			low_overflow = 0;
			output_btint_a_12 = 0;
			output_btint_b_12 = 0;
			output_overflow_12 = 0;
			TMP_57_btint_a = 0;
			TMP_57_btint_b = 0;
			TMP_57_overflow = 0;
			adder_subtractor_a_btint_a_next = adder_subtractor_a_btint_a;
			adder_subtractor_a_btint_b_next = adder_subtractor_a_btint_b;
			adder_subtractor_a_overflow_next = adder_subtractor_a_overflow;
			adder_subtractor_b_btint_a_next = adder_subtractor_b_btint_a;
			adder_subtractor_b_btint_b_next = adder_subtractor_b_btint_b;
			adder_subtractor_b_overflow_next = adder_subtractor_b_overflow;
			adder_subtractor_subtract_next = adder_subtractor_subtract;
			cell_a_out_btint_a_next = cell_a_out_btint_a;
			cell_a_out_btint_b_next = cell_a_out_btint_b;
			cell_a_out_overflow_next = cell_a_out_overflow;
			cell_c_out_d_btint_a_next = cell_c_out_d_btint_a;
			cell_c_out_d_btint_b_next = cell_c_out_d_btint_b;
			cell_c_out_d_overflow_next = cell_c_out_d_overflow;
			cell_c_out_u_btint_a_next = cell_c_out_u_btint_a;
			cell_c_out_u_btint_b_next = cell_c_out_u_btint_b;
			cell_c_out_u_overflow_next = cell_c_out_u_overflow;
			cell_s_out_next = cell_s_out;
			multiplier_a_btint_a_next = multiplier_a_btint_a;
			multiplier_a_btint_b_next = multiplier_a_btint_b;
			multiplier_a_overflow_next = multiplier_a_overflow;
			multiplier_b_btint_a_next = multiplier_b_btint_a;
			multiplier_b_btint_b_next = multiplier_b_btint_b;
			multiplier_b_overflow_next = multiplier_b_overflow;
			multiplier_reset_next = multiplier_reset;
			product_btint_a_next = product_btint_a;
			product_btint_b_next = product_btint_b;
			product_overflow_next = product_overflow;
			state_d_btint_a_next = state_d_btint_a;
			state_d_btint_b_next = state_d_btint_b;
			state_d_overflow_next = state_d_overflow;
			state_u_btint_a_next = state_u_btint_a;
			state_u_btint_b_next = state_u_btint_b;
			state_u_overflow_next = state_u_overflow;
			zero_btint_a_next = zero_btint_a;
			zero_btint_b_next = zero_btint_b;
			zero_overflow_next = zero_overflow;
			sum_btint_a = adder_subtractor_sum_btint_a;
			sum_btint_b = adder_subtractor_sum_btint_b;
			sum_overflow = adder_subtractor_sum_overflow;
			begin : sv2v_autoblock_1
				integer i_1;
				for (i_1 = 0; i_1 < 4; i_1 = i_1 + 1)
					begin
						product_btint_a_next[(3 - i_1) * 16+:16] = multiplier_product_btint_a[i_1];
						product_btint_b_next[(3 - i_1) * 16+:16] = multiplier_product_btint_b[i_1];
						product_overflow_next[(3 - i_1) * 2+:2] = multiplier_product_overflow[i_1];
					end
			end
			c_in_u_btint_a = cell_c_in_u_btint_a;
			c_in_u_btint_b = cell_c_in_u_btint_b;
			c_in_u_overflow = cell_c_in_u_overflow;
			a_in_btint_a = cell_a_in_btint_a;
			a_in_btint_b = cell_a_in_btint_b;
			a_in_overflow = cell_a_in_overflow;
			cell_a_out_btint_a_next = cell_a_in_btint_a;
			cell_a_out_btint_b_next = cell_a_in_btint_b;
			cell_a_out_overflow_next = cell_a_in_overflow;
			cell_s_out_next = cell_s_in;
			if (cell_op == 0) begin
				if (cell_s_mm) begin
					if (cell_s_in) begin
						state_u_btint_a_next = cell_c_in_u_btint_a;
						state_u_btint_b_next = cell_c_in_u_btint_b;
						state_u_overflow_next = cell_c_in_u_overflow;
						multiplier_reset_next[0] = 0;
						multiplier_a_btint_a_next[24+:8] = cell_c_in_d_btint_a;
						multiplier_a_btint_b_next[24+:8] = cell_c_in_d_btint_b;
						multiplier_a_overflow_next[6+:2] = cell_c_in_d_overflow;
						multiplier_b_btint_a_next[24+:8] = cell_a_in_btint_a;
						multiplier_b_btint_b_next[24+:8] = cell_a_in_btint_b;
						multiplier_b_overflow_next[6+:2] = cell_a_in_overflow;
						output_btint_a_2 = 0;
						output_btint_b_2 = 0;
						output_overflow_2 = 0;
						output_btint_a_2[0] = product_btint_a_next[48+:16];
						output_btint_b_2[0] = product_btint_b_next[48+:16];
						output_overflow_2[0] = product_overflow_next[6+:2];
						output_index_1 = 8;
						TMP_7 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
						product_msd = TMP_7;
						output_index_1 = 7;
						TMP_9 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
						product_msd_1_1 = TMP_9;
						output_index_1 = 6;
						TMP_11 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
						product_msd_2_1 = TMP_11;
						case (product_msd)
							-1:
								if (product_msd_1_1 == 1) begin
									product_msd = 0;
									product_msd_1_1 = -2'sd1;
								end
								else if ((product_msd_1_1 == 0) && (product_msd_2_1 == 1)) begin
									product_msd = 0;
									product_msd_2_1 = -2'sd1;
									product_msd_1_1 = product_msd_2_1;
								end
							1:
								if (product_msd_1_1 == -2'sd1) begin
									product_msd = 0;
									product_msd_1_1 = 1;
								end
								else if ((product_msd_1_1 == 0) && (product_msd_2_1 == -2'sd1)) begin
									product_msd = 0;
									product_msd_2_1 = 1;
									product_msd_1_1 = product_msd_2_1;
								end
						endcase
						output_index_2 = 8;
						output_value_1 = product_msd;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (output_value_1)
							-1: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 0;
							end
							0: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 1;
							end
							1: begin
								output_btint_a_3[output_index_2] = 1;
								output_btint_b_3[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_13_btint_a = output_btint_a_3;
						TMP_13_btint_b = output_btint_b_3;
						TMP_13_overflow = output_overflow_3;
						output_btint_a_2 = TMP_13_btint_a;
						output_btint_b_2 = TMP_13_btint_b;
						output_overflow_2 = TMP_13_overflow;
						output_index_2 = 7;
						output_value_1 = product_msd_1_1;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (output_value_1)
							-1: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 0;
							end
							0: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 1;
							end
							1: begin
								output_btint_a_3[output_index_2] = 1;
								output_btint_b_3[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_14_btint_a = output_btint_a_3;
						TMP_14_btint_b = output_btint_b_3;
						TMP_14_overflow = output_overflow_3;
						output_btint_a_2 = TMP_14_btint_a;
						output_btint_b_2 = TMP_14_btint_b;
						output_overflow_2 = TMP_14_overflow;
						output_index_2 = 6;
						output_value_1 = product_msd_2_1;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (output_value_1)
							-1: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 0;
							end
							0: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 1;
							end
							1: begin
								output_btint_a_3[output_index_2] = 1;
								output_btint_b_3[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_15_btint_a = output_btint_a_3;
						TMP_15_btint_b = output_btint_b_3;
						TMP_15_overflow = output_overflow_3;
						output_btint_a_2 = TMP_15_btint_a;
						output_btint_b_2 = TMP_15_btint_b;
						output_overflow_2 = TMP_15_overflow;
						TMP_6_btint_a = output_btint_a_2;
						TMP_6_btint_b = output_btint_b_2;
						TMP_6_overflow = output_overflow_2;
						TMP_6_from = 15;
						TMP_6_to = 0;
						output_btint_a_4 = 0;
						output_btint_b_4 = 0;
						output_overflow_4 = 0;
						output_btint_a_4 = TMP_6_btint_a[TMP_6_to+:8];
						output_btint_b_4 = TMP_6_btint_b[TMP_6_to+:8];
						output_overflow_4 = TMP_6_overflow;
						TMP_16_btint_a = output_btint_a_4;
						TMP_16_btint_b = output_btint_b_4;
						TMP_16_overflow = output_overflow_4;
						state_d_btint_a_next = TMP_16_btint_a;
						state_d_btint_b_next = TMP_16_btint_b;
						state_d_overflow_next = TMP_16_overflow;
						cell_c_out_u_btint_a_next = cell_c_in_u_btint_a;
						cell_c_out_u_btint_b_next = cell_c_in_u_btint_b;
						cell_c_out_u_overflow_next = cell_c_in_u_overflow;
						output_btint_a_2 = 0;
						output_btint_b_2 = 0;
						output_overflow_2 = 0;
						output_btint_a_2[0] = product_btint_a_next[48+:16];
						output_btint_b_2[0] = product_btint_b_next[48+:16];
						output_overflow_2[0] = product_overflow_next[6+:2];
						output_index_1 = 8;
						TMP_7 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
						product_msd = TMP_7;
						output_index_1 = 7;
						TMP_9 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
						product_msd_1_1 = TMP_9;
						output_index_1 = 6;
						TMP_11 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
						product_msd_2_1 = TMP_11;
						case (product_msd)
							-1:
								if (product_msd_1_1 == 1) begin
									product_msd = 0;
									product_msd_1_1 = -2'sd1;
								end
								else if ((product_msd_1_1 == 0) && (product_msd_2_1 == 1)) begin
									product_msd = 0;
									product_msd_2_1 = -2'sd1;
									product_msd_1_1 = product_msd_2_1;
								end
							1:
								if (product_msd_1_1 == -2'sd1) begin
									product_msd = 0;
									product_msd_1_1 = 1;
								end
								else if ((product_msd_1_1 == 0) && (product_msd_2_1 == -2'sd1)) begin
									product_msd = 0;
									product_msd_2_1 = 1;
									product_msd_1_1 = product_msd_2_1;
								end
						endcase
						output_index_2 = 8;
						output_value_1 = product_msd;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (output_value_1)
							-1: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 0;
							end
							0: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 1;
							end
							1: begin
								output_btint_a_3[output_index_2] = 1;
								output_btint_b_3[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_13_btint_a = output_btint_a_3;
						TMP_13_btint_b = output_btint_b_3;
						TMP_13_overflow = output_overflow_3;
						output_btint_a_2 = TMP_13_btint_a;
						output_btint_b_2 = TMP_13_btint_b;
						output_overflow_2 = TMP_13_overflow;
						output_index_2 = 7;
						output_value_1 = product_msd_1_1;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (output_value_1)
							-1: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 0;
							end
							0: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 1;
							end
							1: begin
								output_btint_a_3[output_index_2] = 1;
								output_btint_b_3[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_14_btint_a = output_btint_a_3;
						TMP_14_btint_b = output_btint_b_3;
						TMP_14_overflow = output_overflow_3;
						output_btint_a_2 = TMP_14_btint_a;
						output_btint_b_2 = TMP_14_btint_b;
						output_overflow_2 = TMP_14_overflow;
						output_index_2 = 6;
						output_value_1 = product_msd_2_1;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (output_value_1)
							-1: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 0;
							end
							0: begin
								output_btint_a_3[output_index_2] = 0;
								output_btint_b_3[output_index_2] = 1;
							end
							1: begin
								output_btint_a_3[output_index_2] = 1;
								output_btint_b_3[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_15_btint_a = output_btint_a_3;
						TMP_15_btint_b = output_btint_b_3;
						TMP_15_overflow = output_overflow_3;
						output_btint_a_2 = TMP_15_btint_a;
						output_btint_b_2 = TMP_15_btint_b;
						output_overflow_2 = TMP_15_overflow;
						TMP_6_btint_a = output_btint_a_2;
						TMP_6_btint_b = output_btint_b_2;
						TMP_6_overflow = output_overflow_2;
						TMP_6_from = 15;
						TMP_6_to = 0;
						output_btint_a_4 = 0;
						output_btint_b_4 = 0;
						output_overflow_4 = 0;
						output_btint_a_4 = TMP_6_btint_a[TMP_6_to+:8];
						output_btint_b_4 = TMP_6_btint_b[TMP_6_to+:8];
						output_overflow_4 = TMP_6_overflow;
						TMP_16_btint_a = output_btint_a_4;
						TMP_16_btint_b = output_btint_b_4;
						TMP_16_overflow = output_overflow_4;
						cell_c_out_d_btint_a_next = TMP_16_btint_a;
						cell_c_out_d_btint_b_next = TMP_16_btint_b;
						cell_c_out_d_overflow_next = TMP_16_overflow;
					end
					else begin
						c_in_u_output_v = 0;
						begin : sv2v_autoblock_2
							integer i_2;
							for (i_2 = 7; i_2 >= 0; i_2 = i_2 - 1)
								begin
									c_in_u_index = i_2;
									TMP_22 = (c_in_u_btint_a[c_in_u_index] + c_in_u_btint_b[c_in_u_index]) - 1;
									c_in_u_output_v = (2 * c_in_u_output_v) + TMP_22;
								end
						end
						TMP_21 = c_in_u_output_v;
						if (TMP_21 == 0) begin
							multiplier_reset_next[0] = 0;
							output_btint_a_5 = 0;
							output_btint_b_5 = 0;
							output_overflow_5 = 0;
							output_btint_a_5 = state_u_btint_a_next;
							output_btint_b_5 = state_u_btint_b_next;
							output_overflow_5 = state_u_overflow_next;
							begin : sv2v_autoblock_3
								integer i_3;
								for (i_3 = 0; i_3 < 8; i_3 = i_3 + 1)
									begin
										output_index_3 = i_3;
										TMP_24 = (output_btint_a_5[output_index_3] + output_btint_b_5[output_index_3]) - 1;
										output_index_4 = i_3;
										output_value_2 = -TMP_24;
										output_btint_a_6 = 0;
										output_btint_b_6 = 0;
										output_overflow_6 = 0;
										output_btint_a_6 = output_btint_a_5;
										output_btint_b_6 = output_btint_b_5;
										output_overflow_6 = output_overflow_5;
										case (output_value_2)
											-1: begin
												output_btint_a_6[output_index_4] = 0;
												output_btint_b_6[output_index_4] = 0;
											end
											0: begin
												output_btint_a_6[output_index_4] = 0;
												output_btint_b_6[output_index_4] = 1;
											end
											1: begin
												output_btint_a_6[output_index_4] = 1;
												output_btint_b_6[output_index_4] = 1;
											end
											default:
												;
										endcase
										TMP_25_btint_a = output_btint_a_6;
										TMP_25_btint_b = output_btint_b_6;
										TMP_25_overflow = output_overflow_6;
										output_btint_a_5 = TMP_25_btint_a;
										output_btint_b_5 = TMP_25_btint_b;
										output_overflow_5 = TMP_25_overflow;
									end
							end
							TMP_27 = (output_overflow_5[0] + output_overflow_5[1]) - 1;
							output_value_3 = -TMP_27;
							output_btint_a_7 = 0;
							output_btint_b_7 = 0;
							output_overflow_7 = 0;
							output_btint_a_7 = output_btint_a_5;
							output_btint_b_7 = output_btint_b_5;
							output_overflow_7 = output_overflow_5;
							case (output_value_3)
								-1: begin
									output_overflow_7[0] = 0;
									output_overflow_7[1] = 0;
								end
								0: begin
									output_overflow_7[0] = 0;
									output_overflow_7[1] = 1;
								end
								1: begin
									output_overflow_7[0] = 1;
									output_overflow_7[1] = 1;
								end
								default:
									;
							endcase
							TMP_28_btint_a = output_btint_a_7;
							TMP_28_btint_b = output_btint_b_7;
							TMP_28_overflow = output_overflow_7;
							output_btint_a_5 = TMP_28_btint_a;
							output_btint_b_5 = TMP_28_btint_b;
							output_overflow_5 = TMP_28_overflow;
							TMP_23_btint_a = output_btint_a_5;
							TMP_23_btint_b = output_btint_b_5;
							TMP_23_overflow = output_overflow_5;
							multiplier_a_btint_a_next[24+:8] = TMP_23_btint_a;
							multiplier_a_btint_b_next[24+:8] = TMP_23_btint_b;
							multiplier_a_overflow_next[6+:2] = TMP_23_overflow;
							multiplier_b_btint_a_next[24+:8] = cell_a_in_btint_a;
							multiplier_b_btint_b_next[24+:8] = cell_a_in_btint_b;
							multiplier_b_overflow_next[6+:2] = cell_a_in_overflow;
							output_btint_a_2 = 0;
							output_btint_b_2 = 0;
							output_overflow_2 = 0;
							output_btint_a_2[0] = product_btint_a_next[48+:16];
							output_btint_b_2[0] = product_btint_b_next[48+:16];
							output_overflow_2[0] = product_overflow_next[6+:2];
							output_index_1 = 8;
							TMP_7 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
							product_msd = TMP_7;
							output_index_1 = 7;
							TMP_9 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
							product_msd_1_1 = TMP_9;
							output_index_1 = 6;
							TMP_11 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
							product_msd_2_1 = TMP_11;
							case (product_msd)
								-1:
									if (product_msd_1_1 == 1) begin
										product_msd = 0;
										product_msd_1_1 = -2'sd1;
									end
									else if ((product_msd_1_1 == 0) && (product_msd_2_1 == 1)) begin
										product_msd = 0;
										product_msd_2_1 = -2'sd1;
										product_msd_1_1 = product_msd_2_1;
									end
								1:
									if (product_msd_1_1 == -2'sd1) begin
										product_msd = 0;
										product_msd_1_1 = 1;
									end
									else if ((product_msd_1_1 == 0) && (product_msd_2_1 == -2'sd1)) begin
										product_msd = 0;
										product_msd_2_1 = 1;
										product_msd_1_1 = product_msd_2_1;
									end
							endcase
							output_index_2 = 8;
							output_value_1 = product_msd;
							output_btint_a_3 = 0;
							output_btint_b_3 = 0;
							output_overflow_3 = 0;
							output_btint_a_3 = output_btint_a_2;
							output_btint_b_3 = output_btint_b_2;
							output_overflow_3 = output_overflow_2;
							case (output_value_1)
								-1: begin
									output_btint_a_3[output_index_2] = 0;
									output_btint_b_3[output_index_2] = 0;
								end
								0: begin
									output_btint_a_3[output_index_2] = 0;
									output_btint_b_3[output_index_2] = 1;
								end
								1: begin
									output_btint_a_3[output_index_2] = 1;
									output_btint_b_3[output_index_2] = 1;
								end
								default:
									;
							endcase
							TMP_13_btint_a = output_btint_a_3;
							TMP_13_btint_b = output_btint_b_3;
							TMP_13_overflow = output_overflow_3;
							output_btint_a_2 = TMP_13_btint_a;
							output_btint_b_2 = TMP_13_btint_b;
							output_overflow_2 = TMP_13_overflow;
							output_index_2 = 7;
							output_value_1 = product_msd_1_1;
							output_btint_a_3 = 0;
							output_btint_b_3 = 0;
							output_overflow_3 = 0;
							output_btint_a_3 = output_btint_a_2;
							output_btint_b_3 = output_btint_b_2;
							output_overflow_3 = output_overflow_2;
							case (output_value_1)
								-1: begin
									output_btint_a_3[output_index_2] = 0;
									output_btint_b_3[output_index_2] = 0;
								end
								0: begin
									output_btint_a_3[output_index_2] = 0;
									output_btint_b_3[output_index_2] = 1;
								end
								1: begin
									output_btint_a_3[output_index_2] = 1;
									output_btint_b_3[output_index_2] = 1;
								end
								default:
									;
							endcase
							TMP_14_btint_a = output_btint_a_3;
							TMP_14_btint_b = output_btint_b_3;
							TMP_14_overflow = output_overflow_3;
							output_btint_a_2 = TMP_14_btint_a;
							output_btint_b_2 = TMP_14_btint_b;
							output_overflow_2 = TMP_14_overflow;
							output_index_2 = 6;
							output_value_1 = product_msd_2_1;
							output_btint_a_3 = 0;
							output_btint_b_3 = 0;
							output_overflow_3 = 0;
							output_btint_a_3 = output_btint_a_2;
							output_btint_b_3 = output_btint_b_2;
							output_overflow_3 = output_overflow_2;
							case (output_value_1)
								-1: begin
									output_btint_a_3[output_index_2] = 0;
									output_btint_b_3[output_index_2] = 0;
								end
								0: begin
									output_btint_a_3[output_index_2] = 0;
									output_btint_b_3[output_index_2] = 1;
								end
								1: begin
									output_btint_a_3[output_index_2] = 1;
									output_btint_b_3[output_index_2] = 1;
								end
								default:
									;
							endcase
							TMP_15_btint_a = output_btint_a_3;
							TMP_15_btint_b = output_btint_b_3;
							TMP_15_overflow = output_overflow_3;
							output_btint_a_2 = TMP_15_btint_a;
							output_btint_b_2 = TMP_15_btint_b;
							output_overflow_2 = TMP_15_overflow;
							TMP_6_btint_a = output_btint_a_2;
							TMP_6_btint_b = output_btint_b_2;
							TMP_6_overflow = output_overflow_2;
							TMP_6_from = 15;
							TMP_6_to = 0;
							output_btint_a_4 = 0;
							output_btint_b_4 = 0;
							output_overflow_4 = 0;
							output_btint_a_4 = TMP_6_btint_a[TMP_6_to+:8];
							output_btint_b_4 = TMP_6_btint_b[TMP_6_to+:8];
							output_overflow_4 = TMP_6_overflow;
							TMP_16_btint_a = output_btint_a_4;
							TMP_16_btint_b = output_btint_b_4;
							TMP_16_overflow = output_overflow_4;
							cell_c_out_u_btint_a_next = TMP_16_btint_a;
							cell_c_out_u_btint_b_next = TMP_16_btint_b;
							cell_c_out_u_overflow_next = TMP_16_overflow;
							cell_c_out_d_btint_a_next = state_d_btint_a_next;
							cell_c_out_d_btint_b_next = state_d_btint_b_next;
							cell_c_out_d_overflow_next = state_d_overflow_next;
						end
						else begin
							a_in_output_v = 0;
							begin : sv2v_autoblock_4
								integer i_4;
								for (i_4 = 7; i_4 >= 0; i_4 = i_4 - 1)
									begin
										a_in_index = i_4;
										TMP_22 = (a_in_btint_a[a_in_index] + a_in_btint_b[a_in_index]) - 1;
										a_in_output_v = (2 * a_in_output_v) + TMP_22;
									end
							end
							TMP_34 = a_in_output_v;
							output_v_1 = 0;
							begin : sv2v_autoblock_5
								integer i_5;
								for (i_5 = 7; i_5 >= 0; i_5 = i_5 - 1)
									begin
										index = i_5;
										TMP_22 = (state_u_btint_a_next[index] + state_u_btint_b_next[index]) - 1;
										output_v_1 = (2 * output_v_1) + TMP_22;
									end
							end
							TMP_35 = output_v_1;
							if ((TMP_34 == 0) || (TMP_35 == 0)) begin
								cell_c_out_u_btint_a_next = cell_c_in_u_btint_a;
								cell_c_out_u_btint_b_next = cell_c_in_u_btint_b;
								cell_c_out_u_overflow_next = cell_c_in_u_overflow;
								cell_c_out_d_btint_a_next = cell_c_in_d_btint_a;
								cell_c_out_d_btint_b_next = cell_c_in_d_btint_b;
								cell_c_out_d_overflow_next = cell_c_in_d_overflow;
							end
							else begin
								multiplier_reset_next[0] = 0;
								multiplier_a_btint_a_next[24+:8] = cell_c_in_u_btint_a;
								multiplier_a_btint_b_next[24+:8] = cell_c_in_u_btint_b;
								multiplier_a_overflow_next[6+:2] = cell_c_in_u_overflow;
								multiplier_b_btint_a_next[24+:8] = state_d_btint_a_next;
								multiplier_b_btint_b_next[24+:8] = state_d_btint_b_next;
								multiplier_b_overflow_next[6+:2] = state_d_overflow_next;
								multiplier_reset_next[1] = 0;
								multiplier_a_btint_a_next[16+:8] = state_u_btint_a_next;
								multiplier_a_btint_b_next[16+:8] = state_u_btint_b_next;
								multiplier_a_overflow_next[4+:2] = state_u_overflow_next;
								multiplier_b_btint_a_next[16+:8] = cell_a_in_btint_a;
								multiplier_b_btint_b_next[16+:8] = cell_a_in_btint_b;
								multiplier_b_overflow_next[4+:2] = cell_a_in_overflow;
								multiplier_reset_next[2] = 0;
								output_btint_a_2 = 0;
								output_btint_b_2 = 0;
								output_overflow_2 = 0;
								output_btint_a_2[1] = product_btint_a_next[32+:16];
								output_btint_b_2[1] = product_btint_b_next[32+:16];
								output_overflow_2[1] = product_overflow_next[4+:2];
								output_index_1 = 8;
								TMP_7 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
								product_msd = TMP_7;
								output_index_1 = 7;
								TMP_9 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
								product_msd_1_1 = TMP_9;
								output_index_1 = 6;
								TMP_11 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
								product_msd_2_1 = TMP_11;
								case (product_msd)
									-1:
										if (product_msd_1_1 == 1) begin
											product_msd = 0;
											product_msd_1_1 = -2'sd1;
										end
										else if ((product_msd_1_1 == 0) && (product_msd_2_1 == 1)) begin
											product_msd = 0;
											product_msd_2_1 = -2'sd1;
											product_msd_1_1 = product_msd_2_1;
										end
									1:
										if (product_msd_1_1 == -2'sd1) begin
											product_msd = 0;
											product_msd_1_1 = 1;
										end
										else if ((product_msd_1_1 == 0) && (product_msd_2_1 == -2'sd1)) begin
											product_msd = 0;
											product_msd_2_1 = 1;
											product_msd_1_1 = product_msd_2_1;
										end
								endcase
								output_index_2 = 8;
								output_value_1 = product_msd;
								output_btint_a_3 = 0;
								output_btint_b_3 = 0;
								output_overflow_3 = 0;
								output_btint_a_3 = output_btint_a_2;
								output_btint_b_3 = output_btint_b_2;
								output_overflow_3 = output_overflow_2;
								case (output_value_1)
									-1: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 0;
									end
									0: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 1;
									end
									1: begin
										output_btint_a_3[output_index_2] = 1;
										output_btint_b_3[output_index_2] = 1;
									end
									default:
										;
								endcase
								TMP_13_btint_a = output_btint_a_3;
								TMP_13_btint_b = output_btint_b_3;
								TMP_13_overflow = output_overflow_3;
								output_btint_a_2 = TMP_13_btint_a;
								output_btint_b_2 = TMP_13_btint_b;
								output_overflow_2 = TMP_13_overflow;
								output_index_2 = 7;
								output_value_1 = product_msd_1_1;
								output_btint_a_3 = 0;
								output_btint_b_3 = 0;
								output_overflow_3 = 0;
								output_btint_a_3 = output_btint_a_2;
								output_btint_b_3 = output_btint_b_2;
								output_overflow_3 = output_overflow_2;
								case (output_value_1)
									-1: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 0;
									end
									0: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 1;
									end
									1: begin
										output_btint_a_3[output_index_2] = 1;
										output_btint_b_3[output_index_2] = 1;
									end
									default:
										;
								endcase
								TMP_14_btint_a = output_btint_a_3;
								TMP_14_btint_b = output_btint_b_3;
								TMP_14_overflow = output_overflow_3;
								output_btint_a_2 = TMP_14_btint_a;
								output_btint_b_2 = TMP_14_btint_b;
								output_overflow_2 = TMP_14_overflow;
								output_index_2 = 6;
								output_value_1 = product_msd_2_1;
								output_btint_a_3 = 0;
								output_btint_b_3 = 0;
								output_overflow_3 = 0;
								output_btint_a_3 = output_btint_a_2;
								output_btint_b_3 = output_btint_b_2;
								output_overflow_3 = output_overflow_2;
								case (output_value_1)
									-1: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 0;
									end
									0: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 1;
									end
									1: begin
										output_btint_a_3[output_index_2] = 1;
										output_btint_b_3[output_index_2] = 1;
									end
									default:
										;
								endcase
								TMP_15_btint_a = output_btint_a_3;
								TMP_15_btint_b = output_btint_b_3;
								TMP_15_overflow = output_overflow_3;
								output_btint_a_2 = TMP_15_btint_a;
								output_btint_b_2 = TMP_15_btint_b;
								output_overflow_2 = TMP_15_overflow;
								TMP_6_btint_a = output_btint_a_2;
								TMP_6_btint_b = output_btint_b_2;
								TMP_6_overflow = output_overflow_2;
								TMP_6_from = 15;
								TMP_6_to = 0;
								output_btint_a_4 = 0;
								output_btint_b_4 = 0;
								output_overflow_4 = 0;
								output_btint_a_4 = TMP_6_btint_a[TMP_6_to+:8];
								output_btint_b_4 = TMP_6_btint_b[TMP_6_to+:8];
								output_overflow_4 = TMP_6_overflow;
								TMP_16_btint_a = output_btint_a_4;
								TMP_16_btint_b = output_btint_b_4;
								TMP_16_overflow = output_overflow_4;
								multiplier_a_btint_a_next[8+:8] = TMP_16_btint_a;
								multiplier_a_btint_b_next[8+:8] = TMP_16_btint_b;
								multiplier_a_overflow_next[2+:2] = TMP_16_overflow;
								multiplier_b_btint_a_next[8+:8] = cell_c_in_d_btint_a;
								multiplier_b_btint_b_next[8+:8] = cell_c_in_d_btint_b;
								multiplier_b_overflow_next[2+:2] = cell_c_in_d_overflow;
								adder_subtractor_a_btint_a_next = product_btint_a_next[48+:16];
								adder_subtractor_a_btint_b_next = product_btint_b_next[48+:16];
								adder_subtractor_a_overflow_next = product_overflow_next[6+:2];
								adder_subtractor_b_btint_a_next = product_btint_a_next[16+:16];
								adder_subtractor_b_btint_b_next = product_btint_b_next[16+:16];
								adder_subtractor_b_overflow_next = product_overflow_next[2+:2];
								adder_subtractor_subtract_next = 1;
								output_btint_a_8 = 0;
								output_btint_b_8 = 0;
								output_overflow_8 = 0;
								output_btint_a_8 = sum_btint_a;
								output_btint_b_8 = sum_btint_b;
								output_overflow_8 = sum_overflow;
								output_index_5 = 8;
								TMP_42 = (output_btint_a_8[output_index_5] + output_btint_b_8[output_index_5]) - 1;
								sum_msd = TMP_42;
								output_index_5 = 7;
								TMP_44 = (output_btint_a_8[output_index_5] + output_btint_b_8[output_index_5]) - 1;
								sum_msd_1_1 = TMP_44;
								output_index_5 = 6;
								TMP_46 = (output_btint_a_8[output_index_5] + output_btint_b_8[output_index_5]) - 1;
								sum_msd_2_1 = TMP_46;
								case (sum_msd)
									-1:
										if (sum_msd_1_1 == 1) begin
											sum_msd = 0;
											sum_msd_1_1 = -2'sd1;
										end
										else if ((sum_msd_1_1 == 0) && (sum_msd_2_1 == 1)) begin
											sum_msd = 0;
											sum_msd_2_1 = -2'sd1;
											sum_msd_1_1 = sum_msd_2_1;
										end
									1:
										if (sum_msd_1_1 == -2'sd1) begin
											sum_msd = 0;
											sum_msd_1_1 = 1;
										end
										else if ((sum_msd_1_1 == 0) && (sum_msd_2_1 == -2'sd1)) begin
											sum_msd = 0;
											sum_msd_2_1 = 1;
											sum_msd_1_1 = sum_msd_2_1;
										end
								endcase
								output_index_6 = 8;
								output_value_4 = sum_msd;
								output_btint_a_9 = 0;
								output_btint_b_9 = 0;
								output_overflow_9 = 0;
								output_btint_a_9 = output_btint_a_8;
								output_btint_b_9 = output_btint_b_8;
								output_overflow_9 = output_overflow_8;
								case (output_value_4)
									-1: begin
										output_btint_a_9[output_index_6] = 0;
										output_btint_b_9[output_index_6] = 0;
									end
									0: begin
										output_btint_a_9[output_index_6] = 0;
										output_btint_b_9[output_index_6] = 1;
									end
									1: begin
										output_btint_a_9[output_index_6] = 1;
										output_btint_b_9[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_48_btint_a = output_btint_a_9;
								TMP_48_btint_b = output_btint_b_9;
								TMP_48_overflow = output_overflow_9;
								output_btint_a_8 = TMP_48_btint_a;
								output_btint_b_8 = TMP_48_btint_b;
								output_overflow_8 = TMP_48_overflow;
								output_index_6 = 7;
								output_value_4 = sum_msd_1_1;
								output_btint_a_9 = 0;
								output_btint_b_9 = 0;
								output_overflow_9 = 0;
								output_btint_a_9 = output_btint_a_8;
								output_btint_b_9 = output_btint_b_8;
								output_overflow_9 = output_overflow_8;
								case (output_value_4)
									-1: begin
										output_btint_a_9[output_index_6] = 0;
										output_btint_b_9[output_index_6] = 0;
									end
									0: begin
										output_btint_a_9[output_index_6] = 0;
										output_btint_b_9[output_index_6] = 1;
									end
									1: begin
										output_btint_a_9[output_index_6] = 1;
										output_btint_b_9[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_49_btint_a = output_btint_a_9;
								TMP_49_btint_b = output_btint_b_9;
								TMP_49_overflow = output_overflow_9;
								output_btint_a_8 = TMP_49_btint_a;
								output_btint_b_8 = TMP_49_btint_b;
								output_overflow_8 = TMP_49_overflow;
								output_index_6 = 6;
								output_value_4 = sum_msd_2_1;
								output_btint_a_9 = 0;
								output_btint_b_9 = 0;
								output_overflow_9 = 0;
								output_btint_a_9 = output_btint_a_8;
								output_btint_b_9 = output_btint_b_8;
								output_overflow_9 = output_overflow_8;
								case (output_value_4)
									-1: begin
										output_btint_a_9[output_index_6] = 0;
										output_btint_b_9[output_index_6] = 0;
									end
									0: begin
										output_btint_a_9[output_index_6] = 0;
										output_btint_b_9[output_index_6] = 1;
									end
									1: begin
										output_btint_a_9[output_index_6] = 1;
										output_btint_b_9[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_50_btint_a = output_btint_a_9;
								TMP_50_btint_b = output_btint_b_9;
								TMP_50_overflow = output_overflow_9;
								output_btint_a_8 = TMP_50_btint_a;
								output_btint_b_8 = TMP_50_btint_b;
								output_overflow_8 = TMP_50_overflow;
								TMP_41_btint_a = output_btint_a_8;
								TMP_41_btint_b = output_btint_b_8;
								TMP_41_overflow = output_overflow_8;
								TMP_41_from = 16;
								TMP_41_to = 0;
								output_btint_a_10 = 0;
								output_btint_b_10 = 0;
								output_overflow_10 = 0;
								output_btint_a_10 = TMP_41_btint_a[TMP_41_to+:8];
								output_btint_b_10 = TMP_41_btint_b[TMP_41_to+:8];
								output_overflow_10 = TMP_41_overflow;
								TMP_51_btint_a = output_btint_a_10;
								TMP_51_btint_b = output_btint_b_10;
								TMP_51_overflow = output_overflow_10;
								cell_c_out_u_btint_a_next = TMP_51_btint_a;
								cell_c_out_u_btint_b_next = TMP_51_btint_b;
								cell_c_out_u_overflow_next = TMP_51_overflow;
								multiplier_reset_next[3] = 0;
								multiplier_a_btint_a_next[0+:8] = cell_c_in_d_btint_a;
								multiplier_a_btint_b_next[0+:8] = cell_c_in_d_btint_b;
								multiplier_a_overflow_next[0+:2] = cell_c_in_d_overflow;
								multiplier_b_btint_a_next[0+:8] = state_d_btint_a_next;
								multiplier_b_btint_b_next[0+:8] = state_d_btint_b_next;
								multiplier_b_overflow_next[0+:2] = state_d_overflow_next;
								output_btint_a_2 = 0;
								output_btint_b_2 = 0;
								output_overflow_2 = 0;
								output_btint_a_2[3] = product_btint_a_next[0+:16];
								output_btint_b_2[3] = product_btint_b_next[0+:16];
								output_overflow_2[3] = product_overflow_next[0+:2];
								output_index_1 = 8;
								TMP_7 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
								product_msd = TMP_7;
								output_index_1 = 7;
								TMP_9 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
								product_msd_1_1 = TMP_9;
								output_index_1 = 6;
								TMP_11 = (output_btint_a_2[output_index_1] + output_btint_b_2[output_index_1]) - 1;
								product_msd_2_1 = TMP_11;
								case (product_msd)
									-1:
										if (product_msd_1_1 == 1) begin
											product_msd = 0;
											product_msd_1_1 = -2'sd1;
										end
										else if ((product_msd_1_1 == 0) && (product_msd_2_1 == 1)) begin
											product_msd = 0;
											product_msd_2_1 = -2'sd1;
											product_msd_1_1 = product_msd_2_1;
										end
									1:
										if (product_msd_1_1 == -2'sd1) begin
											product_msd = 0;
											product_msd_1_1 = 1;
										end
										else if ((product_msd_1_1 == 0) && (product_msd_2_1 == -2'sd1)) begin
											product_msd = 0;
											product_msd_2_1 = 1;
											product_msd_1_1 = product_msd_2_1;
										end
								endcase
								output_index_2 = 8;
								output_value_1 = product_msd;
								output_btint_a_3 = 0;
								output_btint_b_3 = 0;
								output_overflow_3 = 0;
								output_btint_a_3 = output_btint_a_2;
								output_btint_b_3 = output_btint_b_2;
								output_overflow_3 = output_overflow_2;
								case (output_value_1)
									-1: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 0;
									end
									0: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 1;
									end
									1: begin
										output_btint_a_3[output_index_2] = 1;
										output_btint_b_3[output_index_2] = 1;
									end
									default:
										;
								endcase
								TMP_13_btint_a = output_btint_a_3;
								TMP_13_btint_b = output_btint_b_3;
								TMP_13_overflow = output_overflow_3;
								output_btint_a_2 = TMP_13_btint_a;
								output_btint_b_2 = TMP_13_btint_b;
								output_overflow_2 = TMP_13_overflow;
								output_index_2 = 7;
								output_value_1 = product_msd_1_1;
								output_btint_a_3 = 0;
								output_btint_b_3 = 0;
								output_overflow_3 = 0;
								output_btint_a_3 = output_btint_a_2;
								output_btint_b_3 = output_btint_b_2;
								output_overflow_3 = output_overflow_2;
								case (output_value_1)
									-1: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 0;
									end
									0: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 1;
									end
									1: begin
										output_btint_a_3[output_index_2] = 1;
										output_btint_b_3[output_index_2] = 1;
									end
									default:
										;
								endcase
								TMP_14_btint_a = output_btint_a_3;
								TMP_14_btint_b = output_btint_b_3;
								TMP_14_overflow = output_overflow_3;
								output_btint_a_2 = TMP_14_btint_a;
								output_btint_b_2 = TMP_14_btint_b;
								output_overflow_2 = TMP_14_overflow;
								output_index_2 = 6;
								output_value_1 = product_msd_2_1;
								output_btint_a_3 = 0;
								output_btint_b_3 = 0;
								output_overflow_3 = 0;
								output_btint_a_3 = output_btint_a_2;
								output_btint_b_3 = output_btint_b_2;
								output_overflow_3 = output_overflow_2;
								case (output_value_1)
									-1: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 0;
									end
									0: begin
										output_btint_a_3[output_index_2] = 0;
										output_btint_b_3[output_index_2] = 1;
									end
									1: begin
										output_btint_a_3[output_index_2] = 1;
										output_btint_b_3[output_index_2] = 1;
									end
									default:
										;
								endcase
								TMP_15_btint_a = output_btint_a_3;
								TMP_15_btint_b = output_btint_b_3;
								TMP_15_overflow = output_overflow_3;
								output_btint_a_2 = TMP_15_btint_a;
								output_btint_b_2 = TMP_15_btint_b;
								output_overflow_2 = TMP_15_overflow;
								TMP_6_btint_a = output_btint_a_2;
								TMP_6_btint_b = output_btint_b_2;
								TMP_6_overflow = output_overflow_2;
								TMP_6_from = 15;
								TMP_6_to = 0;
								output_btint_a_4 = 0;
								output_btint_b_4 = 0;
								output_overflow_4 = 0;
								output_btint_a_4 = TMP_6_btint_a[TMP_6_to+:8];
								output_btint_b_4 = TMP_6_btint_b[TMP_6_to+:8];
								output_overflow_4 = TMP_6_overflow;
								TMP_16_btint_a = output_btint_a_4;
								TMP_16_btint_b = output_btint_b_4;
								TMP_16_overflow = output_overflow_4;
								cell_c_out_d_btint_a_next = TMP_16_btint_a;
								cell_c_out_d_btint_b_next = TMP_16_btint_b;
								cell_c_out_d_overflow_next = TMP_16_overflow;
							end
						end
					end
				end
				else begin
					cell_c_out_u_btint_a_next = cell_c_in_u_btint_a;
					cell_c_out_u_btint_b_next = cell_c_in_u_btint_b;
					cell_c_out_u_overflow_next = cell_c_in_u_overflow;
					cell_c_out_d_btint_a_next = cell_c_in_d_btint_a;
					cell_c_out_d_btint_b_next = cell_c_in_d_btint_b;
					cell_c_out_d_overflow_next = cell_c_in_d_overflow;
				end
			end
			else if (cell_s_mm) begin
				state_u_btint_a_next = cell_a_in_btint_a;
				state_u_btint_b_next = cell_a_in_btint_b;
				state_u_overflow_next = cell_a_in_overflow;
				cell_c_out_u_btint_a_next = zero_btint_a_next;
				cell_c_out_u_btint_b_next = zero_btint_b_next;
				cell_c_out_u_overflow_next = zero_overflow_next;
			end
			else begin
				multiplier_reset_next[0] = 0;
				multiplier_a_btint_a_next[24+:8] = state_u_btint_a_next;
				multiplier_a_btint_b_next[24+:8] = state_u_btint_b_next;
				multiplier_a_overflow_next[6+:2] = state_u_overflow_next;
				multiplier_b_btint_a_next[24+:8] = cell_a_in_btint_a;
				multiplier_b_btint_b_next[24+:8] = cell_a_in_btint_b;
				multiplier_b_overflow_next[6+:2] = cell_a_in_overflow;
				adder_subtractor_a_btint_a_next = product_btint_a_next[48+:16];
				adder_subtractor_a_btint_b_next = product_btint_b_next[48+:16];
				adder_subtractor_a_overflow_next = product_overflow_next[6+:2];
				output_btint_a_11 = 0;
				output_btint_b_11 = 0;
				output_overflow_11 = 0;
				output_btint_a_11 = 0;
				output_btint_b_11 = ~0;
				output_overflow_11 = 0;
				input_btint_a = 0;
				input_btint_b = 0;
				input_overflow = 0;
				input_btint_a = c_in_u_btint_a;
				input_btint_b = c_in_u_btint_b;
				input_overflow = c_in_u_overflow;
				low_btint_a = input_btint_a;
				low_btint_b = input_btint_b;
				low_overflow = input_overflow;
				output_btint_a_12 = 0;
				output_btint_b_12 = 0;
				output_overflow_12 = 0;
				output_btint_a_12 = {output_btint_a_11, low_btint_a};
				output_btint_b_12 = {output_btint_b_11, low_btint_b};
				output_overflow_12 = output_overflow_11;
				TMP_57_btint_a = output_btint_a_12;
				TMP_57_btint_b = output_btint_b_12;
				TMP_57_overflow = output_overflow_12;
				adder_subtractor_b_btint_a_next = TMP_57_btint_a;
				adder_subtractor_b_btint_b_next = TMP_57_btint_b;
				adder_subtractor_b_overflow_next = TMP_57_overflow;
				adder_subtractor_subtract_next = 0;
				output_btint_a_8 = 0;
				output_btint_b_8 = 0;
				output_overflow_8 = 0;
				output_btint_a_8 = sum_btint_a;
				output_btint_b_8 = sum_btint_b;
				output_overflow_8 = sum_overflow;
				output_index_5 = 8;
				TMP_42 = (output_btint_a_8[output_index_5] + output_btint_b_8[output_index_5]) - 1;
				sum_msd = TMP_42;
				output_index_5 = 7;
				TMP_44 = (output_btint_a_8[output_index_5] + output_btint_b_8[output_index_5]) - 1;
				sum_msd_1_1 = TMP_44;
				output_index_5 = 6;
				TMP_46 = (output_btint_a_8[output_index_5] + output_btint_b_8[output_index_5]) - 1;
				sum_msd_2_1 = TMP_46;
				case (sum_msd)
					-1:
						if (sum_msd_1_1 == 1) begin
							sum_msd = 0;
							sum_msd_1_1 = -2'sd1;
						end
						else if ((sum_msd_1_1 == 0) && (sum_msd_2_1 == 1)) begin
							sum_msd = 0;
							sum_msd_2_1 = -2'sd1;
							sum_msd_1_1 = sum_msd_2_1;
						end
					1:
						if (sum_msd_1_1 == -2'sd1) begin
							sum_msd = 0;
							sum_msd_1_1 = 1;
						end
						else if ((sum_msd_1_1 == 0) && (sum_msd_2_1 == -2'sd1)) begin
							sum_msd = 0;
							sum_msd_2_1 = 1;
							sum_msd_1_1 = sum_msd_2_1;
						end
				endcase
				output_index_6 = 8;
				output_value_4 = sum_msd;
				output_btint_a_9 = 0;
				output_btint_b_9 = 0;
				output_overflow_9 = 0;
				output_btint_a_9 = output_btint_a_8;
				output_btint_b_9 = output_btint_b_8;
				output_overflow_9 = output_overflow_8;
				case (output_value_4)
					-1: begin
						output_btint_a_9[output_index_6] = 0;
						output_btint_b_9[output_index_6] = 0;
					end
					0: begin
						output_btint_a_9[output_index_6] = 0;
						output_btint_b_9[output_index_6] = 1;
					end
					1: begin
						output_btint_a_9[output_index_6] = 1;
						output_btint_b_9[output_index_6] = 1;
					end
					default:
						;
				endcase
				TMP_48_btint_a = output_btint_a_9;
				TMP_48_btint_b = output_btint_b_9;
				TMP_48_overflow = output_overflow_9;
				output_btint_a_8 = TMP_48_btint_a;
				output_btint_b_8 = TMP_48_btint_b;
				output_overflow_8 = TMP_48_overflow;
				output_index_6 = 7;
				output_value_4 = sum_msd_1_1;
				output_btint_a_9 = 0;
				output_btint_b_9 = 0;
				output_overflow_9 = 0;
				output_btint_a_9 = output_btint_a_8;
				output_btint_b_9 = output_btint_b_8;
				output_overflow_9 = output_overflow_8;
				case (output_value_4)
					-1: begin
						output_btint_a_9[output_index_6] = 0;
						output_btint_b_9[output_index_6] = 0;
					end
					0: begin
						output_btint_a_9[output_index_6] = 0;
						output_btint_b_9[output_index_6] = 1;
					end
					1: begin
						output_btint_a_9[output_index_6] = 1;
						output_btint_b_9[output_index_6] = 1;
					end
					default:
						;
				endcase
				TMP_49_btint_a = output_btint_a_9;
				TMP_49_btint_b = output_btint_b_9;
				TMP_49_overflow = output_overflow_9;
				output_btint_a_8 = TMP_49_btint_a;
				output_btint_b_8 = TMP_49_btint_b;
				output_overflow_8 = TMP_49_overflow;
				output_index_6 = 6;
				output_value_4 = sum_msd_2_1;
				output_btint_a_9 = 0;
				output_btint_b_9 = 0;
				output_overflow_9 = 0;
				output_btint_a_9 = output_btint_a_8;
				output_btint_b_9 = output_btint_b_8;
				output_overflow_9 = output_overflow_8;
				case (output_value_4)
					-1: begin
						output_btint_a_9[output_index_6] = 0;
						output_btint_b_9[output_index_6] = 0;
					end
					0: begin
						output_btint_a_9[output_index_6] = 0;
						output_btint_b_9[output_index_6] = 1;
					end
					1: begin
						output_btint_a_9[output_index_6] = 1;
						output_btint_b_9[output_index_6] = 1;
					end
					default:
						;
				endcase
				TMP_50_btint_a = output_btint_a_9;
				TMP_50_btint_b = output_btint_b_9;
				TMP_50_overflow = output_overflow_9;
				output_btint_a_8 = TMP_50_btint_a;
				output_btint_b_8 = TMP_50_btint_b;
				output_overflow_8 = TMP_50_overflow;
				TMP_41_btint_a = output_btint_a_8;
				TMP_41_btint_b = output_btint_b_8;
				TMP_41_overflow = output_overflow_8;
				TMP_41_from = 16;
				TMP_41_to = 0;
				output_btint_a_10 = 0;
				output_btint_b_10 = 0;
				output_overflow_10 = 0;
				output_btint_a_10 = TMP_41_btint_a[TMP_41_to+:8];
				output_btint_b_10 = TMP_41_btint_b[TMP_41_to+:8];
				output_overflow_10 = TMP_41_overflow;
				TMP_51_btint_a = output_btint_a_10;
				TMP_51_btint_b = output_btint_b_10;
				TMP_51_overflow = output_overflow_10;
				cell_c_out_u_btint_a_next = TMP_51_btint_a;
				cell_c_out_u_btint_b_next = TMP_51_btint_b;
				cell_c_out_u_overflow_next = TMP_51_overflow;
			end
		end
	endtask
	always @(product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or state_u_overflow_next or state_u_btint_b_next or state_u_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_s_mm or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or product_overflow_next[0+:2] or product_btint_b_next[0+:16] or product_btint_a_next[0+:16] or state_d_overflow_next or state_d_btint_b_next or state_d_btint_a_next or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or product_overflow_next[2+:2] or product_btint_b_next[16+:16] or product_btint_a_next[16+:16] or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or product_overflow_next[4+:2] or product_btint_b_next[32+:16] or product_btint_a_next[32+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or state_u_overflow_next or state_u_btint_b_next or state_u_btint_a_next or state_d_overflow_next or state_d_btint_b_next or state_d_btint_a_next or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or state_u_btint_b_next or state_u_btint_a_next or state_d_overflow_next or state_d_btint_b_next or state_d_btint_a_next or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or state_u_overflow_next or state_u_btint_b_next or state_u_btint_a_next or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or cell_s_in or cell_s_mm or cell_op or cell_s_in or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or multiplier_product_overflow or multiplier_product_btint_b or multiplier_product_btint_a or adder_subtractor_sum_overflow or adder_subtractor_sum_btint_b or adder_subtractor_sum_btint_a or zero_overflow or zero_btint_b or zero_btint_a or state_u_overflow or state_u_btint_b or state_u_btint_a or state_d_overflow or state_d_btint_b or state_d_btint_a or product_overflow or product_btint_b or product_btint_a or multiplier_reset or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or cell_s_out or cell_c_out_u_overflow or cell_c_out_u_btint_b or cell_c_out_u_btint_a or cell_c_out_d_overflow or cell_c_out_d_btint_b or cell_c_out_d_btint_a or cell_a_out_overflow or cell_a_out_btint_b or cell_a_out_btint_a or adder_subtractor_subtract or adder_subtractor_b_overflow or adder_subtractor_b_btint_b or adder_subtractor_b_btint_a or adder_subtractor_a_overflow or adder_subtractor_a_btint_b or adder_subtractor_a_btint_a or _sv2v_0) begin : compute_comb
		if (_sv2v_0)
			;
		compute_func;
	end
	always @(posedge cell_clock) begin : compute_ff
		if (cell_reset) begin : sv2v_autoblock_6
			integer TMP_0_value;
			reg [7:0] output_btint_a;
			reg [7:0] output_btint_b;
			reg [1:0] output_overflow;
			integer output_index;
			integer output_value;
			reg [7:0] output_btint_a_1;
			reg [7:0] output_btint_b_1;
			reg [1:0] output_overflow_1;
			reg [7:0] TMP_2_btint_a;
			reg [7:0] TMP_2_btint_b;
			reg [1:0] TMP_2_overflow;
			reg TMP_0_isNegative;
			integer TMP_0_i;
			reg [7:0] TMP_1_btint_a;
			reg [7:0] TMP_1_btint_b;
			reg [1:0] TMP_1_overflow;
			reg [16:0] sum_btint_a;
			reg [16:0] sum_btint_b;
			reg [1:0] sum_overflow;
			reg [7:0] c_in_u_btint_a;
			reg [7:0] c_in_u_btint_b;
			reg [1:0] c_in_u_overflow;
			reg [7:0] a_in_btint_a;
			reg [7:0] a_in_btint_b;
			reg [1:0] a_in_overflow;
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_7
				integer i;
				for (i = 0; i < 8; i = i + 1)
					begin
						output_index = i;
						output_value = 0;
						output_btint_a_1 = 0;
						output_btint_b_1 = 0;
						output_overflow_1 = 0;
						output_btint_a_1 = output_btint_a;
						output_btint_b_1 = output_btint_b;
						output_overflow_1 = output_overflow;
						case (0)
							-1: begin
								output_btint_a_1[output_index] = 0;
								output_btint_b_1[output_index] = 0;
							end
							0: begin
								output_btint_a_1[output_index] = 0;
								output_btint_b_1[output_index] = 1;
							end
							1: begin
								output_btint_a_1[output_index] = 1;
								output_btint_b_1[output_index] = 1;
							end
							default:
								;
						endcase
						TMP_2_btint_a = output_btint_a_1;
						TMP_2_btint_b = output_btint_b_1;
						TMP_2_overflow = output_overflow_1;
						output_btint_a = TMP_2_btint_a;
						output_btint_b = TMP_2_btint_b;
						output_overflow = TMP_2_overflow;
					end
			end
			TMP_0_isNegative = TMP_0_value < 0;
			TMP_0_i = 0;
			TMP_1_btint_a = output_btint_a;
			TMP_1_btint_b = output_btint_b;
			TMP_1_overflow = output_overflow;
			zero_btint_a <= TMP_1_btint_a;
			zero_btint_b <= TMP_1_btint_b;
			zero_overflow <= TMP_1_overflow;
			sum_btint_a = 0;
			sum_btint_b = 0;
			sum_overflow = 0;
			c_in_u_btint_a = 0;
			c_in_u_btint_b = 0;
			c_in_u_overflow = 0;
			a_in_btint_a = 0;
			a_in_btint_b = 0;
			a_in_overflow = 0;
			cell_a_out_btint_a <= zero_btint_a;
			cell_a_out_btint_b <= zero_btint_b;
			cell_a_out_overflow <= zero_overflow;
			cell_c_out_u_btint_a <= zero_btint_a;
			cell_c_out_u_btint_b <= zero_btint_b;
			cell_c_out_u_overflow <= zero_overflow;
			cell_c_out_d_btint_a <= zero_btint_a;
			cell_c_out_d_btint_b <= zero_btint_b;
			cell_c_out_d_overflow <= zero_overflow;
			cell_s_out <= 0;
			state_u_btint_a <= zero_btint_a;
			state_u_btint_b <= zero_btint_b;
			state_u_overflow <= zero_overflow;
			state_d_btint_a <= zero_btint_a;
			state_d_btint_b <= zero_btint_b;
			state_d_overflow <= zero_overflow;
		end
		else begin
			cell_a_out_btint_a <= cell_a_out_btint_a_next;
			cell_a_out_btint_b <= cell_a_out_btint_b_next;
			cell_a_out_overflow <= cell_a_out_overflow_next;
			cell_c_out_u_btint_a <= cell_c_out_u_btint_a_next;
			cell_c_out_u_btint_b <= cell_c_out_u_btint_b_next;
			cell_c_out_u_overflow <= cell_c_out_u_overflow_next;
			cell_c_out_d_btint_a <= cell_c_out_d_btint_a_next;
			cell_c_out_d_btint_b <= cell_c_out_d_btint_b_next;
			cell_c_out_d_overflow <= cell_c_out_d_overflow_next;
			cell_s_out <= cell_s_out_next;
			product_btint_a <= product_btint_a_next;
			product_btint_b <= product_btint_b_next;
			product_overflow <= product_overflow_next;
			state_u_btint_a <= state_u_btint_a_next;
			state_u_btint_b <= state_u_btint_b_next;
			state_u_overflow <= state_u_overflow_next;
			state_d_btint_a <= state_d_btint_a_next;
			state_d_btint_b <= state_d_btint_b_next;
			state_d_overflow <= state_d_overflow_next;
			zero_btint_a <= zero_btint_a_next;
			zero_btint_b <= zero_btint_b_next;
			zero_overflow <= zero_overflow_next;
			multiplier_reset <= multiplier_reset_next;
			multiplier_a_btint_a <= multiplier_a_btint_a_next;
			multiplier_a_btint_b <= multiplier_a_btint_b_next;
			multiplier_a_overflow <= multiplier_a_overflow_next;
			multiplier_b_btint_a <= multiplier_b_btint_a_next;
			multiplier_b_btint_b <= multiplier_b_btint_b_next;
			multiplier_b_overflow <= multiplier_b_overflow_next;
			adder_subtractor_a_btint_a <= adder_subtractor_a_btint_a_next;
			adder_subtractor_a_btint_b <= adder_subtractor_a_btint_b_next;
			adder_subtractor_a_overflow <= adder_subtractor_a_overflow_next;
			adder_subtractor_b_btint_a <= adder_subtractor_b_btint_a_next;
			adder_subtractor_b_btint_b <= adder_subtractor_b_btint_b_next;
			adder_subtractor_b_overflow <= adder_subtractor_b_overflow_next;
			adder_subtractor_subtract <= adder_subtractor_subtract_next;
		end
	end
	ADDER_SUBTRACTOR adder_subtractor(
		.adder_subtractor_a_btint_a(adder_subtractor_a_btint_a),
		.adder_subtractor_a_btint_b(adder_subtractor_a_btint_b),
		.adder_subtractor_a_overflow(adder_subtractor_a_overflow),
		.adder_subtractor_b_btint_a(adder_subtractor_b_btint_a),
		.adder_subtractor_b_btint_b(adder_subtractor_b_btint_b),
		.adder_subtractor_b_overflow(adder_subtractor_b_overflow),
		.adder_subtractor_subtract(adder_subtractor_subtract),
		.adder_subtractor_sum_btint_a(adder_subtractor_sum_btint_a),
		.adder_subtractor_sum_btint_b(adder_subtractor_sum_btint_b),
		.adder_subtractor_sum_overflow(adder_subtractor_sum_overflow)
	);
	MULTIPLIER multiplier_0(
		.multiplier_clock(cell_clock),
		.multiplier_reset(multiplier_reset[0]),
		.multiplier_a_btint_a(multiplier_a_btint_a[24+:8]),
		.multiplier_a_btint_b(multiplier_a_btint_b[24+:8]),
		.multiplier_a_overflow(multiplier_a_overflow[6+:2]),
		.multiplier_b_btint_a(multiplier_b_btint_a[24+:8]),
		.multiplier_b_btint_b(multiplier_b_btint_b[24+:8]),
		.multiplier_b_overflow(multiplier_b_overflow[6+:2]),
		.multiplier_product_btint_a(multiplier_product_btint_a[0]),
		.multiplier_product_btint_b(multiplier_product_btint_b[0]),
		.multiplier_product_overflow(multiplier_product_overflow[0])
	);
	MULTIPLIER multiplier_1(
		.multiplier_clock(cell_clock),
		.multiplier_reset(multiplier_reset[1]),
		.multiplier_a_btint_a(multiplier_a_btint_a[16+:8]),
		.multiplier_a_btint_b(multiplier_a_btint_b[16+:8]),
		.multiplier_a_overflow(multiplier_a_overflow[4+:2]),
		.multiplier_b_btint_a(multiplier_b_btint_a[16+:8]),
		.multiplier_b_btint_b(multiplier_b_btint_b[16+:8]),
		.multiplier_b_overflow(multiplier_b_overflow[4+:2]),
		.multiplier_product_btint_a(multiplier_product_btint_a[1]),
		.multiplier_product_btint_b(multiplier_product_btint_b[1]),
		.multiplier_product_overflow(multiplier_product_overflow[1])
	);
	MULTIPLIER multiplier_2(
		.multiplier_clock(cell_clock),
		.multiplier_reset(multiplier_reset[2]),
		.multiplier_a_btint_a(multiplier_a_btint_a[8+:8]),
		.multiplier_a_btint_b(multiplier_a_btint_b[8+:8]),
		.multiplier_a_overflow(multiplier_a_overflow[2+:2]),
		.multiplier_b_btint_a(multiplier_b_btint_a[8+:8]),
		.multiplier_b_btint_b(multiplier_b_btint_b[8+:8]),
		.multiplier_b_overflow(multiplier_b_overflow[2+:2]),
		.multiplier_product_btint_a(multiplier_product_btint_a[2]),
		.multiplier_product_btint_b(multiplier_product_btint_b[2]),
		.multiplier_product_overflow(multiplier_product_overflow[2])
	);
	MULTIPLIER multiplier_3(
		.multiplier_clock(cell_clock),
		.multiplier_reset(multiplier_reset[3]),
		.multiplier_a_btint_a(multiplier_a_btint_a[0+:8]),
		.multiplier_a_btint_b(multiplier_a_btint_b[0+:8]),
		.multiplier_a_overflow(multiplier_a_overflow[0+:2]),
		.multiplier_b_btint_a(multiplier_b_btint_a[0+:8]),
		.multiplier_b_btint_b(multiplier_b_btint_b[0+:8]),
		.multiplier_b_overflow(multiplier_b_overflow[0+:2]),
		.multiplier_product_btint_a(multiplier_product_btint_a[3]),
		.multiplier_product_btint_b(multiplier_product_btint_b[3]),
		.multiplier_product_overflow(multiplier_product_overflow[3])
	);
	initial _sv2v_0 = 0;
endmodule
module ADDER_SUBTRACTOR (
	adder_subtractor_a_btint_a,
	adder_subtractor_a_btint_b,
	adder_subtractor_a_overflow,
	adder_subtractor_b_btint_a,
	adder_subtractor_b_btint_b,
	adder_subtractor_b_overflow,
	adder_subtractor_subtract,
	adder_subtractor_sum_btint_a,
	adder_subtractor_sum_btint_b,
	adder_subtractor_sum_overflow
);
	reg _sv2v_0;
	input wire [15:0] adder_subtractor_a_btint_a;
	input wire [15:0] adder_subtractor_a_btint_b;
	input wire [1:0] adder_subtractor_a_overflow;
	input wire [15:0] adder_subtractor_b_btint_a;
	input wire [15:0] adder_subtractor_b_btint_b;
	input wire [1:0] adder_subtractor_b_overflow;
	input wire adder_subtractor_subtract;
	output reg [16:0] adder_subtractor_sum_btint_a;
	output reg [16:0] adder_subtractor_sum_btint_b;
	output reg [1:0] adder_subtractor_sum_overflow;
	wire one;
	reg input_a [0:1][0:15];
	reg input_b [0:1][0:15];
	wire output_sum [0:1][0:16];
	wire fulladder_sum [0:15];
	wire fulladder_carry_out [0:14];
	always @(*) begin : source
		if (_sv2v_0)
			;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < 16; i = i + 1)
				begin
					input_a[0][i] = adder_subtractor_a_btint_a[i];
					input_a[1][i] = adder_subtractor_a_btint_b[i];
					input_b[0][i] = adder_subtractor_b_btint_a[i] ^ adder_subtractor_subtract;
					input_b[1][i] = adder_subtractor_b_btint_b[i] ^ adder_subtractor_subtract;
				end
		end
	end
	always @(*) begin : sink
		reg [16:0] sum_btint_a;
		reg [16:0] sum_btint_b;
		reg [1:0] sum_overflow;
		integer TMP_0;
		integer sum_index;
		integer sum_value;
		reg [16:0] output_btint_a;
		reg [16:0] output_btint_b;
		reg [1:0] output_overflow;
		reg [16:0] TMP_1_btint_a;
		reg [16:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		if (_sv2v_0)
			;
		TMP_0 = 0;
		output_btint_a = 0;
		output_btint_b = 0;
		output_overflow = 0;
		TMP_1_btint_a = 0;
		TMP_1_btint_b = 0;
		TMP_1_overflow = 0;
		sum_btint_a = 0;
		sum_btint_b = 0;
		sum_overflow = 0;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < 17; i = i + 1)
				begin
					sum_btint_a[i] = output_sum[0][i];
					sum_btint_b[i] = output_sum[1][i];
				end
		end
		sum_index = 16;
		TMP_0 = (sum_btint_a[sum_index] + sum_btint_b[sum_index]) - 1;
		sum_value = TMP_0;
		output_btint_a = 0;
		output_btint_b = 0;
		output_overflow = 0;
		output_btint_a = sum_btint_a;
		output_btint_b = sum_btint_b;
		output_overflow = sum_overflow;
		case (sum_value)
			-1: begin
				output_overflow[0] = 0;
				output_overflow[1] = 0;
			end
			0: begin
				output_overflow[0] = 0;
				output_overflow[1] = 1;
			end
			1: begin
				output_overflow[0] = 1;
				output_overflow[1] = 1;
			end
			default:
				;
		endcase
		TMP_1_btint_a = output_btint_a;
		TMP_1_btint_b = output_btint_b;
		TMP_1_overflow = output_overflow;
		sum_btint_a = TMP_1_btint_a;
		sum_btint_b = TMP_1_btint_b;
		sum_overflow = TMP_1_overflow;
		adder_subtractor_sum_btint_a = sum_btint_a;
		adder_subtractor_sum_btint_b = sum_btint_b;
		adder_subtractor_sum_overflow = sum_overflow;
	end
	FULLADDER fulladder_0_0(
		.fulladder_a(input_a[0][0]),
		.fulladder_b(input_b[0][0]),
		.fulladder_carry_in(input_a[1][0]),
		.fulladder_sum(fulladder_sum[0]),
		.fulladder_carry_out(fulladder_carry_out[0])
	);
	FULLADDER fulladder_0_1(
		.fulladder_a(input_a[0][1]),
		.fulladder_b(input_b[0][1]),
		.fulladder_carry_in(input_a[1][1]),
		.fulladder_sum(fulladder_sum[1]),
		.fulladder_carry_out(fulladder_carry_out[1])
	);
	FULLADDER fulladder_0_2(
		.fulladder_a(input_a[0][2]),
		.fulladder_b(input_b[0][2]),
		.fulladder_carry_in(input_a[1][2]),
		.fulladder_sum(fulladder_sum[2]),
		.fulladder_carry_out(fulladder_carry_out[2])
	);
	FULLADDER fulladder_0_3(
		.fulladder_a(input_a[0][3]),
		.fulladder_b(input_b[0][3]),
		.fulladder_carry_in(input_a[1][3]),
		.fulladder_sum(fulladder_sum[3]),
		.fulladder_carry_out(fulladder_carry_out[3])
	);
	FULLADDER fulladder_0_4(
		.fulladder_a(input_a[0][4]),
		.fulladder_b(input_b[0][4]),
		.fulladder_carry_in(input_a[1][4]),
		.fulladder_sum(fulladder_sum[4]),
		.fulladder_carry_out(fulladder_carry_out[4])
	);
	FULLADDER fulladder_0_5(
		.fulladder_a(input_a[0][5]),
		.fulladder_b(input_b[0][5]),
		.fulladder_carry_in(input_a[1][5]),
		.fulladder_sum(fulladder_sum[5]),
		.fulladder_carry_out(fulladder_carry_out[5])
	);
	FULLADDER fulladder_0_6(
		.fulladder_a(input_a[0][6]),
		.fulladder_b(input_b[0][6]),
		.fulladder_carry_in(input_a[1][6]),
		.fulladder_sum(fulladder_sum[6]),
		.fulladder_carry_out(fulladder_carry_out[6])
	);
	FULLADDER fulladder_0_7(
		.fulladder_a(input_a[0][7]),
		.fulladder_b(input_b[0][7]),
		.fulladder_carry_in(input_a[1][7]),
		.fulladder_sum(fulladder_sum[7]),
		.fulladder_carry_out(fulladder_carry_out[7])
	);
	FULLADDER fulladder_0_8(
		.fulladder_a(input_a[0][8]),
		.fulladder_b(input_b[0][8]),
		.fulladder_carry_in(input_a[1][8]),
		.fulladder_sum(fulladder_sum[8]),
		.fulladder_carry_out(fulladder_carry_out[8])
	);
	FULLADDER fulladder_0_9(
		.fulladder_a(input_a[0][9]),
		.fulladder_b(input_b[0][9]),
		.fulladder_carry_in(input_a[1][9]),
		.fulladder_sum(fulladder_sum[9]),
		.fulladder_carry_out(fulladder_carry_out[9])
	);
	FULLADDER fulladder_0_10(
		.fulladder_a(input_a[0][10]),
		.fulladder_b(input_b[0][10]),
		.fulladder_carry_in(input_a[1][10]),
		.fulladder_sum(fulladder_sum[10]),
		.fulladder_carry_out(fulladder_carry_out[10])
	);
	FULLADDER fulladder_0_11(
		.fulladder_a(input_a[0][11]),
		.fulladder_b(input_b[0][11]),
		.fulladder_carry_in(input_a[1][11]),
		.fulladder_sum(fulladder_sum[11]),
		.fulladder_carry_out(fulladder_carry_out[11])
	);
	FULLADDER fulladder_0_12(
		.fulladder_a(input_a[0][12]),
		.fulladder_b(input_b[0][12]),
		.fulladder_carry_in(input_a[1][12]),
		.fulladder_sum(fulladder_sum[12]),
		.fulladder_carry_out(fulladder_carry_out[12])
	);
	FULLADDER fulladder_0_13(
		.fulladder_a(input_a[0][13]),
		.fulladder_b(input_b[0][13]),
		.fulladder_carry_in(input_a[1][13]),
		.fulladder_sum(fulladder_sum[13]),
		.fulladder_carry_out(fulladder_carry_out[13])
	);
	FULLADDER fulladder_0_14(
		.fulladder_a(input_a[0][14]),
		.fulladder_b(input_b[0][14]),
		.fulladder_carry_in(input_a[1][14]),
		.fulladder_sum(fulladder_sum[14]),
		.fulladder_carry_out(fulladder_carry_out[14])
	);
	FULLADDER fulladder_0_15(
		.fulladder_a(input_a[0][15]),
		.fulladder_b(input_b[0][15]),
		.fulladder_carry_in(input_a[1][15]),
		.fulladder_sum(fulladder_sum[15]),
		.fulladder_carry_out(output_sum[1][16])
	);
	FULLADDER fulladder_1_0(
		.fulladder_a(one),
		.fulladder_b(fulladder_sum[0]),
		.fulladder_carry_in(input_b[1][0]),
		.fulladder_sum(output_sum[1][0]),
		.fulladder_carry_out(output_sum[0][1])
	);
	FULLADDER fulladder_1_1(
		.fulladder_a(fulladder_carry_out[0]),
		.fulladder_b(fulladder_sum[1]),
		.fulladder_carry_in(input_b[1][1]),
		.fulladder_sum(output_sum[1][1]),
		.fulladder_carry_out(output_sum[0][2])
	);
	FULLADDER fulladder_1_2(
		.fulladder_a(fulladder_carry_out[1]),
		.fulladder_b(fulladder_sum[2]),
		.fulladder_carry_in(input_b[1][2]),
		.fulladder_sum(output_sum[1][2]),
		.fulladder_carry_out(output_sum[0][3])
	);
	FULLADDER fulladder_1_3(
		.fulladder_a(fulladder_carry_out[2]),
		.fulladder_b(fulladder_sum[3]),
		.fulladder_carry_in(input_b[1][3]),
		.fulladder_sum(output_sum[1][3]),
		.fulladder_carry_out(output_sum[0][4])
	);
	FULLADDER fulladder_1_4(
		.fulladder_a(fulladder_carry_out[3]),
		.fulladder_b(fulladder_sum[4]),
		.fulladder_carry_in(input_b[1][4]),
		.fulladder_sum(output_sum[1][4]),
		.fulladder_carry_out(output_sum[0][5])
	);
	FULLADDER fulladder_1_5(
		.fulladder_a(fulladder_carry_out[4]),
		.fulladder_b(fulladder_sum[5]),
		.fulladder_carry_in(input_b[1][5]),
		.fulladder_sum(output_sum[1][5]),
		.fulladder_carry_out(output_sum[0][6])
	);
	FULLADDER fulladder_1_6(
		.fulladder_a(fulladder_carry_out[5]),
		.fulladder_b(fulladder_sum[6]),
		.fulladder_carry_in(input_b[1][6]),
		.fulladder_sum(output_sum[1][6]),
		.fulladder_carry_out(output_sum[0][7])
	);
	FULLADDER fulladder_1_7(
		.fulladder_a(fulladder_carry_out[6]),
		.fulladder_b(fulladder_sum[7]),
		.fulladder_carry_in(input_b[1][7]),
		.fulladder_sum(output_sum[1][7]),
		.fulladder_carry_out(output_sum[0][8])
	);
	FULLADDER fulladder_1_8(
		.fulladder_a(fulladder_carry_out[7]),
		.fulladder_b(fulladder_sum[8]),
		.fulladder_carry_in(input_b[1][8]),
		.fulladder_sum(output_sum[1][8]),
		.fulladder_carry_out(output_sum[0][9])
	);
	FULLADDER fulladder_1_9(
		.fulladder_a(fulladder_carry_out[8]),
		.fulladder_b(fulladder_sum[9]),
		.fulladder_carry_in(input_b[1][9]),
		.fulladder_sum(output_sum[1][9]),
		.fulladder_carry_out(output_sum[0][10])
	);
	FULLADDER fulladder_1_10(
		.fulladder_a(fulladder_carry_out[9]),
		.fulladder_b(fulladder_sum[10]),
		.fulladder_carry_in(input_b[1][10]),
		.fulladder_sum(output_sum[1][10]),
		.fulladder_carry_out(output_sum[0][11])
	);
	FULLADDER fulladder_1_11(
		.fulladder_a(fulladder_carry_out[10]),
		.fulladder_b(fulladder_sum[11]),
		.fulladder_carry_in(input_b[1][11]),
		.fulladder_sum(output_sum[1][11]),
		.fulladder_carry_out(output_sum[0][12])
	);
	FULLADDER fulladder_1_12(
		.fulladder_a(fulladder_carry_out[11]),
		.fulladder_b(fulladder_sum[12]),
		.fulladder_carry_in(input_b[1][12]),
		.fulladder_sum(output_sum[1][12]),
		.fulladder_carry_out(output_sum[0][13])
	);
	FULLADDER fulladder_1_13(
		.fulladder_a(fulladder_carry_out[12]),
		.fulladder_b(fulladder_sum[13]),
		.fulladder_carry_in(input_b[1][13]),
		.fulladder_sum(output_sum[1][13]),
		.fulladder_carry_out(output_sum[0][14])
	);
	FULLADDER fulladder_1_14(
		.fulladder_a(fulladder_carry_out[13]),
		.fulladder_b(fulladder_sum[14]),
		.fulladder_carry_in(input_b[1][14]),
		.fulladder_sum(output_sum[1][14]),
		.fulladder_carry_out(output_sum[0][15])
	);
	FULLADDER fulladder_1_15(
		.fulladder_a(fulladder_carry_out[14]),
		.fulladder_b(fulladder_sum[15]),
		.fulladder_carry_in(input_b[1][15]),
		.fulladder_sum(output_sum[1][15]),
		.fulladder_carry_out(output_sum[0][16])
	);
	initial _sv2v_0 = 0;
endmodule
module FULLADDER (
	fulladder_a,
	fulladder_b,
	fulladder_carry_in,
	fulladder_sum,
	fulladder_carry_out
);
	reg _sv2v_0;
	input wire fulladder_a;
	input wire fulladder_b;
	input wire fulladder_carry_in;
	output reg fulladder_sum;
	output reg fulladder_carry_out;
	always @(*) begin : add
		if (_sv2v_0)
			;
		fulladder_sum = (fulladder_a != fulladder_b) != fulladder_carry_in;
		fulladder_carry_out = (fulladder_a && fulladder_b) || (fulladder_carry_in && (fulladder_a != fulladder_b));
	end
	initial _sv2v_0 = 0;
endmodule
module MULTIPLIER (
	multiplier_clock,
	multiplier_reset,
	multiplier_a_btint_a,
	multiplier_a_btint_b,
	multiplier_a_overflow,
	multiplier_b_btint_a,
	multiplier_b_btint_b,
	multiplier_b_overflow,
	multiplier_product_btint_a,
	multiplier_product_btint_b,
	multiplier_product_overflow
);
	reg _sv2v_0;
	input wire multiplier_clock;
	input wire multiplier_reset;
	input wire [7:0] multiplier_a_btint_a;
	input wire [7:0] multiplier_a_btint_b;
	input wire [1:0] multiplier_a_overflow;
	input wire [7:0] multiplier_b_btint_a;
	input wire [7:0] multiplier_b_btint_b;
	input wire [1:0] multiplier_b_overflow;
	output reg [15:0] multiplier_product_btint_a;
	output reg [15:0] multiplier_product_btint_b;
	output reg [1:0] multiplier_product_overflow;
	wire [7:0] adder_subtractor_a_btint_a;
	wire [7:0] adder_subtractor_a_btint_b;
	wire [1:0] adder_subtractor_a_overflow;
	reg [7:0] adder_subtractor_b_btint_a;
	reg [7:0] adder_subtractor_b_btint_b;
	reg [1:0] adder_subtractor_b_overflow;
	reg adder_subtractor_subtract;
	wire [8:0] adder_subtractor_sum_btint_a;
	wire [8:0] adder_subtractor_sum_btint_b;
	wire [1:0] adder_subtractor_sum_overflow;
	reg shift_register_reset;
	wire [7:0] shift_register_state_btint_a;
	wire [7:0] shift_register_state_btint_b;
	wire [1:0] shift_register_state_overflow;
	reg [7:0] adder_subtractor_b_btint_a_next;
	reg [7:0] adder_subtractor_b_btint_b_next;
	reg [1:0] adder_subtractor_b_overflow_next;
	reg shift_register_reset_next;
	reg [15:0] multiplier_product_btint_a_next;
	reg [15:0] multiplier_product_btint_b_next;
	reg [1:0] multiplier_product_overflow_next;
	reg [7:0] a_old_btint_a;
	reg [7:0] a_old_btint_a_next;
	reg [7:0] a_old_btint_b;
	reg [7:0] a_old_btint_b_next;
	reg [7:0] b_old_btint_a;
	reg [7:0] b_old_btint_a_next;
	reg [7:0] b_old_btint_b;
	reg [7:0] b_old_btint_b_next;
	reg [7:0] zero_btint_a;
	reg [7:0] zero_btint_a_next;
	reg [7:0] zero_btint_b;
	reg [7:0] zero_btint_b_next;
	reg [1:0] zero_overflow;
	reg [1:0] zero_overflow_next;
	reg [15:0] zero_expanded_btint_a;
	reg [15:0] zero_expanded_btint_a_next;
	reg [15:0] zero_expanded_btint_b;
	reg [15:0] zero_expanded_btint_b_next;
	reg [1:0] zero_expanded_overflow;
	reg [1:0] zero_expanded_overflow_next;
	reg signed [31:0] lock;
	reg signed [31:0] lock_next;
	reg [7:0] b_btint_a;
	reg [7:0] b_btint_a_next;
	reg [7:0] b_btint_b;
	reg [7:0] b_btint_b_next;
	reg [1:0] b_overflow;
	reg [1:0] b_overflow_next;
	reg adder_subtractor_subtract_next;
	reg [1:0] a_old_overflow;
	reg [1:0] b_old_overflow;
	task multiply_func;
		integer TMP_0_value;
		reg [7:0] output_btint_a;
		reg [7:0] output_btint_b;
		reg [1:0] output_overflow;
		integer output_index;
		integer output_value;
		reg [7:0] output_btint_a_1;
		reg [7:0] output_btint_b_1;
		reg [1:0] output_overflow_1;
		reg [7:0] TMP_2_btint_a;
		reg [7:0] TMP_2_btint_b;
		reg [1:0] TMP_2_overflow;
		reg TMP_0_isNegative;
		integer TMP_0_i;
		reg [7:0] TMP_1_btint_a;
		reg [7:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		integer TMP_5_value;
		reg [15:0] output_btint_a_2;
		reg [15:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [15:0] output_btint_a_3;
		reg [15:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg [15:0] TMP_7_btint_a;
		reg [15:0] TMP_7_btint_b;
		reg [1:0] TMP_7_overflow;
		reg TMP_5_isNegative;
		integer TMP_5_i;
		reg [15:0] TMP_6_btint_a;
		reg [15:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		reg [7:0] input_a_btint_a;
		reg [7:0] input_a_btint_b;
		reg [1:0] input_a_overflow;
		reg [7:0] input_b_btint_a;
		reg [7:0] input_b_btint_b;
		reg [1:0] input_b_overflow;
		reg [7:0] a_btint_a;
		reg [7:0] a_btint_b;
		reg [1:0] a_overflow;
		reg [7:0] state_btint_a;
		reg [7:0] state_btint_b;
		reg [1:0] state_overflow;
		reg [15:0] product_btint_a;
		reg [15:0] product_btint_b;
		reg [1:0] product_overflow;
		integer TMP_10;
		integer input_a_output_v;
		integer TMP_11;
		integer input_a_index;
		integer TMP_12;
		integer output_v;
		integer index;
		integer TMP_13;
		integer input_b_output_v;
		integer input_b_index;
		integer TMP_14;
		integer output_v_1;
		integer index_1;
		integer TMP_15;
		integer index_2;
		integer TMP_16;
		integer index_3;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		integer output_index_2;
		integer output_value_2;
		reg [7:0] output_btint_a_5;
		reg [7:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
		reg [7:0] TMP_18_btint_a;
		reg [7:0] TMP_18_btint_b;
		reg [1:0] TMP_18_overflow;
		reg [7:0] TMP_17_btint_a;
		reg [7:0] TMP_17_btint_b;
		reg [1:0] TMP_17_overflow;
		reg [7:0] low_btint_a;
		reg [7:0] low_btint_b;
		reg [1:0] low_overflow;
		reg [15:0] output_btint_a_6;
		reg [15:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		reg [15:0] TMP_19_btint_a;
		reg [15:0] TMP_19_btint_b;
		reg [1:0] TMP_19_overflow;
		integer TMP_20;
		integer product_index;
		integer TMP_21;
		integer product_value;
		reg [15:0] output_btint_a_7;
		reg [15:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg [15:0] TMP_22_btint_a;
		reg [15:0] TMP_22_btint_b;
		reg [1:0] TMP_22_overflow;
		begin
			TMP_10 = 0;
			input_a_output_v = 0;
			TMP_11 = 0;
			input_a_index = 0;
			TMP_12 = 0;
			output_v = 0;
			index = 0;
			TMP_13 = 0;
			input_b_output_v = 0;
			input_b_index = 0;
			TMP_14 = 0;
			output_v_1 = 0;
			index_1 = 0;
			TMP_15 = 0;
			index_2 = 0;
			TMP_16 = 0;
			index_3 = 0;
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			output_index_2 = 0;
			output_value_2 = 0;
			output_btint_a_5 = 0;
			output_btint_b_5 = 0;
			output_overflow_5 = 0;
			TMP_18_btint_a = 0;
			TMP_18_btint_b = 0;
			TMP_18_overflow = 0;
			TMP_17_btint_a = 0;
			TMP_17_btint_b = 0;
			TMP_17_overflow = 0;
			low_btint_a = 0;
			low_btint_b = 0;
			low_overflow = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			TMP_19_btint_a = 0;
			TMP_19_btint_b = 0;
			TMP_19_overflow = 0;
			TMP_20 = 0;
			product_index = 0;
			TMP_21 = 0;
			product_value = 0;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			TMP_22_btint_a = 0;
			TMP_22_btint_b = 0;
			TMP_22_overflow = 0;
			a_old_btint_a_next = a_old_btint_a;
			a_old_btint_b_next = a_old_btint_b;
			adder_subtractor_b_btint_a_next = adder_subtractor_b_btint_a;
			adder_subtractor_b_btint_b_next = adder_subtractor_b_btint_b;
			adder_subtractor_b_overflow_next = adder_subtractor_b_overflow;
			adder_subtractor_subtract_next = adder_subtractor_subtract;
			b_btint_a_next = b_btint_a;
			b_btint_b_next = b_btint_b;
			b_old_btint_a_next = b_old_btint_a;
			b_old_btint_b_next = b_old_btint_b;
			b_overflow_next = b_overflow;
			lock_next = lock;
			multiplier_product_btint_a_next = multiplier_product_btint_a;
			multiplier_product_btint_b_next = multiplier_product_btint_b;
			multiplier_product_overflow_next = multiplier_product_overflow;
			shift_register_reset_next = shift_register_reset;
			zero_btint_a_next = zero_btint_a;
			zero_btint_b_next = zero_btint_b;
			zero_expanded_btint_a_next = zero_expanded_btint_a;
			zero_expanded_btint_b_next = zero_expanded_btint_b;
			zero_expanded_overflow_next = zero_expanded_overflow;
			zero_overflow_next = zero_overflow;
			input_a_btint_a = multiplier_a_btint_a;
			input_a_btint_b = multiplier_a_btint_b;
			input_a_overflow = multiplier_a_overflow;
			input_b_btint_a = multiplier_b_btint_a;
			input_b_btint_b = multiplier_b_btint_b;
			input_b_overflow = multiplier_b_overflow;
			a_btint_a = adder_subtractor_a_btint_a;
			a_btint_b = adder_subtractor_a_btint_b;
			a_overflow = adder_subtractor_a_overflow;
			state_btint_a = shift_register_state_btint_a;
			state_btint_b = shift_register_state_btint_b;
			state_overflow = shift_register_state_overflow;
			input_a_output_v = 0;
			begin : sv2v_autoblock_1
				integer i_2;
				for (i_2 = 7; i_2 >= 0; i_2 = i_2 - 1)
					begin
						input_a_index = i_2;
						TMP_11 = (input_a_btint_a[input_a_index] + input_a_btint_b[input_a_index]) - 1;
						input_a_output_v = (2 * input_a_output_v) + TMP_11;
					end
			end
			TMP_10 = input_a_output_v;
			output_v = 0;
			begin : sv2v_autoblock_2
				integer i_3;
				for (i_3 = 7; i_3 >= 0; i_3 = i_3 - 1)
					begin
						index = i_3;
						TMP_11 = (a_old_btint_a_next[index] + a_old_btint_b_next[index]) - 1;
						output_v = (2 * output_v) + TMP_11;
					end
			end
			TMP_12 = output_v;
			input_b_output_v = 0;
			begin : sv2v_autoblock_3
				integer i_4;
				for (i_4 = 7; i_4 >= 0; i_4 = i_4 - 1)
					begin
						input_b_index = i_4;
						TMP_11 = (input_b_btint_a[input_b_index] + input_b_btint_b[input_b_index]) - 1;
						input_b_output_v = (2 * input_b_output_v) + TMP_11;
					end
			end
			TMP_13 = input_b_output_v;
			output_v_1 = 0;
			begin : sv2v_autoblock_4
				integer i_5;
				for (i_5 = 7; i_5 >= 0; i_5 = i_5 - 1)
					begin
						index_1 = i_5;
						TMP_11 = (b_old_btint_a_next[index_1] + b_old_btint_b_next[index_1]) - 1;
						output_v_1 = (2 * output_v_1) + TMP_11;
					end
			end
			TMP_14 = output_v_1;
			if ((TMP_10 != TMP_12) || (TMP_13 != TMP_14)) begin
				adder_subtractor_b_btint_a_next = zero_btint_a_next;
				adder_subtractor_b_btint_b_next = zero_btint_b_next;
				adder_subtractor_b_overflow_next = zero_overflow_next;
				shift_register_reset_next = 1;
				multiplier_product_btint_a_next = zero_expanded_btint_a_next;
				multiplier_product_btint_b_next = zero_expanded_btint_b_next;
				multiplier_product_overflow_next = zero_expanded_overflow_next;
				a_old_btint_a_next = multiplier_a_btint_a;
				a_old_btint_b_next = multiplier_a_btint_b;
				a_old_overflow = multiplier_a_overflow;
				b_old_btint_a_next = multiplier_b_btint_a;
				b_old_btint_b_next = multiplier_b_btint_b;
				b_old_overflow = multiplier_b_overflow;
				b_btint_a_next = multiplier_b_btint_a;
				b_btint_b_next = multiplier_b_btint_b;
				b_overflow_next = multiplier_b_overflow;
				lock_next = 11;
			end
			else if (lock_next > 0) begin
				index_2 = 0;
				TMP_15 = (b_btint_a_next[index_2] + b_btint_b_next[index_2]) - 1;
				if (|TMP_15) begin
					adder_subtractor_b_btint_a_next = multiplier_a_btint_a;
					adder_subtractor_b_btint_b_next = multiplier_a_btint_b;
					adder_subtractor_b_overflow_next = multiplier_a_overflow;
				end
				else begin
					adder_subtractor_b_btint_a_next = zero_btint_a_next;
					adder_subtractor_b_btint_b_next = zero_btint_b_next;
					adder_subtractor_b_overflow_next = zero_overflow_next;
				end
				index_2 = 0;
				TMP_16 = (b_btint_a_next[index_2] + b_btint_b_next[index_2]) - 1;
				adder_subtractor_subtract_next = TMP_16 == -2'sd1;
				index_3 = 1;
				output_btint_a_4 = 0;
				output_btint_b_4 = 0;
				output_overflow_4 = 0;
				output_btint_a_4 = b_btint_a_next;
				output_btint_b_4 = b_btint_b_next;
				output_overflow_4 = b_overflow_next;
				begin : sv2v_autoblock_5
					integer i_6;
					for (i_6 = 0; i_6 < index_3; i_6 = i_6 + 1)
						begin
							output_btint_a_4 = output_btint_a_4 >>> 1;
							output_btint_b_4 = output_btint_b_4 >>> 1;
							output_index_2 = 7;
							output_value_2 = 0;
							output_btint_a_5 = 0;
							output_btint_b_5 = 0;
							output_overflow_5 = 0;
							output_btint_a_5 = output_btint_a_4;
							output_btint_b_5 = output_btint_b_4;
							output_overflow_5 = output_overflow_4;
							case (0)
								0: begin
									output_btint_a_5[output_index_2] = 0;
									output_btint_b_5[output_index_2] = 1;
								end
							endcase
							TMP_18_btint_a = output_btint_a_5;
							TMP_18_btint_b = output_btint_b_5;
							TMP_18_overflow = output_overflow_5;
							output_btint_a_4 = TMP_18_btint_a;
							output_btint_b_4 = TMP_18_btint_b;
							output_overflow_4 = TMP_18_overflow;
						end
				end
				TMP_17_btint_a = output_btint_a_4;
				TMP_17_btint_b = output_btint_b_4;
				TMP_17_overflow = output_overflow_4;
				b_btint_a_next = TMP_17_btint_a;
				b_btint_b_next = TMP_17_btint_b;
				b_overflow_next = TMP_17_overflow;
				shift_register_reset_next = 0;
				low_btint_a = state_btint_a;
				low_btint_b = state_btint_b;
				low_overflow = state_overflow;
				output_btint_a_6 = 0;
				output_btint_b_6 = 0;
				output_overflow_6 = 0;
				output_btint_a_6 = {a_btint_a, low_btint_a};
				output_btint_b_6 = {a_btint_b, low_btint_b};
				output_overflow_6 = a_overflow;
				TMP_19_btint_a = output_btint_a_6;
				TMP_19_btint_b = output_btint_b_6;
				TMP_19_overflow = output_overflow_6;
				product_btint_a = TMP_19_btint_a;
				product_btint_b = TMP_19_btint_b;
				product_overflow = TMP_19_overflow;
				begin : sv2v_autoblock_6
					integer i_7;
					for (i_7 = 8; i_7 < 16; i_7 = i_7 + 1)
						begin
							product_index = i_7;
							TMP_20 = (product_btint_a[product_index] + product_btint_b[product_index]) - 1;
							if (|TMP_20) begin
								product_index = i_7;
								TMP_21 = (product_btint_a[product_index] + product_btint_b[product_index]) - 1;
								product_value = TMP_21;
								output_btint_a_7 = 0;
								output_btint_b_7 = 0;
								output_overflow_7 = 0;
								output_btint_a_7 = product_btint_a;
								output_btint_b_7 = product_btint_b;
								output_overflow_7 = product_overflow;
								case (product_value)
									-1: begin
										output_overflow_7[0] = 0;
										output_overflow_7[1] = 0;
									end
									0: begin
										output_overflow_7[0] = 0;
										output_overflow_7[1] = 1;
									end
									1: begin
										output_overflow_7[0] = 1;
										output_overflow_7[1] = 1;
									end
									default:
										;
								endcase
								TMP_22_btint_a = output_btint_a_7;
								TMP_22_btint_b = output_btint_b_7;
								TMP_22_overflow = output_overflow_7;
								product_btint_a = TMP_22_btint_a;
								product_btint_b = TMP_22_btint_b;
								product_overflow = TMP_22_overflow;
							end
						end
				end
				multiplier_product_btint_a_next = product_btint_a;
				multiplier_product_btint_b_next = product_btint_b;
				multiplier_product_overflow_next = product_overflow;
			end
			if (lock_next > 0)
				lock_next = lock_next - 1;
		end
	endtask
	always @(lock_next or b_overflow_next or b_btint_b_next or b_btint_a_next or b_btint_b_next or b_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or b_btint_b_next or b_btint_a_next or lock_next or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or zero_expanded_overflow_next or zero_expanded_btint_b_next or zero_expanded_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or b_old_btint_b_next or b_old_btint_a_next or a_old_btint_b_next or a_old_btint_a_next or shift_register_state_overflow or shift_register_state_btint_b or shift_register_state_btint_a or adder_subtractor_a_overflow or adder_subtractor_a_btint_b or adder_subtractor_a_btint_a or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or zero_overflow or zero_expanded_overflow or zero_expanded_btint_b or zero_expanded_btint_a or zero_btint_b or zero_btint_a or shift_register_reset or multiplier_product_overflow or multiplier_product_btint_b or multiplier_product_btint_a or lock or b_overflow or b_old_btint_b or b_old_btint_a or b_btint_b or b_btint_a or adder_subtractor_subtract or adder_subtractor_b_overflow or adder_subtractor_b_btint_b or adder_subtractor_b_btint_a or a_old_btint_b or a_old_btint_a or _sv2v_0) begin : multiply_comb
		if (_sv2v_0)
			;
		multiply_func;
	end
	always @(posedge multiplier_clock) begin : multiply_ff
		if (multiplier_reset) begin : sv2v_autoblock_7
			integer TMP_0_value;
			reg [7:0] output_btint_a;
			reg [7:0] output_btint_b;
			reg [1:0] output_overflow;
			integer output_index;
			integer output_value;
			reg [7:0] output_btint_a_1;
			reg [7:0] output_btint_b_1;
			reg [1:0] output_overflow_1;
			reg [7:0] TMP_2_btint_a;
			reg [7:0] TMP_2_btint_b;
			reg [1:0] TMP_2_overflow;
			reg TMP_0_isNegative;
			integer TMP_0_i;
			reg [7:0] TMP_1_btint_a;
			reg [7:0] TMP_1_btint_b;
			reg [1:0] TMP_1_overflow;
			integer TMP_5_value;
			reg [15:0] output_btint_a_2;
			reg [15:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [15:0] output_btint_a_3;
			reg [15:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg [15:0] TMP_7_btint_a;
			reg [15:0] TMP_7_btint_b;
			reg [1:0] TMP_7_overflow;
			reg TMP_5_isNegative;
			integer TMP_5_i;
			reg [15:0] TMP_6_btint_a;
			reg [15:0] TMP_6_btint_b;
			reg [1:0] TMP_6_overflow;
			reg [7:0] input_a_btint_a;
			reg [7:0] input_a_btint_b;
			reg [1:0] input_a_overflow;
			reg [7:0] input_b_btint_a;
			reg [7:0] input_b_btint_b;
			reg [1:0] input_b_overflow;
			reg [7:0] a_btint_a;
			reg [7:0] a_btint_b;
			reg [1:0] a_overflow;
			reg [7:0] state_btint_a;
			reg [7:0] state_btint_b;
			reg [1:0] state_overflow;
			reg [15:0] product_btint_a;
			reg [15:0] product_btint_b;
			reg [1:0] product_overflow;
			reg [1:0] a_old_overflow;
			reg [1:0] b_old_overflow;
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_8
				integer i;
				for (i = 0; i < 8; i = i + 1)
					begin
						output_index = i;
						output_value = 0;
						output_btint_a_1 = 0;
						output_btint_b_1 = 0;
						output_overflow_1 = 0;
						output_btint_a_1 = output_btint_a;
						output_btint_b_1 = output_btint_b;
						output_overflow_1 = output_overflow;
						case (0)
							0: begin
								output_btint_a_1[output_index] = 0;
								output_btint_b_1[output_index] = 1;
							end
						endcase
						TMP_2_btint_a = output_btint_a_1;
						TMP_2_btint_b = output_btint_b_1;
						TMP_2_overflow = output_overflow_1;
						output_btint_a = TMP_2_btint_a;
						output_btint_b = TMP_2_btint_b;
						output_overflow = TMP_2_overflow;
					end
			end
			TMP_0_isNegative = TMP_0_value < 0;
			TMP_0_i = 0;
			TMP_1_btint_a = output_btint_a;
			TMP_1_btint_b = output_btint_b;
			TMP_1_overflow = output_overflow;
			zero_btint_a <= TMP_1_btint_a;
			zero_btint_b <= TMP_1_btint_b;
			zero_overflow <= TMP_1_overflow;
			TMP_5_value = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			begin : sv2v_autoblock_9
				integer i_1;
				for (i_1 = 0; i_1 < 16; i_1 = i_1 + 1)
					begin
						output_index_1 = i_1;
						output_value_1 = 0;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (0)
							0: begin
								output_btint_a_3[output_index_1] = 0;
								output_btint_b_3[output_index_1] = 1;
							end
						endcase
						TMP_7_btint_a = output_btint_a_3;
						TMP_7_btint_b = output_btint_b_3;
						TMP_7_overflow = output_overflow_3;
						output_btint_a_2 = TMP_7_btint_a;
						output_btint_b_2 = TMP_7_btint_b;
						output_overflow_2 = TMP_7_overflow;
					end
			end
			TMP_5_isNegative = TMP_5_value < 0;
			TMP_5_i = 0;
			TMP_6_btint_a = output_btint_a_2;
			TMP_6_btint_b = output_btint_b_2;
			TMP_6_overflow = output_overflow_2;
			zero_expanded_btint_a <= TMP_6_btint_a;
			zero_expanded_btint_b <= TMP_6_btint_b;
			zero_expanded_overflow <= TMP_6_overflow;
			input_a_btint_a = 0;
			input_a_btint_b = 0;
			input_a_overflow = 0;
			input_b_btint_a = 0;
			input_b_btint_b = 0;
			input_b_overflow = 0;
			a_btint_a = 0;
			a_btint_b = 0;
			a_overflow = 0;
			state_btint_a = 0;
			state_btint_b = 0;
			state_overflow = 0;
			product_btint_a = 0;
			product_btint_b = 0;
			product_overflow = 0;
			adder_subtractor_b_btint_a <= zero_btint_a;
			adder_subtractor_b_btint_b <= zero_btint_b;
			adder_subtractor_b_overflow <= zero_overflow;
			shift_register_reset <= 1;
			multiplier_product_btint_a <= zero_expanded_btint_a;
			multiplier_product_btint_b <= zero_expanded_btint_b;
			multiplier_product_overflow <= zero_expanded_overflow;
			a_old_btint_a <= zero_btint_a;
			a_old_btint_b <= zero_btint_b;
			a_old_overflow = zero_overflow;
			b_old_btint_a <= zero_btint_a;
			b_old_btint_b <= zero_btint_b;
			b_old_overflow = zero_overflow;
			b_btint_a <= zero_btint_a;
			b_btint_b <= zero_btint_b;
			b_overflow <= zero_overflow;
			lock <= 11;
		end
		else begin
			adder_subtractor_b_btint_a <= adder_subtractor_b_btint_a_next;
			adder_subtractor_b_btint_b <= adder_subtractor_b_btint_b_next;
			adder_subtractor_b_overflow <= adder_subtractor_b_overflow_next;
			shift_register_reset <= shift_register_reset_next;
			multiplier_product_btint_a <= multiplier_product_btint_a_next;
			multiplier_product_btint_b <= multiplier_product_btint_b_next;
			multiplier_product_overflow <= multiplier_product_overflow_next;
			a_old_btint_a <= a_old_btint_a_next;
			a_old_btint_b <= a_old_btint_b_next;
			b_old_btint_a <= b_old_btint_a_next;
			b_old_btint_b <= b_old_btint_b_next;
			zero_btint_a <= zero_btint_a_next;
			zero_btint_b <= zero_btint_b_next;
			zero_overflow <= zero_overflow_next;
			zero_expanded_btint_a <= zero_expanded_btint_a_next;
			zero_expanded_btint_b <= zero_expanded_btint_b_next;
			zero_expanded_overflow <= zero_expanded_overflow_next;
			lock <= lock_next;
			b_btint_a <= b_btint_a_next;
			b_btint_b <= b_btint_b_next;
			b_overflow <= b_overflow_next;
			adder_subtractor_subtract <= adder_subtractor_subtract_next;
		end
	end
	ADDER_SUBTRACTOR0 adder_subtractor(
		.adder_subtractor_a_btint_a(adder_subtractor_a_btint_a),
		.adder_subtractor_a_btint_b(adder_subtractor_a_btint_b),
		.adder_subtractor_a_overflow(adder_subtractor_a_overflow),
		.adder_subtractor_b_btint_a(adder_subtractor_b_btint_a),
		.adder_subtractor_b_btint_b(adder_subtractor_b_btint_b),
		.adder_subtractor_b_overflow(adder_subtractor_b_overflow),
		.adder_subtractor_subtract(adder_subtractor_subtract),
		.adder_subtractor_sum_btint_a(adder_subtractor_sum_btint_a),
		.adder_subtractor_sum_btint_b(adder_subtractor_sum_btint_b),
		.adder_subtractor_sum_overflow(adder_subtractor_sum_overflow)
	);
	SHIFT_REGISTER shift_register(
		.shift_register_clock(multiplier_clock),
		.shift_register_reset(shift_register_reset),
		.shift_register_input_btint_a(adder_subtractor_sum_btint_a),
		.shift_register_input_btint_b(adder_subtractor_sum_btint_b),
		.shift_register_input_overflow(adder_subtractor_sum_overflow),
		.shift_register_state_btint_a(shift_register_state_btint_a),
		.shift_register_state_btint_b(shift_register_state_btint_b),
		.shift_register_state_overflow(shift_register_state_overflow),
		.shift_register_output_btint_a(adder_subtractor_a_btint_a),
		.shift_register_output_btint_b(adder_subtractor_a_btint_b),
		.shift_register_output_overflow(adder_subtractor_a_overflow)
	);
	initial _sv2v_0 = 0;
endmodule
module ADDER_SUBTRACTOR0 (
	adder_subtractor_a_btint_a,
	adder_subtractor_a_btint_b,
	adder_subtractor_a_overflow,
	adder_subtractor_b_btint_a,
	adder_subtractor_b_btint_b,
	adder_subtractor_b_overflow,
	adder_subtractor_subtract,
	adder_subtractor_sum_btint_a,
	adder_subtractor_sum_btint_b,
	adder_subtractor_sum_overflow
);
	reg _sv2v_0;
	input wire [7:0] adder_subtractor_a_btint_a;
	input wire [7:0] adder_subtractor_a_btint_b;
	input wire [1:0] adder_subtractor_a_overflow;
	input wire [7:0] adder_subtractor_b_btint_a;
	input wire [7:0] adder_subtractor_b_btint_b;
	input wire [1:0] adder_subtractor_b_overflow;
	input wire adder_subtractor_subtract;
	output reg [8:0] adder_subtractor_sum_btint_a;
	output reg [8:0] adder_subtractor_sum_btint_b;
	output reg [1:0] adder_subtractor_sum_overflow;
	wire one;
	reg input_a [0:1][0:7];
	reg input_b [0:1][0:7];
	wire output_sum [0:1][0:8];
	wire fulladder_sum [0:7];
	wire fulladder_carry_out [0:6];
	always @(*) begin : source
		if (_sv2v_0)
			;
		begin : sv2v_autoblock_1
			integer i;
			for (i = 0; i < 8; i = i + 1)
				begin
					input_a[0][i] = adder_subtractor_a_btint_a[i];
					input_a[1][i] = adder_subtractor_a_btint_b[i];
					input_b[0][i] = adder_subtractor_b_btint_a[i] ^ adder_subtractor_subtract;
					input_b[1][i] = adder_subtractor_b_btint_b[i] ^ adder_subtractor_subtract;
				end
		end
	end
	always @(*) begin : sink
		reg [8:0] sum_btint_a;
		reg [8:0] sum_btint_b;
		reg [1:0] sum_overflow;
		integer TMP_0;
		integer sum_index;
		integer sum_value;
		reg [8:0] output_btint_a;
		reg [8:0] output_btint_b;
		reg [1:0] output_overflow;
		reg [8:0] TMP_1_btint_a;
		reg [8:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		if (_sv2v_0)
			;
		TMP_0 = 0;
		output_btint_a = 0;
		output_btint_b = 0;
		output_overflow = 0;
		TMP_1_btint_a = 0;
		TMP_1_btint_b = 0;
		TMP_1_overflow = 0;
		sum_btint_a = 0;
		sum_btint_b = 0;
		sum_overflow = 0;
		begin : sv2v_autoblock_2
			integer i;
			for (i = 0; i < 9; i = i + 1)
				begin
					sum_btint_a[i] = output_sum[0][i];
					sum_btint_b[i] = output_sum[1][i];
				end
		end
		sum_index = 8;
		TMP_0 = (sum_btint_a[sum_index] + sum_btint_b[sum_index]) - 1;
		sum_value = TMP_0;
		output_btint_a = 0;
		output_btint_b = 0;
		output_overflow = 0;
		output_btint_a = sum_btint_a;
		output_btint_b = sum_btint_b;
		output_overflow = sum_overflow;
		case (sum_value)
			-1: begin
				output_overflow[0] = 0;
				output_overflow[1] = 0;
			end
			0: begin
				output_overflow[0] = 0;
				output_overflow[1] = 1;
			end
			1: begin
				output_overflow[0] = 1;
				output_overflow[1] = 1;
			end
			default:
				;
		endcase
		TMP_1_btint_a = output_btint_a;
		TMP_1_btint_b = output_btint_b;
		TMP_1_overflow = output_overflow;
		sum_btint_a = TMP_1_btint_a;
		sum_btint_b = TMP_1_btint_b;
		sum_overflow = TMP_1_overflow;
		adder_subtractor_sum_btint_a = sum_btint_a;
		adder_subtractor_sum_btint_b = sum_btint_b;
		adder_subtractor_sum_overflow = sum_overflow;
	end
	FULLADDER fulladder_0_0(
		.fulladder_a(input_a[0][0]),
		.fulladder_b(input_b[0][0]),
		.fulladder_carry_in(input_a[1][0]),
		.fulladder_sum(fulladder_sum[0]),
		.fulladder_carry_out(fulladder_carry_out[0])
	);
	FULLADDER fulladder_0_1(
		.fulladder_a(input_a[0][1]),
		.fulladder_b(input_b[0][1]),
		.fulladder_carry_in(input_a[1][1]),
		.fulladder_sum(fulladder_sum[1]),
		.fulladder_carry_out(fulladder_carry_out[1])
	);
	FULLADDER fulladder_0_2(
		.fulladder_a(input_a[0][2]),
		.fulladder_b(input_b[0][2]),
		.fulladder_carry_in(input_a[1][2]),
		.fulladder_sum(fulladder_sum[2]),
		.fulladder_carry_out(fulladder_carry_out[2])
	);
	FULLADDER fulladder_0_3(
		.fulladder_a(input_a[0][3]),
		.fulladder_b(input_b[0][3]),
		.fulladder_carry_in(input_a[1][3]),
		.fulladder_sum(fulladder_sum[3]),
		.fulladder_carry_out(fulladder_carry_out[3])
	);
	FULLADDER fulladder_0_4(
		.fulladder_a(input_a[0][4]),
		.fulladder_b(input_b[0][4]),
		.fulladder_carry_in(input_a[1][4]),
		.fulladder_sum(fulladder_sum[4]),
		.fulladder_carry_out(fulladder_carry_out[4])
	);
	FULLADDER fulladder_0_5(
		.fulladder_a(input_a[0][5]),
		.fulladder_b(input_b[0][5]),
		.fulladder_carry_in(input_a[1][5]),
		.fulladder_sum(fulladder_sum[5]),
		.fulladder_carry_out(fulladder_carry_out[5])
	);
	FULLADDER fulladder_0_6(
		.fulladder_a(input_a[0][6]),
		.fulladder_b(input_b[0][6]),
		.fulladder_carry_in(input_a[1][6]),
		.fulladder_sum(fulladder_sum[6]),
		.fulladder_carry_out(fulladder_carry_out[6])
	);
	FULLADDER fulladder_0_7(
		.fulladder_a(input_a[0][7]),
		.fulladder_b(input_b[0][7]),
		.fulladder_carry_in(input_a[1][7]),
		.fulladder_sum(fulladder_sum[7]),
		.fulladder_carry_out(output_sum[1][8])
	);
	FULLADDER fulladder_1_0(
		.fulladder_a(one),
		.fulladder_b(fulladder_sum[0]),
		.fulladder_carry_in(input_b[1][0]),
		.fulladder_sum(output_sum[1][0]),
		.fulladder_carry_out(output_sum[0][1])
	);
	FULLADDER fulladder_1_1(
		.fulladder_a(fulladder_carry_out[0]),
		.fulladder_b(fulladder_sum[1]),
		.fulladder_carry_in(input_b[1][1]),
		.fulladder_sum(output_sum[1][1]),
		.fulladder_carry_out(output_sum[0][2])
	);
	FULLADDER fulladder_1_2(
		.fulladder_a(fulladder_carry_out[1]),
		.fulladder_b(fulladder_sum[2]),
		.fulladder_carry_in(input_b[1][2]),
		.fulladder_sum(output_sum[1][2]),
		.fulladder_carry_out(output_sum[0][3])
	);
	FULLADDER fulladder_1_3(
		.fulladder_a(fulladder_carry_out[2]),
		.fulladder_b(fulladder_sum[3]),
		.fulladder_carry_in(input_b[1][3]),
		.fulladder_sum(output_sum[1][3]),
		.fulladder_carry_out(output_sum[0][4])
	);
	FULLADDER fulladder_1_4(
		.fulladder_a(fulladder_carry_out[3]),
		.fulladder_b(fulladder_sum[4]),
		.fulladder_carry_in(input_b[1][4]),
		.fulladder_sum(output_sum[1][4]),
		.fulladder_carry_out(output_sum[0][5])
	);
	FULLADDER fulladder_1_5(
		.fulladder_a(fulladder_carry_out[4]),
		.fulladder_b(fulladder_sum[5]),
		.fulladder_carry_in(input_b[1][5]),
		.fulladder_sum(output_sum[1][5]),
		.fulladder_carry_out(output_sum[0][6])
	);
	FULLADDER fulladder_1_6(
		.fulladder_a(fulladder_carry_out[5]),
		.fulladder_b(fulladder_sum[6]),
		.fulladder_carry_in(input_b[1][6]),
		.fulladder_sum(output_sum[1][6]),
		.fulladder_carry_out(output_sum[0][7])
	);
	FULLADDER fulladder_1_7(
		.fulladder_a(fulladder_carry_out[6]),
		.fulladder_b(fulladder_sum[7]),
		.fulladder_carry_in(input_b[1][7]),
		.fulladder_sum(output_sum[1][7]),
		.fulladder_carry_out(output_sum[0][8])
	);
	initial _sv2v_0 = 0;
endmodule
module SHIFT_REGISTER (
	shift_register_clock,
	shift_register_reset,
	shift_register_input_btint_a,
	shift_register_input_btint_b,
	shift_register_input_overflow,
	shift_register_state_btint_a,
	shift_register_state_btint_b,
	shift_register_state_overflow,
	shift_register_output_btint_a,
	shift_register_output_btint_b,
	shift_register_output_overflow
);
	reg _sv2v_0;
	input wire shift_register_clock;
	input wire shift_register_reset;
	input wire [8:0] shift_register_input_btint_a;
	input wire [8:0] shift_register_input_btint_b;
	input wire [1:0] shift_register_input_overflow;
	output reg [7:0] shift_register_state_btint_a;
	output reg [7:0] shift_register_state_btint_b;
	output reg [1:0] shift_register_state_overflow;
	output reg [7:0] shift_register_output_btint_a;
	output reg [7:0] shift_register_output_btint_b;
	output reg [1:0] shift_register_output_overflow;
	reg [7:0] shift_register_state_btint_a_next;
	reg [7:0] shift_register_state_btint_b_next;
	reg [1:0] shift_register_state_overflow_next;
	reg [7:0] shift_register_output_btint_a_next;
	reg [7:0] shift_register_output_btint_b_next;
	reg [1:0] shift_register_output_overflow_next;
	task shift_func;
		integer TMP_0_value;
		reg [7:0] output_btint_a;
		reg [7:0] output_btint_b;
		reg [1:0] output_overflow;
		integer output_index;
		integer output_value;
		reg [7:0] output_btint_a_1;
		reg [7:0] output_btint_b_1;
		reg [1:0] output_overflow_1;
		reg [7:0] TMP_2_btint_a;
		reg [7:0] TMP_2_btint_b;
		reg [1:0] TMP_2_overflow;
		reg TMP_0_isNegative;
		integer TMP_0_i;
		reg [7:0] TMP_1_btint_a;
		reg [7:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		reg [7:0] zero_btint_a;
		reg [7:0] zero_btint_b;
		reg [1:0] zero_overflow;
		reg [8:0] input_btint_a;
		reg [8:0] input_btint_b;
		reg [1:0] input_overflow;
		reg [7:0] state_btint_a;
		reg [7:0] state_btint_b;
		reg [1:0] state_overflow;
		integer state_index;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg [7:0] TMP_6_btint_a;
		reg [7:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		reg [7:0] TMP_5_btint_a;
		reg [7:0] TMP_5_btint_b;
		reg [1:0] TMP_5_overflow;
		integer TMP_7;
		integer input_index;
		integer state_index_1;
		integer state_value;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		reg [7:0] TMP_8_btint_a;
		reg [7:0] TMP_8_btint_b;
		reg [1:0] TMP_8_overflow;
		integer input_index_1;
		reg [8:0] output_btint_a_5;
		reg [8:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
		integer output_index_2;
		integer output_value_2;
		reg [8:0] output_btint_a_6;
		reg [8:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		reg [8:0] TMP_11_btint_a;
		reg [8:0] TMP_11_btint_b;
		reg [1:0] TMP_11_overflow;
		reg [8:0] TMP_10_btint_a;
		reg [8:0] TMP_10_btint_b;
		reg [1:0] TMP_10_overflow;
		reg [8:0] output_btint_a_7;
		reg [8:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		integer TMP_14;
		integer output_index_3;
		integer input_msd;
		integer TMP_16;
		integer input_msd_1_1;
		integer TMP_18;
		integer input_msd_2_1;
		integer output_index_4;
		integer output_value_3;
		reg [8:0] output_btint_a_8;
		reg [8:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		reg [8:0] TMP_20_btint_a;
		reg [8:0] TMP_20_btint_b;
		reg [1:0] TMP_20_overflow;
		reg [8:0] TMP_21_btint_a;
		reg [8:0] TMP_21_btint_b;
		reg [1:0] TMP_21_overflow;
		reg [8:0] TMP_22_btint_a;
		reg [8:0] TMP_22_btint_b;
		reg [1:0] TMP_22_overflow;
		reg [8:0] TMP_13_btint_a;
		reg [8:0] TMP_13_btint_b;
		reg [1:0] TMP_13_overflow;
		integer TMP_13_from;
		integer TMP_13_to;
		reg [7:0] output_btint_a_9;
		reg [7:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg [7:0] TMP_23_btint_a;
		reg [7:0] TMP_23_btint_b;
		reg [1:0] TMP_23_overflow;
		begin
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			output_index_1 = 0;
			output_value_1 = 0;
			output_btint_a_3 = 0;
			output_btint_b_3 = 0;
			output_overflow_3 = 0;
			TMP_6_btint_a = 0;
			TMP_6_btint_b = 0;
			TMP_6_overflow = 0;
			TMP_5_btint_a = 0;
			TMP_5_btint_b = 0;
			TMP_5_overflow = 0;
			TMP_7 = 0;
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			TMP_8_btint_a = 0;
			TMP_8_btint_b = 0;
			TMP_8_overflow = 0;
			output_btint_a_5 = 0;
			output_btint_b_5 = 0;
			output_overflow_5 = 0;
			output_index_2 = 0;
			output_value_2 = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			TMP_11_btint_a = 0;
			TMP_11_btint_b = 0;
			TMP_11_overflow = 0;
			TMP_10_btint_a = 0;
			TMP_10_btint_b = 0;
			TMP_10_overflow = 0;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			TMP_14 = 0;
			output_index_3 = 0;
			input_msd = 0;
			TMP_16 = 0;
			input_msd_1_1 = 0;
			TMP_18 = 0;
			input_msd_2_1 = 0;
			output_index_4 = 0;
			output_value_3 = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			TMP_20_btint_a = 0;
			TMP_20_btint_b = 0;
			TMP_20_overflow = 0;
			TMP_21_btint_a = 0;
			TMP_21_btint_b = 0;
			TMP_21_overflow = 0;
			TMP_22_btint_a = 0;
			TMP_22_btint_b = 0;
			TMP_22_overflow = 0;
			TMP_13_btint_a = 0;
			TMP_13_btint_b = 0;
			TMP_13_overflow = 0;
			TMP_13_from = 0;
			TMP_13_to = 0;
			output_btint_a_9 = 0;
			output_btint_b_9 = 0;
			output_overflow_9 = 0;
			TMP_23_btint_a = 0;
			TMP_23_btint_b = 0;
			TMP_23_overflow = 0;
			shift_register_output_btint_a_next = shift_register_output_btint_a;
			shift_register_output_btint_b_next = shift_register_output_btint_b;
			shift_register_output_overflow_next = shift_register_output_overflow;
			shift_register_state_btint_a_next = shift_register_state_btint_a;
			shift_register_state_btint_b_next = shift_register_state_btint_b;
			shift_register_state_overflow_next = shift_register_state_overflow;
			input_btint_a = shift_register_input_btint_a;
			input_btint_b = shift_register_input_btint_b;
			input_overflow = shift_register_input_overflow;
			state_btint_a = shift_register_state_btint_a;
			state_btint_b = shift_register_state_btint_b;
			state_overflow = shift_register_state_overflow;
			state_index = 1;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			output_btint_a_2 = state_btint_a;
			output_btint_b_2 = state_btint_b;
			output_overflow_2 = state_overflow;
			begin : sv2v_autoblock_1
				integer i_1;
				for (i_1 = 0; i_1 < state_index; i_1 = i_1 + 1)
					begin
						output_btint_a_2 = output_btint_a_2 >>> 1;
						output_btint_b_2 = output_btint_b_2 >>> 1;
						output_index_1 = 7;
						output_value_1 = 0;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (0)
							-1: begin
								output_btint_a_3[output_index_1] = 0;
								output_btint_b_3[output_index_1] = 0;
							end
							0: begin
								output_btint_a_3[output_index_1] = 0;
								output_btint_b_3[output_index_1] = 1;
							end
							1: begin
								output_btint_a_3[output_index_1] = 1;
								output_btint_b_3[output_index_1] = 1;
							end
							default:
								;
						endcase
						TMP_6_btint_a = output_btint_a_3;
						TMP_6_btint_b = output_btint_b_3;
						TMP_6_overflow = output_overflow_3;
						output_btint_a_2 = TMP_6_btint_a;
						output_btint_b_2 = TMP_6_btint_b;
						output_overflow_2 = TMP_6_overflow;
					end
			end
			TMP_5_btint_a = output_btint_a_2;
			TMP_5_btint_b = output_btint_b_2;
			TMP_5_overflow = output_overflow_2;
			state_btint_a = TMP_5_btint_a;
			state_btint_b = TMP_5_btint_b;
			state_overflow = TMP_5_overflow;
			input_index = 0;
			TMP_7 = (input_btint_a[input_index] + input_btint_b[input_index]) - 1;
			state_index_1 = 7;
			state_value = TMP_7;
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			output_btint_a_4 = state_btint_a;
			output_btint_b_4 = state_btint_b;
			output_overflow_4 = state_overflow;
			case (state_value)
				-1: begin
					output_btint_a_4[state_index_1] = 0;
					output_btint_b_4[state_index_1] = 0;
				end
				0: begin
					output_btint_a_4[state_index_1] = 0;
					output_btint_b_4[state_index_1] = 1;
				end
				1: begin
					output_btint_a_4[state_index_1] = 1;
					output_btint_b_4[state_index_1] = 1;
				end
				default:
					;
			endcase
			TMP_8_btint_a = output_btint_a_4;
			TMP_8_btint_b = output_btint_b_4;
			TMP_8_overflow = output_overflow_4;
			state_btint_a = TMP_8_btint_a;
			state_btint_b = TMP_8_btint_b;
			state_overflow = TMP_8_overflow;
			shift_register_state_btint_a_next = state_btint_a;
			shift_register_state_btint_b_next = state_btint_b;
			shift_register_state_overflow_next = state_overflow;
			input_index_1 = 1;
			output_btint_a_5 = 0;
			output_btint_b_5 = 0;
			output_overflow_5 = 0;
			output_btint_a_5 = input_btint_a;
			output_btint_b_5 = input_btint_b;
			output_overflow_5 = input_overflow;
			begin : sv2v_autoblock_2
				integer i_2;
				for (i_2 = 0; i_2 < input_index_1; i_2 = i_2 + 1)
					begin
						output_btint_a_5 = output_btint_a_5 >>> 1;
						output_btint_b_5 = output_btint_b_5 >>> 1;
						output_index_2 = 8;
						output_value_2 = 0;
						output_btint_a_6 = 0;
						output_btint_b_6 = 0;
						output_overflow_6 = 0;
						output_btint_a_6 = output_btint_a_5;
						output_btint_b_6 = output_btint_b_5;
						output_overflow_6 = output_overflow_5;
						case (0)
							-1: begin
								output_btint_a_6[output_index_2] = 0;
								output_btint_b_6[output_index_2] = 0;
							end
							0: begin
								output_btint_a_6[output_index_2] = 0;
								output_btint_b_6[output_index_2] = 1;
							end
							1: begin
								output_btint_a_6[output_index_2] = 1;
								output_btint_b_6[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_11_btint_a = output_btint_a_6;
						TMP_11_btint_b = output_btint_b_6;
						TMP_11_overflow = output_overflow_6;
						output_btint_a_5 = TMP_11_btint_a;
						output_btint_b_5 = TMP_11_btint_b;
						output_overflow_5 = TMP_11_overflow;
					end
			end
			TMP_10_btint_a = output_btint_a_5;
			TMP_10_btint_b = output_btint_b_5;
			TMP_10_overflow = output_overflow_5;
			input_btint_a = TMP_10_btint_a;
			input_btint_b = TMP_10_btint_b;
			input_overflow = TMP_10_overflow;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			output_btint_a_7 = input_btint_a;
			output_btint_b_7 = input_btint_b;
			output_overflow_7 = input_overflow;
			output_index_3 = 8;
			TMP_14 = (output_btint_a_7[output_index_3] + output_btint_b_7[output_index_3]) - 1;
			input_msd = TMP_14;
			output_index_3 = 7;
			TMP_16 = (output_btint_a_7[output_index_3] + output_btint_b_7[output_index_3]) - 1;
			input_msd_1_1 = TMP_16;
			output_index_3 = 6;
			TMP_18 = (output_btint_a_7[output_index_3] + output_btint_b_7[output_index_3]) - 1;
			input_msd_2_1 = TMP_18;
			case (input_msd)
				-1:
					if (input_msd_1_1 == 1) begin
						input_msd = 0;
						input_msd_1_1 = -2'sd1;
					end
					else if ((input_msd_1_1 == 0) && (input_msd_2_1 == 1)) begin
						input_msd = 0;
						input_msd_2_1 = -2'sd1;
						input_msd_1_1 = input_msd_2_1;
					end
				1:
					if (input_msd_1_1 == -2'sd1) begin
						input_msd = 0;
						input_msd_1_1 = 1;
					end
					else if ((input_msd_1_1 == 0) && (input_msd_2_1 == -2'sd1)) begin
						input_msd = 0;
						input_msd_2_1 = 1;
						input_msd_1_1 = input_msd_2_1;
					end
			endcase
			output_index_4 = 8;
			output_value_3 = input_msd;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			output_btint_a_8 = output_btint_a_7;
			output_btint_b_8 = output_btint_b_7;
			output_overflow_8 = output_overflow_7;
			case (output_value_3)
				-1: begin
					output_btint_a_8[output_index_4] = 0;
					output_btint_b_8[output_index_4] = 0;
				end
				0: begin
					output_btint_a_8[output_index_4] = 0;
					output_btint_b_8[output_index_4] = 1;
				end
				1: begin
					output_btint_a_8[output_index_4] = 1;
					output_btint_b_8[output_index_4] = 1;
				end
				default:
					;
			endcase
			TMP_20_btint_a = output_btint_a_8;
			TMP_20_btint_b = output_btint_b_8;
			TMP_20_overflow = output_overflow_8;
			output_btint_a_7 = TMP_20_btint_a;
			output_btint_b_7 = TMP_20_btint_b;
			output_overflow_7 = TMP_20_overflow;
			output_index_4 = 7;
			output_value_3 = input_msd_1_1;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			output_btint_a_8 = output_btint_a_7;
			output_btint_b_8 = output_btint_b_7;
			output_overflow_8 = output_overflow_7;
			case (output_value_3)
				-1: begin
					output_btint_a_8[output_index_4] = 0;
					output_btint_b_8[output_index_4] = 0;
				end
				0: begin
					output_btint_a_8[output_index_4] = 0;
					output_btint_b_8[output_index_4] = 1;
				end
				1: begin
					output_btint_a_8[output_index_4] = 1;
					output_btint_b_8[output_index_4] = 1;
				end
				default:
					;
			endcase
			TMP_21_btint_a = output_btint_a_8;
			TMP_21_btint_b = output_btint_b_8;
			TMP_21_overflow = output_overflow_8;
			output_btint_a_7 = TMP_21_btint_a;
			output_btint_b_7 = TMP_21_btint_b;
			output_overflow_7 = TMP_21_overflow;
			output_index_4 = 6;
			output_value_3 = input_msd_2_1;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			output_btint_a_8 = output_btint_a_7;
			output_btint_b_8 = output_btint_b_7;
			output_overflow_8 = output_overflow_7;
			case (output_value_3)
				-1: begin
					output_btint_a_8[output_index_4] = 0;
					output_btint_b_8[output_index_4] = 0;
				end
				0: begin
					output_btint_a_8[output_index_4] = 0;
					output_btint_b_8[output_index_4] = 1;
				end
				1: begin
					output_btint_a_8[output_index_4] = 1;
					output_btint_b_8[output_index_4] = 1;
				end
				default:
					;
			endcase
			TMP_22_btint_a = output_btint_a_8;
			TMP_22_btint_b = output_btint_b_8;
			TMP_22_overflow = output_overflow_8;
			output_btint_a_7 = TMP_22_btint_a;
			output_btint_b_7 = TMP_22_btint_b;
			output_overflow_7 = TMP_22_overflow;
			TMP_13_btint_a = output_btint_a_7;
			TMP_13_btint_b = output_btint_b_7;
			TMP_13_overflow = output_overflow_7;
			TMP_13_from = 8;
			TMP_13_to = 0;
			output_btint_a_9 = 0;
			output_btint_b_9 = 0;
			output_overflow_9 = 0;
			output_btint_a_9 = TMP_13_btint_a[TMP_13_to+:8];
			output_btint_b_9 = TMP_13_btint_b[TMP_13_to+:8];
			output_overflow_9 = TMP_13_overflow;
			TMP_23_btint_a = output_btint_a_9;
			TMP_23_btint_b = output_btint_b_9;
			TMP_23_overflow = output_overflow_9;
			shift_register_output_btint_a_next = TMP_23_btint_a;
			shift_register_output_btint_b_next = TMP_23_btint_b;
			shift_register_output_overflow_next = TMP_23_overflow;
		end
	endtask
	always @(shift_register_state_overflow or shift_register_state_btint_b or shift_register_state_btint_a or shift_register_input_overflow or shift_register_input_btint_b or shift_register_input_btint_a or shift_register_state_overflow or shift_register_state_btint_b or shift_register_state_btint_a or shift_register_output_overflow or shift_register_output_btint_b or shift_register_output_btint_a or _sv2v_0) begin : shift_comb
		if (_sv2v_0)
			;
		shift_func;
	end
	always @(posedge shift_register_clock) begin : shift_ff
		if (shift_register_reset) begin : sv2v_autoblock_3
			integer TMP_0_value;
			reg [7:0] output_btint_a;
			reg [7:0] output_btint_b;
			reg [1:0] output_overflow;
			integer output_index;
			integer output_value;
			reg [7:0] output_btint_a_1;
			reg [7:0] output_btint_b_1;
			reg [1:0] output_overflow_1;
			reg [7:0] TMP_2_btint_a;
			reg [7:0] TMP_2_btint_b;
			reg [1:0] TMP_2_overflow;
			reg TMP_0_isNegative;
			integer TMP_0_i;
			reg [7:0] TMP_1_btint_a;
			reg [7:0] TMP_1_btint_b;
			reg [1:0] TMP_1_overflow;
			reg [7:0] zero_btint_a;
			reg [7:0] zero_btint_b;
			reg [1:0] zero_overflow;
			reg [8:0] input_btint_a;
			reg [8:0] input_btint_b;
			reg [1:0] input_overflow;
			reg [7:0] state_btint_a;
			reg [7:0] state_btint_b;
			reg [1:0] state_overflow;
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_4
				integer i;
				for (i = 0; i < 8; i = i + 1)
					begin
						output_index = i;
						output_value = 0;
						output_btint_a_1 = 0;
						output_btint_b_1 = 0;
						output_overflow_1 = 0;
						output_btint_a_1 = output_btint_a;
						output_btint_b_1 = output_btint_b;
						output_overflow_1 = output_overflow;
						case (0)
							-1: begin
								output_btint_a_1[output_index] = 0;
								output_btint_b_1[output_index] = 0;
							end
							0: begin
								output_btint_a_1[output_index] = 0;
								output_btint_b_1[output_index] = 1;
							end
							1: begin
								output_btint_a_1[output_index] = 1;
								output_btint_b_1[output_index] = 1;
							end
							default:
								;
						endcase
						TMP_2_btint_a = output_btint_a_1;
						TMP_2_btint_b = output_btint_b_1;
						TMP_2_overflow = output_overflow_1;
						output_btint_a = TMP_2_btint_a;
						output_btint_b = TMP_2_btint_b;
						output_overflow = TMP_2_overflow;
					end
			end
			TMP_0_isNegative = TMP_0_value < 0;
			TMP_0_i = 0;
			TMP_1_btint_a = output_btint_a;
			TMP_1_btint_b = output_btint_b;
			TMP_1_overflow = output_overflow;
			zero_btint_a = TMP_1_btint_a;
			zero_btint_b = TMP_1_btint_b;
			zero_overflow = TMP_1_overflow;
			input_btint_a = 0;
			input_btint_b = 0;
			input_overflow = 0;
			state_btint_a = 0;
			state_btint_b = 0;
			state_overflow = 0;
			shift_register_state_btint_a <= zero_btint_a;
			shift_register_state_btint_b <= zero_btint_b;
			shift_register_state_overflow <= zero_overflow;
			shift_register_output_btint_a <= zero_btint_a;
			shift_register_output_btint_b <= zero_btint_b;
			shift_register_output_overflow <= zero_overflow;
		end
		else begin
			shift_register_state_btint_a <= shift_register_state_btint_a_next;
			shift_register_state_btint_b <= shift_register_state_btint_b_next;
			shift_register_state_overflow <= shift_register_state_overflow_next;
			shift_register_output_btint_a <= shift_register_output_btint_a_next;
			shift_register_output_btint_b <= shift_register_output_btint_b_next;
			shift_register_output_overflow <= shift_register_output_overflow_next;
		end
	end
	initial _sv2v_0 = 0;
endmodule
module CONTROLLER (
	controller_clock,
	controller_reset,
	controller_m_a_btint_a0,
	controller_m_a_btint_b0,
	controller_m_a_overflow0,
	controller_m_a_btint_a1,
	controller_m_a_btint_b1,
	controller_m_a_overflow1,
	controller_m_a_btint_a2,
	controller_m_a_btint_b2,
	controller_m_a_overflow2,
	controller_m_a_btint_a3,
	controller_m_a_btint_b3,
	controller_m_a_overflow3,
	controller_m_a_btint_a4,
	controller_m_a_btint_b4,
	controller_m_a_overflow4,
	controller_m_a_btint_a5,
	controller_m_a_btint_b5,
	controller_m_a_overflow5,
	controller_m_a_btint_a6,
	controller_m_a_btint_b6,
	controller_m_a_overflow6,
	controller_m_a_btint_a7,
	controller_m_a_btint_b7,
	controller_m_a_overflow7,
	controller_m_a_btint_a8,
	controller_m_a_btint_b8,
	controller_m_a_overflow8,
	controller_m_a_btint_a9,
	controller_m_a_btint_b9,
	controller_m_a_overflow9,
	controller_m_a_btint_a10,
	controller_m_a_btint_b10,
	controller_m_a_overflow10,
	controller_m_a_btint_a11,
	controller_m_a_btint_b11,
	controller_m_a_overflow11,
	controller_m_b_btint_a0,
	controller_m_b_btint_b0,
	controller_m_b_overflow0,
	controller_m_b_btint_a1,
	controller_m_b_btint_b1,
	controller_m_b_overflow1,
	controller_m_b_btint_a2,
	controller_m_b_btint_b2,
	controller_m_b_overflow2,
	controller_m_b_btint_a3,
	controller_m_b_btint_b3,
	controller_m_b_overflow3,
	controller_m_b_btint_a4,
	controller_m_b_btint_b4,
	controller_m_b_overflow4,
	controller_m_b_btint_a5,
	controller_m_b_btint_b5,
	controller_m_b_overflow5,
	controller_m_b_btint_a6,
	controller_m_b_btint_b6,
	controller_m_b_overflow6,
	controller_m_b_btint_a7,
	controller_m_b_btint_b7,
	controller_m_b_overflow7,
	controller_m_b_btint_a8,
	controller_m_b_btint_b8,
	controller_m_b_overflow8,
	controller_m_b_btint_a9,
	controller_m_b_btint_b9,
	controller_m_b_overflow9,
	controller_m_b_btint_a10,
	controller_m_b_btint_b10,
	controller_m_b_overflow10,
	controller_m_b_btint_a11,
	controller_m_b_btint_b11,
	controller_m_b_overflow11,
	controller_v_btint_a,
	controller_v_btint_b,
	controller_v_overflow,
	controller_op,
	controller_a_out_btint_a0,
	controller_a_out_btint_b0,
	controller_a_out_overflow0,
	controller_a_out_btint_a1,
	controller_a_out_btint_b1,
	controller_a_out_overflow1,
	controller_a_out_btint_a2,
	controller_a_out_btint_b2,
	controller_a_out_overflow2,
	controller_a_out_btint_a3,
	controller_a_out_btint_b3,
	controller_a_out_overflow3,
	controller_a_out_btint_a4,
	controller_a_out_btint_b4,
	controller_a_out_overflow4,
	controller_a_out_btint_a5,
	controller_a_out_btint_b5,
	controller_a_out_overflow5,
	controller_a_out_btint_a6,
	controller_a_out_btint_b6,
	controller_a_out_overflow6,
	controller_a_out_btint_a7,
	controller_a_out_btint_b7,
	controller_a_out_overflow7,
	controller_a_out_btint_a8,
	controller_a_out_btint_b8,
	controller_a_out_overflow8,
	controller_a_out_btint_a9,
	controller_a_out_btint_b9,
	controller_a_out_overflow9,
	controller_a_out_btint_a10,
	controller_a_out_btint_b10,
	controller_a_out_overflow10,
	controller_a_out_btint_a11,
	controller_a_out_btint_b11,
	controller_a_out_overflow11,
	controller_c_out_u_btint_a0,
	controller_c_out_u_btint_b0,
	controller_c_out_u_overflow0,
	controller_c_out_u_btint_a1,
	controller_c_out_u_btint_b1,
	controller_c_out_u_overflow1,
	controller_c_out_u_btint_a2,
	controller_c_out_u_btint_b2,
	controller_c_out_u_overflow2,
	controller_c_out_u_btint_a3,
	controller_c_out_u_btint_b3,
	controller_c_out_u_overflow3,
	controller_c_out_u_btint_a4,
	controller_c_out_u_btint_b4,
	controller_c_out_u_overflow4,
	controller_c_out_u_btint_a5,
	controller_c_out_u_btint_b5,
	controller_c_out_u_overflow5,
	controller_c_out_u_btint_a6,
	controller_c_out_u_btint_b6,
	controller_c_out_u_overflow6,
	controller_c_out_u_btint_a7,
	controller_c_out_u_btint_b7,
	controller_c_out_u_overflow7,
	controller_c_out_u_btint_a8,
	controller_c_out_u_btint_b8,
	controller_c_out_u_overflow8,
	controller_c_out_u_btint_a9,
	controller_c_out_u_btint_b9,
	controller_c_out_u_overflow9,
	controller_c_out_u_btint_a10,
	controller_c_out_u_btint_b10,
	controller_c_out_u_overflow10,
	controller_c_out_u_btint_a11,
	controller_c_out_u_btint_b11,
	controller_c_out_u_overflow11,
	controller_c_out_d_btint_a0,
	controller_c_out_d_btint_b0,
	controller_c_out_d_overflow0,
	controller_c_out_d_btint_a1,
	controller_c_out_d_btint_b1,
	controller_c_out_d_overflow1,
	controller_c_out_d_btint_a2,
	controller_c_out_d_btint_b2,
	controller_c_out_d_overflow2,
	controller_c_out_d_btint_a3,
	controller_c_out_d_btint_b3,
	controller_c_out_d_overflow3,
	controller_c_out_d_btint_a4,
	controller_c_out_d_btint_b4,
	controller_c_out_d_overflow4,
	controller_c_out_d_btint_a5,
	controller_c_out_d_btint_b5,
	controller_c_out_d_overflow5,
	controller_c_out_d_btint_a6,
	controller_c_out_d_btint_b6,
	controller_c_out_d_overflow6,
	controller_c_out_d_btint_a7,
	controller_c_out_d_btint_b7,
	controller_c_out_d_overflow7,
	controller_c_out_d_btint_a8,
	controller_c_out_d_btint_b8,
	controller_c_out_d_overflow8,
	controller_c_out_d_btint_a9,
	controller_c_out_d_btint_b9,
	controller_c_out_d_overflow9,
	controller_c_out_d_btint_a10,
	controller_c_out_d_btint_b10,
	controller_c_out_d_overflow10,
	controller_c_out_d_btint_a11,
	controller_c_out_d_btint_b11,
	controller_c_out_d_overflow11,
	controller_s_out0,
	controller_s_out1,
	controller_s_out2,
	controller_s_out3,
	controller_s_out4,
	controller_s_out5,
	controller_s_out6,
	controller_s_out7,
	controller_s_out8,
	controller_s_out9,
	controller_s_out10,
	controller_s_out11,
	controller_a_in_btint_a0,
	controller_a_in_btint_b0,
	controller_a_in_overflow0,
	controller_a_in_btint_a1,
	controller_a_in_btint_b1,
	controller_a_in_overflow1,
	controller_a_in_btint_a2,
	controller_a_in_btint_b2,
	controller_a_in_overflow2,
	controller_a_in_btint_a3,
	controller_a_in_btint_b3,
	controller_a_in_overflow3,
	controller_a_in_btint_a4,
	controller_a_in_btint_b4,
	controller_a_in_overflow4,
	controller_a_in_btint_a5,
	controller_a_in_btint_b5,
	controller_a_in_overflow5,
	controller_a_in_btint_a6,
	controller_a_in_btint_b6,
	controller_a_in_overflow6,
	controller_a_in_btint_a7,
	controller_a_in_btint_b7,
	controller_a_in_overflow7,
	controller_a_in_btint_a8,
	controller_a_in_btint_b8,
	controller_a_in_overflow8,
	controller_a_in_btint_a9,
	controller_a_in_btint_b9,
	controller_a_in_overflow9,
	controller_a_in_btint_a10,
	controller_a_in_btint_b10,
	controller_a_in_overflow10,
	controller_a_in_btint_a11,
	controller_a_in_btint_b11,
	controller_a_in_overflow11,
	controller_c_in_u_btint_a0,
	controller_c_in_u_btint_b0,
	controller_c_in_u_overflow0,
	controller_c_in_u_btint_a1,
	controller_c_in_u_btint_b1,
	controller_c_in_u_overflow1,
	controller_c_in_u_btint_a2,
	controller_c_in_u_btint_b2,
	controller_c_in_u_overflow2,
	controller_c_in_u_btint_a3,
	controller_c_in_u_btint_b3,
	controller_c_in_u_overflow3,
	controller_c_in_u_btint_a4,
	controller_c_in_u_btint_b4,
	controller_c_in_u_overflow4,
	controller_c_in_u_btint_a5,
	controller_c_in_u_btint_b5,
	controller_c_in_u_overflow5,
	controller_c_in_u_btint_a6,
	controller_c_in_u_btint_b6,
	controller_c_in_u_overflow6,
	controller_c_in_u_btint_a7,
	controller_c_in_u_btint_b7,
	controller_c_in_u_overflow7,
	controller_c_in_u_btint_a8,
	controller_c_in_u_btint_b8,
	controller_c_in_u_overflow8,
	controller_c_in_u_btint_a9,
	controller_c_in_u_btint_b9,
	controller_c_in_u_overflow9,
	controller_c_in_u_btint_a10,
	controller_c_in_u_btint_b10,
	controller_c_in_u_overflow10,
	controller_c_in_u_btint_a11,
	controller_c_in_u_btint_b11,
	controller_c_in_u_overflow11,
	controller_c_in_d_btint_a0,
	controller_c_in_d_btint_b0,
	controller_c_in_d_overflow0,
	controller_c_in_d_btint_a1,
	controller_c_in_d_btint_b1,
	controller_c_in_d_overflow1,
	controller_c_in_d_btint_a2,
	controller_c_in_d_btint_b2,
	controller_c_in_d_overflow2,
	controller_c_in_d_btint_a3,
	controller_c_in_d_btint_b3,
	controller_c_in_d_overflow3,
	controller_c_in_d_btint_a4,
	controller_c_in_d_btint_b4,
	controller_c_in_d_overflow4,
	controller_c_in_d_btint_a5,
	controller_c_in_d_btint_b5,
	controller_c_in_d_overflow5,
	controller_c_in_d_btint_a6,
	controller_c_in_d_btint_b6,
	controller_c_in_d_overflow6,
	controller_c_in_d_btint_a7,
	controller_c_in_d_btint_b7,
	controller_c_in_d_overflow7,
	controller_c_in_d_btint_a8,
	controller_c_in_d_btint_b8,
	controller_c_in_d_overflow8,
	controller_c_in_d_btint_a9,
	controller_c_in_d_btint_b9,
	controller_c_in_d_overflow9,
	controller_c_in_d_btint_a10,
	controller_c_in_d_btint_b10,
	controller_c_in_d_overflow10,
	controller_c_in_d_btint_a11,
	controller_c_in_d_btint_b11,
	controller_c_in_d_overflow11,
	controller_s_in0,
	controller_s_in1,
	controller_s_in2,
	controller_s_in3,
	controller_s_in4,
	controller_s_in5,
	controller_s_in6,
	controller_s_in7,
	controller_s_in8,
	controller_s_in9,
	controller_s_in10,
	controller_s_in11,
	controller_s_mm,
	controller_done,
	controller_result_u_btint_a0,
	controller_result_u_btint_b0,
	controller_result_u_overflow0,
	controller_result_u_btint_a1,
	controller_result_u_btint_b1,
	controller_result_u_overflow1,
	controller_result_u_btint_a2,
	controller_result_u_btint_b2,
	controller_result_u_overflow2,
	controller_result_u_btint_a3,
	controller_result_u_btint_b3,
	controller_result_u_overflow3,
	controller_result_u_btint_a4,
	controller_result_u_btint_b4,
	controller_result_u_overflow4,
	controller_result_u_btint_a5,
	controller_result_u_btint_b5,
	controller_result_u_overflow5,
	controller_result_u_btint_a6,
	controller_result_u_btint_b6,
	controller_result_u_overflow6,
	controller_result_u_btint_a7,
	controller_result_u_btint_b7,
	controller_result_u_overflow7,
	controller_result_u_btint_a8,
	controller_result_u_btint_b8,
	controller_result_u_overflow8,
	controller_result_u_btint_a9,
	controller_result_u_btint_b9,
	controller_result_u_overflow9,
	controller_result_u_btint_a10,
	controller_result_u_btint_b10,
	controller_result_u_overflow10,
	controller_result_u_btint_a11,
	controller_result_u_btint_b11,
	controller_result_u_overflow11,
	controller_result_u_btint_a12,
	controller_result_u_btint_b12,
	controller_result_u_overflow12,
	controller_result_u_btint_a13,
	controller_result_u_btint_b13,
	controller_result_u_overflow13,
	controller_result_u_btint_a14,
	controller_result_u_btint_b14,
	controller_result_u_overflow14,
	controller_result_u_btint_a15,
	controller_result_u_btint_b15,
	controller_result_u_overflow15,
	controller_result_d_btint_a0,
	controller_result_d_btint_b0,
	controller_result_d_overflow0,
	controller_result_d_btint_a1,
	controller_result_d_btint_b1,
	controller_result_d_overflow1,
	controller_result_d_btint_a2,
	controller_result_d_btint_b2,
	controller_result_d_overflow2,
	controller_result_d_btint_a3,
	controller_result_d_btint_b3,
	controller_result_d_overflow3,
	controller_result_d_btint_a4,
	controller_result_d_btint_b4,
	controller_result_d_overflow4,
	controller_result_d_btint_a5,
	controller_result_d_btint_b5,
	controller_result_d_overflow5,
	controller_result_d_btint_a6,
	controller_result_d_btint_b6,
	controller_result_d_overflow6,
	controller_result_d_btint_a7,
	controller_result_d_btint_b7,
	controller_result_d_overflow7,
	controller_result_d_btint_a8,
	controller_result_d_btint_b8,
	controller_result_d_overflow8,
	controller_result_d_btint_a9,
	controller_result_d_btint_b9,
	controller_result_d_overflow9,
	controller_result_d_btint_a10,
	controller_result_d_btint_b10,
	controller_result_d_overflow10,
	controller_result_d_btint_a11,
	controller_result_d_btint_b11,
	controller_result_d_overflow11,
	controller_result_d_btint_a12,
	controller_result_d_btint_b12,
	controller_result_d_overflow12,
	controller_result_d_btint_a13,
	controller_result_d_btint_b13,
	controller_result_d_overflow13,
	controller_result_d_btint_a14,
	controller_result_d_btint_b14,
	controller_result_d_overflow14,
	controller_result_d_btint_a15,
	controller_result_d_btint_b15,
	controller_result_d_overflow15
);
	reg _sv2v_0;
	input wire controller_clock;
	input wire controller_reset;
	input wire [7:0] controller_m_a_btint_a0;
	input wire [7:0] controller_m_a_btint_b0;
	input wire [1:0] controller_m_a_overflow0;
	input wire [7:0] controller_m_a_btint_a1;
	input wire [7:0] controller_m_a_btint_b1;
	input wire [1:0] controller_m_a_overflow1;
	input wire [7:0] controller_m_a_btint_a2;
	input wire [7:0] controller_m_a_btint_b2;
	input wire [1:0] controller_m_a_overflow2;
	input wire [7:0] controller_m_a_btint_a3;
	input wire [7:0] controller_m_a_btint_b3;
	input wire [1:0] controller_m_a_overflow3;
	input wire [7:0] controller_m_a_btint_a4;
	input wire [7:0] controller_m_a_btint_b4;
	input wire [1:0] controller_m_a_overflow4;
	input wire [7:0] controller_m_a_btint_a5;
	input wire [7:0] controller_m_a_btint_b5;
	input wire [1:0] controller_m_a_overflow5;
	input wire [7:0] controller_m_a_btint_a6;
	input wire [7:0] controller_m_a_btint_b6;
	input wire [1:0] controller_m_a_overflow6;
	input wire [7:0] controller_m_a_btint_a7;
	input wire [7:0] controller_m_a_btint_b7;
	input wire [1:0] controller_m_a_overflow7;
	input wire [7:0] controller_m_a_btint_a8;
	input wire [7:0] controller_m_a_btint_b8;
	input wire [1:0] controller_m_a_overflow8;
	input wire [7:0] controller_m_a_btint_a9;
	input wire [7:0] controller_m_a_btint_b9;
	input wire [1:0] controller_m_a_overflow9;
	input wire [7:0] controller_m_a_btint_a10;
	input wire [7:0] controller_m_a_btint_b10;
	input wire [1:0] controller_m_a_overflow10;
	input wire [7:0] controller_m_a_btint_a11;
	input wire [7:0] controller_m_a_btint_b11;
	input wire [1:0] controller_m_a_overflow11;
	input wire [7:0] controller_m_b_btint_a0;
	input wire [7:0] controller_m_b_btint_b0;
	input wire [1:0] controller_m_b_overflow0;
	input wire [7:0] controller_m_b_btint_a1;
	input wire [7:0] controller_m_b_btint_b1;
	input wire [1:0] controller_m_b_overflow1;
	input wire [7:0] controller_m_b_btint_a2;
	input wire [7:0] controller_m_b_btint_b2;
	input wire [1:0] controller_m_b_overflow2;
	input wire [7:0] controller_m_b_btint_a3;
	input wire [7:0] controller_m_b_btint_b3;
	input wire [1:0] controller_m_b_overflow3;
	input wire [7:0] controller_m_b_btint_a4;
	input wire [7:0] controller_m_b_btint_b4;
	input wire [1:0] controller_m_b_overflow4;
	input wire [7:0] controller_m_b_btint_a5;
	input wire [7:0] controller_m_b_btint_b5;
	input wire [1:0] controller_m_b_overflow5;
	input wire [7:0] controller_m_b_btint_a6;
	input wire [7:0] controller_m_b_btint_b6;
	input wire [1:0] controller_m_b_overflow6;
	input wire [7:0] controller_m_b_btint_a7;
	input wire [7:0] controller_m_b_btint_b7;
	input wire [1:0] controller_m_b_overflow7;
	input wire [7:0] controller_m_b_btint_a8;
	input wire [7:0] controller_m_b_btint_b8;
	input wire [1:0] controller_m_b_overflow8;
	input wire [7:0] controller_m_b_btint_a9;
	input wire [7:0] controller_m_b_btint_b9;
	input wire [1:0] controller_m_b_overflow9;
	input wire [7:0] controller_m_b_btint_a10;
	input wire [7:0] controller_m_b_btint_b10;
	input wire [1:0] controller_m_b_overflow10;
	input wire [7:0] controller_m_b_btint_a11;
	input wire [7:0] controller_m_b_btint_b11;
	input wire [1:0] controller_m_b_overflow11;
	input wire [23:0] controller_v_btint_a;
	input wire [23:0] controller_v_btint_b;
	input wire [5:0] controller_v_overflow;
	input wire [1:0] controller_op;
	input wire [7:0] controller_a_out_btint_a0;
	input wire [7:0] controller_a_out_btint_b0;
	input wire [1:0] controller_a_out_overflow0;
	input wire [7:0] controller_a_out_btint_a1;
	input wire [7:0] controller_a_out_btint_b1;
	input wire [1:0] controller_a_out_overflow1;
	input wire [7:0] controller_a_out_btint_a2;
	input wire [7:0] controller_a_out_btint_b2;
	input wire [1:0] controller_a_out_overflow2;
	input wire [7:0] controller_a_out_btint_a3;
	input wire [7:0] controller_a_out_btint_b3;
	input wire [1:0] controller_a_out_overflow3;
	input wire [7:0] controller_a_out_btint_a4;
	input wire [7:0] controller_a_out_btint_b4;
	input wire [1:0] controller_a_out_overflow4;
	input wire [7:0] controller_a_out_btint_a5;
	input wire [7:0] controller_a_out_btint_b5;
	input wire [1:0] controller_a_out_overflow5;
	input wire [7:0] controller_a_out_btint_a6;
	input wire [7:0] controller_a_out_btint_b6;
	input wire [1:0] controller_a_out_overflow6;
	input wire [7:0] controller_a_out_btint_a7;
	input wire [7:0] controller_a_out_btint_b7;
	input wire [1:0] controller_a_out_overflow7;
	input wire [7:0] controller_a_out_btint_a8;
	input wire [7:0] controller_a_out_btint_b8;
	input wire [1:0] controller_a_out_overflow8;
	input wire [7:0] controller_a_out_btint_a9;
	input wire [7:0] controller_a_out_btint_b9;
	input wire [1:0] controller_a_out_overflow9;
	input wire [7:0] controller_a_out_btint_a10;
	input wire [7:0] controller_a_out_btint_b10;
	input wire [1:0] controller_a_out_overflow10;
	input wire [7:0] controller_a_out_btint_a11;
	input wire [7:0] controller_a_out_btint_b11;
	input wire [1:0] controller_a_out_overflow11;
	input wire [7:0] controller_c_out_u_btint_a0;
	input wire [7:0] controller_c_out_u_btint_b0;
	input wire [1:0] controller_c_out_u_overflow0;
	input wire [7:0] controller_c_out_u_btint_a1;
	input wire [7:0] controller_c_out_u_btint_b1;
	input wire [1:0] controller_c_out_u_overflow1;
	input wire [7:0] controller_c_out_u_btint_a2;
	input wire [7:0] controller_c_out_u_btint_b2;
	input wire [1:0] controller_c_out_u_overflow2;
	input wire [7:0] controller_c_out_u_btint_a3;
	input wire [7:0] controller_c_out_u_btint_b3;
	input wire [1:0] controller_c_out_u_overflow3;
	input wire [7:0] controller_c_out_u_btint_a4;
	input wire [7:0] controller_c_out_u_btint_b4;
	input wire [1:0] controller_c_out_u_overflow4;
	input wire [7:0] controller_c_out_u_btint_a5;
	input wire [7:0] controller_c_out_u_btint_b5;
	input wire [1:0] controller_c_out_u_overflow5;
	input wire [7:0] controller_c_out_u_btint_a6;
	input wire [7:0] controller_c_out_u_btint_b6;
	input wire [1:0] controller_c_out_u_overflow6;
	input wire [7:0] controller_c_out_u_btint_a7;
	input wire [7:0] controller_c_out_u_btint_b7;
	input wire [1:0] controller_c_out_u_overflow7;
	input wire [7:0] controller_c_out_u_btint_a8;
	input wire [7:0] controller_c_out_u_btint_b8;
	input wire [1:0] controller_c_out_u_overflow8;
	input wire [7:0] controller_c_out_u_btint_a9;
	input wire [7:0] controller_c_out_u_btint_b9;
	input wire [1:0] controller_c_out_u_overflow9;
	input wire [7:0] controller_c_out_u_btint_a10;
	input wire [7:0] controller_c_out_u_btint_b10;
	input wire [1:0] controller_c_out_u_overflow10;
	input wire [7:0] controller_c_out_u_btint_a11;
	input wire [7:0] controller_c_out_u_btint_b11;
	input wire [1:0] controller_c_out_u_overflow11;
	input wire [7:0] controller_c_out_d_btint_a0;
	input wire [7:0] controller_c_out_d_btint_b0;
	input wire [1:0] controller_c_out_d_overflow0;
	input wire [7:0] controller_c_out_d_btint_a1;
	input wire [7:0] controller_c_out_d_btint_b1;
	input wire [1:0] controller_c_out_d_overflow1;
	input wire [7:0] controller_c_out_d_btint_a2;
	input wire [7:0] controller_c_out_d_btint_b2;
	input wire [1:0] controller_c_out_d_overflow2;
	input wire [7:0] controller_c_out_d_btint_a3;
	input wire [7:0] controller_c_out_d_btint_b3;
	input wire [1:0] controller_c_out_d_overflow3;
	input wire [7:0] controller_c_out_d_btint_a4;
	input wire [7:0] controller_c_out_d_btint_b4;
	input wire [1:0] controller_c_out_d_overflow4;
	input wire [7:0] controller_c_out_d_btint_a5;
	input wire [7:0] controller_c_out_d_btint_b5;
	input wire [1:0] controller_c_out_d_overflow5;
	input wire [7:0] controller_c_out_d_btint_a6;
	input wire [7:0] controller_c_out_d_btint_b6;
	input wire [1:0] controller_c_out_d_overflow6;
	input wire [7:0] controller_c_out_d_btint_a7;
	input wire [7:0] controller_c_out_d_btint_b7;
	input wire [1:0] controller_c_out_d_overflow7;
	input wire [7:0] controller_c_out_d_btint_a8;
	input wire [7:0] controller_c_out_d_btint_b8;
	input wire [1:0] controller_c_out_d_overflow8;
	input wire [7:0] controller_c_out_d_btint_a9;
	input wire [7:0] controller_c_out_d_btint_b9;
	input wire [1:0] controller_c_out_d_overflow9;
	input wire [7:0] controller_c_out_d_btint_a10;
	input wire [7:0] controller_c_out_d_btint_b10;
	input wire [1:0] controller_c_out_d_overflow10;
	input wire [7:0] controller_c_out_d_btint_a11;
	input wire [7:0] controller_c_out_d_btint_b11;
	input wire [1:0] controller_c_out_d_overflow11;
	input wire controller_s_out0;
	input wire controller_s_out1;
	input wire controller_s_out2;
	input wire controller_s_out3;
	input wire controller_s_out4;
	input wire controller_s_out5;
	input wire controller_s_out6;
	input wire controller_s_out7;
	input wire controller_s_out8;
	input wire controller_s_out9;
	input wire controller_s_out10;
	input wire controller_s_out11;
	output wire [7:0] controller_a_in_btint_a0;
	output wire [7:0] controller_a_in_btint_b0;
	output wire [1:0] controller_a_in_overflow0;
	output wire [7:0] controller_a_in_btint_a1;
	output wire [7:0] controller_a_in_btint_b1;
	output wire [1:0] controller_a_in_overflow1;
	output wire [7:0] controller_a_in_btint_a2;
	output wire [7:0] controller_a_in_btint_b2;
	output wire [1:0] controller_a_in_overflow2;
	output wire [7:0] controller_a_in_btint_a3;
	output wire [7:0] controller_a_in_btint_b3;
	output wire [1:0] controller_a_in_overflow3;
	output wire [7:0] controller_a_in_btint_a4;
	output wire [7:0] controller_a_in_btint_b4;
	output wire [1:0] controller_a_in_overflow4;
	output wire [7:0] controller_a_in_btint_a5;
	output wire [7:0] controller_a_in_btint_b5;
	output wire [1:0] controller_a_in_overflow5;
	output wire [7:0] controller_a_in_btint_a6;
	output wire [7:0] controller_a_in_btint_b6;
	output wire [1:0] controller_a_in_overflow6;
	output wire [7:0] controller_a_in_btint_a7;
	output wire [7:0] controller_a_in_btint_b7;
	output wire [1:0] controller_a_in_overflow7;
	output wire [7:0] controller_a_in_btint_a8;
	output wire [7:0] controller_a_in_btint_b8;
	output wire [1:0] controller_a_in_overflow8;
	output wire [7:0] controller_a_in_btint_a9;
	output wire [7:0] controller_a_in_btint_b9;
	output wire [1:0] controller_a_in_overflow9;
	output wire [7:0] controller_a_in_btint_a10;
	output wire [7:0] controller_a_in_btint_b10;
	output wire [1:0] controller_a_in_overflow10;
	output wire [7:0] controller_a_in_btint_a11;
	output wire [7:0] controller_a_in_btint_b11;
	output wire [1:0] controller_a_in_overflow11;
	output wire [7:0] controller_c_in_u_btint_a0;
	output wire [7:0] controller_c_in_u_btint_b0;
	output wire [1:0] controller_c_in_u_overflow0;
	output wire [7:0] controller_c_in_u_btint_a1;
	output wire [7:0] controller_c_in_u_btint_b1;
	output wire [1:0] controller_c_in_u_overflow1;
	output wire [7:0] controller_c_in_u_btint_a2;
	output wire [7:0] controller_c_in_u_btint_b2;
	output wire [1:0] controller_c_in_u_overflow2;
	output wire [7:0] controller_c_in_u_btint_a3;
	output wire [7:0] controller_c_in_u_btint_b3;
	output wire [1:0] controller_c_in_u_overflow3;
	output wire [7:0] controller_c_in_u_btint_a4;
	output wire [7:0] controller_c_in_u_btint_b4;
	output wire [1:0] controller_c_in_u_overflow4;
	output wire [7:0] controller_c_in_u_btint_a5;
	output wire [7:0] controller_c_in_u_btint_b5;
	output wire [1:0] controller_c_in_u_overflow5;
	output wire [7:0] controller_c_in_u_btint_a6;
	output wire [7:0] controller_c_in_u_btint_b6;
	output wire [1:0] controller_c_in_u_overflow6;
	output wire [7:0] controller_c_in_u_btint_a7;
	output wire [7:0] controller_c_in_u_btint_b7;
	output wire [1:0] controller_c_in_u_overflow7;
	output wire [7:0] controller_c_in_u_btint_a8;
	output wire [7:0] controller_c_in_u_btint_b8;
	output wire [1:0] controller_c_in_u_overflow8;
	output wire [7:0] controller_c_in_u_btint_a9;
	output wire [7:0] controller_c_in_u_btint_b9;
	output wire [1:0] controller_c_in_u_overflow9;
	output wire [7:0] controller_c_in_u_btint_a10;
	output wire [7:0] controller_c_in_u_btint_b10;
	output wire [1:0] controller_c_in_u_overflow10;
	output wire [7:0] controller_c_in_u_btint_a11;
	output wire [7:0] controller_c_in_u_btint_b11;
	output wire [1:0] controller_c_in_u_overflow11;
	output wire [7:0] controller_c_in_d_btint_a0;
	output wire [7:0] controller_c_in_d_btint_b0;
	output wire [1:0] controller_c_in_d_overflow0;
	output wire [7:0] controller_c_in_d_btint_a1;
	output wire [7:0] controller_c_in_d_btint_b1;
	output wire [1:0] controller_c_in_d_overflow1;
	output wire [7:0] controller_c_in_d_btint_a2;
	output wire [7:0] controller_c_in_d_btint_b2;
	output wire [1:0] controller_c_in_d_overflow2;
	output wire [7:0] controller_c_in_d_btint_a3;
	output wire [7:0] controller_c_in_d_btint_b3;
	output wire [1:0] controller_c_in_d_overflow3;
	output wire [7:0] controller_c_in_d_btint_a4;
	output wire [7:0] controller_c_in_d_btint_b4;
	output wire [1:0] controller_c_in_d_overflow4;
	output wire [7:0] controller_c_in_d_btint_a5;
	output wire [7:0] controller_c_in_d_btint_b5;
	output wire [1:0] controller_c_in_d_overflow5;
	output wire [7:0] controller_c_in_d_btint_a6;
	output wire [7:0] controller_c_in_d_btint_b6;
	output wire [1:0] controller_c_in_d_overflow6;
	output wire [7:0] controller_c_in_d_btint_a7;
	output wire [7:0] controller_c_in_d_btint_b7;
	output wire [1:0] controller_c_in_d_overflow7;
	output wire [7:0] controller_c_in_d_btint_a8;
	output wire [7:0] controller_c_in_d_btint_b8;
	output wire [1:0] controller_c_in_d_overflow8;
	output wire [7:0] controller_c_in_d_btint_a9;
	output wire [7:0] controller_c_in_d_btint_b9;
	output wire [1:0] controller_c_in_d_overflow9;
	output wire [7:0] controller_c_in_d_btint_a10;
	output wire [7:0] controller_c_in_d_btint_b10;
	output wire [1:0] controller_c_in_d_overflow10;
	output wire [7:0] controller_c_in_d_btint_a11;
	output wire [7:0] controller_c_in_d_btint_b11;
	output wire [1:0] controller_c_in_d_overflow11;
	output wire controller_s_in0;
	output wire controller_s_in1;
	output wire controller_s_in2;
	output wire controller_s_in3;
	output wire controller_s_in4;
	output wire controller_s_in5;
	output wire controller_s_in6;
	output wire controller_s_in7;
	output wire controller_s_in8;
	output wire controller_s_in9;
	output wire controller_s_in10;
	output wire controller_s_in11;
	output reg [0:3] controller_s_mm;
	output reg controller_done;
	output wire [7:0] controller_result_u_btint_a0;
	output wire [7:0] controller_result_u_btint_b0;
	output wire [1:0] controller_result_u_overflow0;
	output wire [7:0] controller_result_u_btint_a1;
	output wire [7:0] controller_result_u_btint_b1;
	output wire [1:0] controller_result_u_overflow1;
	output wire [7:0] controller_result_u_btint_a2;
	output wire [7:0] controller_result_u_btint_b2;
	output wire [1:0] controller_result_u_overflow2;
	output wire [7:0] controller_result_u_btint_a3;
	output wire [7:0] controller_result_u_btint_b3;
	output wire [1:0] controller_result_u_overflow3;
	output wire [7:0] controller_result_u_btint_a4;
	output wire [7:0] controller_result_u_btint_b4;
	output wire [1:0] controller_result_u_overflow4;
	output wire [7:0] controller_result_u_btint_a5;
	output wire [7:0] controller_result_u_btint_b5;
	output wire [1:0] controller_result_u_overflow5;
	output wire [7:0] controller_result_u_btint_a6;
	output wire [7:0] controller_result_u_btint_b6;
	output wire [1:0] controller_result_u_overflow6;
	output wire [7:0] controller_result_u_btint_a7;
	output wire [7:0] controller_result_u_btint_b7;
	output wire [1:0] controller_result_u_overflow7;
	output wire [7:0] controller_result_u_btint_a8;
	output wire [7:0] controller_result_u_btint_b8;
	output wire [1:0] controller_result_u_overflow8;
	output wire [7:0] controller_result_u_btint_a9;
	output wire [7:0] controller_result_u_btint_b9;
	output wire [1:0] controller_result_u_overflow9;
	output wire [7:0] controller_result_u_btint_a10;
	output wire [7:0] controller_result_u_btint_b10;
	output wire [1:0] controller_result_u_overflow10;
	output wire [7:0] controller_result_u_btint_a11;
	output wire [7:0] controller_result_u_btint_b11;
	output wire [1:0] controller_result_u_overflow11;
	output wire [7:0] controller_result_u_btint_a12;
	output wire [7:0] controller_result_u_btint_b12;
	output wire [1:0] controller_result_u_overflow12;
	output wire [7:0] controller_result_u_btint_a13;
	output wire [7:0] controller_result_u_btint_b13;
	output wire [1:0] controller_result_u_overflow13;
	output wire [7:0] controller_result_u_btint_a14;
	output wire [7:0] controller_result_u_btint_b14;
	output wire [1:0] controller_result_u_overflow14;
	output wire [7:0] controller_result_u_btint_a15;
	output wire [7:0] controller_result_u_btint_b15;
	output wire [1:0] controller_result_u_overflow15;
	output wire [7:0] controller_result_d_btint_a0;
	output wire [7:0] controller_result_d_btint_b0;
	output wire [1:0] controller_result_d_overflow0;
	output wire [7:0] controller_result_d_btint_a1;
	output wire [7:0] controller_result_d_btint_b1;
	output wire [1:0] controller_result_d_overflow1;
	output wire [7:0] controller_result_d_btint_a2;
	output wire [7:0] controller_result_d_btint_b2;
	output wire [1:0] controller_result_d_overflow2;
	output wire [7:0] controller_result_d_btint_a3;
	output wire [7:0] controller_result_d_btint_b3;
	output wire [1:0] controller_result_d_overflow3;
	output wire [7:0] controller_result_d_btint_a4;
	output wire [7:0] controller_result_d_btint_b4;
	output wire [1:0] controller_result_d_overflow4;
	output wire [7:0] controller_result_d_btint_a5;
	output wire [7:0] controller_result_d_btint_b5;
	output wire [1:0] controller_result_d_overflow5;
	output wire [7:0] controller_result_d_btint_a6;
	output wire [7:0] controller_result_d_btint_b6;
	output wire [1:0] controller_result_d_overflow6;
	output wire [7:0] controller_result_d_btint_a7;
	output wire [7:0] controller_result_d_btint_b7;
	output wire [1:0] controller_result_d_overflow7;
	output wire [7:0] controller_result_d_btint_a8;
	output wire [7:0] controller_result_d_btint_b8;
	output wire [1:0] controller_result_d_overflow8;
	output wire [7:0] controller_result_d_btint_a9;
	output wire [7:0] controller_result_d_btint_b9;
	output wire [1:0] controller_result_d_overflow9;
	output wire [7:0] controller_result_d_btint_a10;
	output wire [7:0] controller_result_d_btint_b10;
	output wire [1:0] controller_result_d_overflow10;
	output wire [7:0] controller_result_d_btint_a11;
	output wire [7:0] controller_result_d_btint_b11;
	output wire [1:0] controller_result_d_overflow11;
	output wire [7:0] controller_result_d_btint_a12;
	output wire [7:0] controller_result_d_btint_b12;
	output wire [1:0] controller_result_d_overflow12;
	output wire [7:0] controller_result_d_btint_a13;
	output wire [7:0] controller_result_d_btint_b13;
	output wire [1:0] controller_result_d_overflow13;
	output wire [7:0] controller_result_d_btint_a14;
	output wire [7:0] controller_result_d_btint_b14;
	output wire [1:0] controller_result_d_overflow14;
	output wire [7:0] controller_result_d_btint_a15;
	output wire [7:0] controller_result_d_btint_b15;
	output wire [1:0] controller_result_d_overflow15;
	wire [7:0] controller_m_a_btint_a [0:11];
	wire [7:0] controller_m_a_btint_b [0:11];
	wire [1:0] controller_m_a_overflow [0:11];
	wire [7:0] controller_m_b_btint_a [0:11];
	wire [7:0] controller_m_b_btint_b [0:11];
	wire [1:0] controller_m_b_overflow [0:11];
	wire [7:0] controller_a_out_btint_a [0:11];
	wire [7:0] controller_a_out_btint_b [0:11];
	wire [1:0] controller_a_out_overflow [0:11];
	wire [7:0] controller_c_out_u_btint_a [0:11];
	wire [7:0] controller_c_out_u_btint_b [0:11];
	wire [1:0] controller_c_out_u_overflow [0:11];
	wire [7:0] controller_c_out_d_btint_a [0:11];
	wire [7:0] controller_c_out_d_btint_b [0:11];
	wire [1:0] controller_c_out_d_overflow [0:11];
	wire controller_s_out [0:11];
	reg [95:0] controller_a_in_btint_a;
	reg [95:0] controller_a_in_btint_b;
	reg [23:0] controller_a_in_overflow;
	reg [95:0] controller_c_in_u_btint_a;
	reg [95:0] controller_c_in_u_btint_b;
	reg [23:0] controller_c_in_u_overflow;
	reg [95:0] controller_c_in_d_btint_a;
	reg [95:0] controller_c_in_d_btint_b;
	reg [23:0] controller_c_in_d_overflow;
	reg [0:11] controller_s_in;
	reg [127:0] controller_result_u_btint_a;
	reg [127:0] controller_result_u_btint_b;
	reg [31:0] controller_result_u_overflow;
	reg [127:0] controller_result_d_btint_a;
	reg [127:0] controller_result_d_btint_b;
	reg [31:0] controller_result_d_overflow;
	assign controller_m_a_btint_a[0] = controller_m_a_btint_a0;
	assign controller_m_a_btint_b[0] = controller_m_a_btint_b0;
	assign controller_m_a_overflow[0] = controller_m_a_overflow0;
	assign controller_m_a_btint_a[1] = controller_m_a_btint_a1;
	assign controller_m_a_btint_b[1] = controller_m_a_btint_b1;
	assign controller_m_a_overflow[1] = controller_m_a_overflow1;
	assign controller_m_a_btint_a[2] = controller_m_a_btint_a2;
	assign controller_m_a_btint_b[2] = controller_m_a_btint_b2;
	assign controller_m_a_overflow[2] = controller_m_a_overflow2;
	assign controller_m_a_btint_a[3] = controller_m_a_btint_a3;
	assign controller_m_a_btint_b[3] = controller_m_a_btint_b3;
	assign controller_m_a_overflow[3] = controller_m_a_overflow3;
	assign controller_m_a_btint_a[4] = controller_m_a_btint_a4;
	assign controller_m_a_btint_b[4] = controller_m_a_btint_b4;
	assign controller_m_a_overflow[4] = controller_m_a_overflow4;
	assign controller_m_a_btint_a[5] = controller_m_a_btint_a5;
	assign controller_m_a_btint_b[5] = controller_m_a_btint_b5;
	assign controller_m_a_overflow[5] = controller_m_a_overflow5;
	assign controller_m_a_btint_a[6] = controller_m_a_btint_a6;
	assign controller_m_a_btint_b[6] = controller_m_a_btint_b6;
	assign controller_m_a_overflow[6] = controller_m_a_overflow6;
	assign controller_m_a_btint_a[7] = controller_m_a_btint_a7;
	assign controller_m_a_btint_b[7] = controller_m_a_btint_b7;
	assign controller_m_a_overflow[7] = controller_m_a_overflow7;
	assign controller_m_a_btint_a[8] = controller_m_a_btint_a8;
	assign controller_m_a_btint_b[8] = controller_m_a_btint_b8;
	assign controller_m_a_overflow[8] = controller_m_a_overflow8;
	assign controller_m_a_btint_a[9] = controller_m_a_btint_a9;
	assign controller_m_a_btint_b[9] = controller_m_a_btint_b9;
	assign controller_m_a_overflow[9] = controller_m_a_overflow9;
	assign controller_m_a_btint_a[10] = controller_m_a_btint_a10;
	assign controller_m_a_btint_b[10] = controller_m_a_btint_b10;
	assign controller_m_a_overflow[10] = controller_m_a_overflow10;
	assign controller_m_a_btint_a[11] = controller_m_a_btint_a11;
	assign controller_m_a_btint_b[11] = controller_m_a_btint_b11;
	assign controller_m_a_overflow[11] = controller_m_a_overflow11;
	assign controller_m_b_btint_a[0] = controller_m_b_btint_a0;
	assign controller_m_b_btint_b[0] = controller_m_b_btint_b0;
	assign controller_m_b_overflow[0] = controller_m_b_overflow0;
	assign controller_m_b_btint_a[1] = controller_m_b_btint_a1;
	assign controller_m_b_btint_b[1] = controller_m_b_btint_b1;
	assign controller_m_b_overflow[1] = controller_m_b_overflow1;
	assign controller_m_b_btint_a[2] = controller_m_b_btint_a2;
	assign controller_m_b_btint_b[2] = controller_m_b_btint_b2;
	assign controller_m_b_overflow[2] = controller_m_b_overflow2;
	assign controller_m_b_btint_a[3] = controller_m_b_btint_a3;
	assign controller_m_b_btint_b[3] = controller_m_b_btint_b3;
	assign controller_m_b_overflow[3] = controller_m_b_overflow3;
	assign controller_m_b_btint_a[4] = controller_m_b_btint_a4;
	assign controller_m_b_btint_b[4] = controller_m_b_btint_b4;
	assign controller_m_b_overflow[4] = controller_m_b_overflow4;
	assign controller_m_b_btint_a[5] = controller_m_b_btint_a5;
	assign controller_m_b_btint_b[5] = controller_m_b_btint_b5;
	assign controller_m_b_overflow[5] = controller_m_b_overflow5;
	assign controller_m_b_btint_a[6] = controller_m_b_btint_a6;
	assign controller_m_b_btint_b[6] = controller_m_b_btint_b6;
	assign controller_m_b_overflow[6] = controller_m_b_overflow6;
	assign controller_m_b_btint_a[7] = controller_m_b_btint_a7;
	assign controller_m_b_btint_b[7] = controller_m_b_btint_b7;
	assign controller_m_b_overflow[7] = controller_m_b_overflow7;
	assign controller_m_b_btint_a[8] = controller_m_b_btint_a8;
	assign controller_m_b_btint_b[8] = controller_m_b_btint_b8;
	assign controller_m_b_overflow[8] = controller_m_b_overflow8;
	assign controller_m_b_btint_a[9] = controller_m_b_btint_a9;
	assign controller_m_b_btint_b[9] = controller_m_b_btint_b9;
	assign controller_m_b_overflow[9] = controller_m_b_overflow9;
	assign controller_m_b_btint_a[10] = controller_m_b_btint_a10;
	assign controller_m_b_btint_b[10] = controller_m_b_btint_b10;
	assign controller_m_b_overflow[10] = controller_m_b_overflow10;
	assign controller_m_b_btint_a[11] = controller_m_b_btint_a11;
	assign controller_m_b_btint_b[11] = controller_m_b_btint_b11;
	assign controller_m_b_overflow[11] = controller_m_b_overflow11;
	assign controller_a_out_btint_a[0] = controller_a_out_btint_a0;
	assign controller_a_out_btint_b[0] = controller_a_out_btint_b0;
	assign controller_a_out_overflow[0] = controller_a_out_overflow0;
	assign controller_a_out_btint_a[1] = controller_a_out_btint_a1;
	assign controller_a_out_btint_b[1] = controller_a_out_btint_b1;
	assign controller_a_out_overflow[1] = controller_a_out_overflow1;
	assign controller_a_out_btint_a[2] = controller_a_out_btint_a2;
	assign controller_a_out_btint_b[2] = controller_a_out_btint_b2;
	assign controller_a_out_overflow[2] = controller_a_out_overflow2;
	assign controller_a_out_btint_a[3] = controller_a_out_btint_a3;
	assign controller_a_out_btint_b[3] = controller_a_out_btint_b3;
	assign controller_a_out_overflow[3] = controller_a_out_overflow3;
	assign controller_a_out_btint_a[4] = controller_a_out_btint_a4;
	assign controller_a_out_btint_b[4] = controller_a_out_btint_b4;
	assign controller_a_out_overflow[4] = controller_a_out_overflow4;
	assign controller_a_out_btint_a[5] = controller_a_out_btint_a5;
	assign controller_a_out_btint_b[5] = controller_a_out_btint_b5;
	assign controller_a_out_overflow[5] = controller_a_out_overflow5;
	assign controller_a_out_btint_a[6] = controller_a_out_btint_a6;
	assign controller_a_out_btint_b[6] = controller_a_out_btint_b6;
	assign controller_a_out_overflow[6] = controller_a_out_overflow6;
	assign controller_a_out_btint_a[7] = controller_a_out_btint_a7;
	assign controller_a_out_btint_b[7] = controller_a_out_btint_b7;
	assign controller_a_out_overflow[7] = controller_a_out_overflow7;
	assign controller_a_out_btint_a[8] = controller_a_out_btint_a8;
	assign controller_a_out_btint_b[8] = controller_a_out_btint_b8;
	assign controller_a_out_overflow[8] = controller_a_out_overflow8;
	assign controller_a_out_btint_a[9] = controller_a_out_btint_a9;
	assign controller_a_out_btint_b[9] = controller_a_out_btint_b9;
	assign controller_a_out_overflow[9] = controller_a_out_overflow9;
	assign controller_a_out_btint_a[10] = controller_a_out_btint_a10;
	assign controller_a_out_btint_b[10] = controller_a_out_btint_b10;
	assign controller_a_out_overflow[10] = controller_a_out_overflow10;
	assign controller_a_out_btint_a[11] = controller_a_out_btint_a11;
	assign controller_a_out_btint_b[11] = controller_a_out_btint_b11;
	assign controller_a_out_overflow[11] = controller_a_out_overflow11;
	assign controller_c_out_u_btint_a[0] = controller_c_out_u_btint_a0;
	assign controller_c_out_u_btint_b[0] = controller_c_out_u_btint_b0;
	assign controller_c_out_u_overflow[0] = controller_c_out_u_overflow0;
	assign controller_c_out_u_btint_a[1] = controller_c_out_u_btint_a1;
	assign controller_c_out_u_btint_b[1] = controller_c_out_u_btint_b1;
	assign controller_c_out_u_overflow[1] = controller_c_out_u_overflow1;
	assign controller_c_out_u_btint_a[2] = controller_c_out_u_btint_a2;
	assign controller_c_out_u_btint_b[2] = controller_c_out_u_btint_b2;
	assign controller_c_out_u_overflow[2] = controller_c_out_u_overflow2;
	assign controller_c_out_u_btint_a[3] = controller_c_out_u_btint_a3;
	assign controller_c_out_u_btint_b[3] = controller_c_out_u_btint_b3;
	assign controller_c_out_u_overflow[3] = controller_c_out_u_overflow3;
	assign controller_c_out_u_btint_a[4] = controller_c_out_u_btint_a4;
	assign controller_c_out_u_btint_b[4] = controller_c_out_u_btint_b4;
	assign controller_c_out_u_overflow[4] = controller_c_out_u_overflow4;
	assign controller_c_out_u_btint_a[5] = controller_c_out_u_btint_a5;
	assign controller_c_out_u_btint_b[5] = controller_c_out_u_btint_b5;
	assign controller_c_out_u_overflow[5] = controller_c_out_u_overflow5;
	assign controller_c_out_u_btint_a[6] = controller_c_out_u_btint_a6;
	assign controller_c_out_u_btint_b[6] = controller_c_out_u_btint_b6;
	assign controller_c_out_u_overflow[6] = controller_c_out_u_overflow6;
	assign controller_c_out_u_btint_a[7] = controller_c_out_u_btint_a7;
	assign controller_c_out_u_btint_b[7] = controller_c_out_u_btint_b7;
	assign controller_c_out_u_overflow[7] = controller_c_out_u_overflow7;
	assign controller_c_out_u_btint_a[8] = controller_c_out_u_btint_a8;
	assign controller_c_out_u_btint_b[8] = controller_c_out_u_btint_b8;
	assign controller_c_out_u_overflow[8] = controller_c_out_u_overflow8;
	assign controller_c_out_u_btint_a[9] = controller_c_out_u_btint_a9;
	assign controller_c_out_u_btint_b[9] = controller_c_out_u_btint_b9;
	assign controller_c_out_u_overflow[9] = controller_c_out_u_overflow9;
	assign controller_c_out_u_btint_a[10] = controller_c_out_u_btint_a10;
	assign controller_c_out_u_btint_b[10] = controller_c_out_u_btint_b10;
	assign controller_c_out_u_overflow[10] = controller_c_out_u_overflow10;
	assign controller_c_out_u_btint_a[11] = controller_c_out_u_btint_a11;
	assign controller_c_out_u_btint_b[11] = controller_c_out_u_btint_b11;
	assign controller_c_out_u_overflow[11] = controller_c_out_u_overflow11;
	assign controller_c_out_d_btint_a[0] = controller_c_out_d_btint_a0;
	assign controller_c_out_d_btint_b[0] = controller_c_out_d_btint_b0;
	assign controller_c_out_d_overflow[0] = controller_c_out_d_overflow0;
	assign controller_c_out_d_btint_a[1] = controller_c_out_d_btint_a1;
	assign controller_c_out_d_btint_b[1] = controller_c_out_d_btint_b1;
	assign controller_c_out_d_overflow[1] = controller_c_out_d_overflow1;
	assign controller_c_out_d_btint_a[2] = controller_c_out_d_btint_a2;
	assign controller_c_out_d_btint_b[2] = controller_c_out_d_btint_b2;
	assign controller_c_out_d_overflow[2] = controller_c_out_d_overflow2;
	assign controller_c_out_d_btint_a[3] = controller_c_out_d_btint_a3;
	assign controller_c_out_d_btint_b[3] = controller_c_out_d_btint_b3;
	assign controller_c_out_d_overflow[3] = controller_c_out_d_overflow3;
	assign controller_c_out_d_btint_a[4] = controller_c_out_d_btint_a4;
	assign controller_c_out_d_btint_b[4] = controller_c_out_d_btint_b4;
	assign controller_c_out_d_overflow[4] = controller_c_out_d_overflow4;
	assign controller_c_out_d_btint_a[5] = controller_c_out_d_btint_a5;
	assign controller_c_out_d_btint_b[5] = controller_c_out_d_btint_b5;
	assign controller_c_out_d_overflow[5] = controller_c_out_d_overflow5;
	assign controller_c_out_d_btint_a[6] = controller_c_out_d_btint_a6;
	assign controller_c_out_d_btint_b[6] = controller_c_out_d_btint_b6;
	assign controller_c_out_d_overflow[6] = controller_c_out_d_overflow6;
	assign controller_c_out_d_btint_a[7] = controller_c_out_d_btint_a7;
	assign controller_c_out_d_btint_b[7] = controller_c_out_d_btint_b7;
	assign controller_c_out_d_overflow[7] = controller_c_out_d_overflow7;
	assign controller_c_out_d_btint_a[8] = controller_c_out_d_btint_a8;
	assign controller_c_out_d_btint_b[8] = controller_c_out_d_btint_b8;
	assign controller_c_out_d_overflow[8] = controller_c_out_d_overflow8;
	assign controller_c_out_d_btint_a[9] = controller_c_out_d_btint_a9;
	assign controller_c_out_d_btint_b[9] = controller_c_out_d_btint_b9;
	assign controller_c_out_d_overflow[9] = controller_c_out_d_overflow9;
	assign controller_c_out_d_btint_a[10] = controller_c_out_d_btint_a10;
	assign controller_c_out_d_btint_b[10] = controller_c_out_d_btint_b10;
	assign controller_c_out_d_overflow[10] = controller_c_out_d_overflow10;
	assign controller_c_out_d_btint_a[11] = controller_c_out_d_btint_a11;
	assign controller_c_out_d_btint_b[11] = controller_c_out_d_btint_b11;
	assign controller_c_out_d_overflow[11] = controller_c_out_d_overflow11;
	assign controller_s_out[0] = controller_s_out0;
	assign controller_s_out[1] = controller_s_out1;
	assign controller_s_out[2] = controller_s_out2;
	assign controller_s_out[3] = controller_s_out3;
	assign controller_s_out[4] = controller_s_out4;
	assign controller_s_out[5] = controller_s_out5;
	assign controller_s_out[6] = controller_s_out6;
	assign controller_s_out[7] = controller_s_out7;
	assign controller_s_out[8] = controller_s_out8;
	assign controller_s_out[9] = controller_s_out9;
	assign controller_s_out[10] = controller_s_out10;
	assign controller_s_out[11] = controller_s_out11;
	assign controller_a_in_btint_a0 = controller_a_in_btint_a[88+:8];
	assign controller_a_in_btint_b0 = controller_a_in_btint_b[88+:8];
	assign controller_a_in_overflow0 = controller_a_in_overflow[22+:2];
	assign controller_a_in_btint_a1 = controller_a_in_btint_a[80+:8];
	assign controller_a_in_btint_b1 = controller_a_in_btint_b[80+:8];
	assign controller_a_in_overflow1 = controller_a_in_overflow[20+:2];
	assign controller_a_in_btint_a2 = controller_a_in_btint_a[72+:8];
	assign controller_a_in_btint_b2 = controller_a_in_btint_b[72+:8];
	assign controller_a_in_overflow2 = controller_a_in_overflow[18+:2];
	assign controller_a_in_btint_a3 = controller_a_in_btint_a[64+:8];
	assign controller_a_in_btint_b3 = controller_a_in_btint_b[64+:8];
	assign controller_a_in_overflow3 = controller_a_in_overflow[16+:2];
	assign controller_a_in_btint_a4 = controller_a_in_btint_a[56+:8];
	assign controller_a_in_btint_b4 = controller_a_in_btint_b[56+:8];
	assign controller_a_in_overflow4 = controller_a_in_overflow[14+:2];
	assign controller_a_in_btint_a5 = controller_a_in_btint_a[48+:8];
	assign controller_a_in_btint_b5 = controller_a_in_btint_b[48+:8];
	assign controller_a_in_overflow5 = controller_a_in_overflow[12+:2];
	assign controller_a_in_btint_a6 = controller_a_in_btint_a[40+:8];
	assign controller_a_in_btint_b6 = controller_a_in_btint_b[40+:8];
	assign controller_a_in_overflow6 = controller_a_in_overflow[10+:2];
	assign controller_a_in_btint_a7 = controller_a_in_btint_a[32+:8];
	assign controller_a_in_btint_b7 = controller_a_in_btint_b[32+:8];
	assign controller_a_in_overflow7 = controller_a_in_overflow[8+:2];
	assign controller_a_in_btint_a8 = controller_a_in_btint_a[24+:8];
	assign controller_a_in_btint_b8 = controller_a_in_btint_b[24+:8];
	assign controller_a_in_overflow8 = controller_a_in_overflow[6+:2];
	assign controller_a_in_btint_a9 = controller_a_in_btint_a[16+:8];
	assign controller_a_in_btint_b9 = controller_a_in_btint_b[16+:8];
	assign controller_a_in_overflow9 = controller_a_in_overflow[4+:2];
	assign controller_a_in_btint_a10 = controller_a_in_btint_a[8+:8];
	assign controller_a_in_btint_b10 = controller_a_in_btint_b[8+:8];
	assign controller_a_in_overflow10 = controller_a_in_overflow[2+:2];
	assign controller_a_in_btint_a11 = controller_a_in_btint_a[0+:8];
	assign controller_a_in_btint_b11 = controller_a_in_btint_b[0+:8];
	assign controller_a_in_overflow11 = controller_a_in_overflow[0+:2];
	assign controller_c_in_u_btint_a0 = controller_c_in_u_btint_a[88+:8];
	assign controller_c_in_u_btint_b0 = controller_c_in_u_btint_b[88+:8];
	assign controller_c_in_u_overflow0 = controller_c_in_u_overflow[22+:2];
	assign controller_c_in_u_btint_a1 = controller_c_in_u_btint_a[80+:8];
	assign controller_c_in_u_btint_b1 = controller_c_in_u_btint_b[80+:8];
	assign controller_c_in_u_overflow1 = controller_c_in_u_overflow[20+:2];
	assign controller_c_in_u_btint_a2 = controller_c_in_u_btint_a[72+:8];
	assign controller_c_in_u_btint_b2 = controller_c_in_u_btint_b[72+:8];
	assign controller_c_in_u_overflow2 = controller_c_in_u_overflow[18+:2];
	assign controller_c_in_u_btint_a3 = controller_c_in_u_btint_a[64+:8];
	assign controller_c_in_u_btint_b3 = controller_c_in_u_btint_b[64+:8];
	assign controller_c_in_u_overflow3 = controller_c_in_u_overflow[16+:2];
	assign controller_c_in_u_btint_a4 = controller_c_in_u_btint_a[56+:8];
	assign controller_c_in_u_btint_b4 = controller_c_in_u_btint_b[56+:8];
	assign controller_c_in_u_overflow4 = controller_c_in_u_overflow[14+:2];
	assign controller_c_in_u_btint_a5 = controller_c_in_u_btint_a[48+:8];
	assign controller_c_in_u_btint_b5 = controller_c_in_u_btint_b[48+:8];
	assign controller_c_in_u_overflow5 = controller_c_in_u_overflow[12+:2];
	assign controller_c_in_u_btint_a6 = controller_c_in_u_btint_a[40+:8];
	assign controller_c_in_u_btint_b6 = controller_c_in_u_btint_b[40+:8];
	assign controller_c_in_u_overflow6 = controller_c_in_u_overflow[10+:2];
	assign controller_c_in_u_btint_a7 = controller_c_in_u_btint_a[32+:8];
	assign controller_c_in_u_btint_b7 = controller_c_in_u_btint_b[32+:8];
	assign controller_c_in_u_overflow7 = controller_c_in_u_overflow[8+:2];
	assign controller_c_in_u_btint_a8 = controller_c_in_u_btint_a[24+:8];
	assign controller_c_in_u_btint_b8 = controller_c_in_u_btint_b[24+:8];
	assign controller_c_in_u_overflow8 = controller_c_in_u_overflow[6+:2];
	assign controller_c_in_u_btint_a9 = controller_c_in_u_btint_a[16+:8];
	assign controller_c_in_u_btint_b9 = controller_c_in_u_btint_b[16+:8];
	assign controller_c_in_u_overflow9 = controller_c_in_u_overflow[4+:2];
	assign controller_c_in_u_btint_a10 = controller_c_in_u_btint_a[8+:8];
	assign controller_c_in_u_btint_b10 = controller_c_in_u_btint_b[8+:8];
	assign controller_c_in_u_overflow10 = controller_c_in_u_overflow[2+:2];
	assign controller_c_in_u_btint_a11 = controller_c_in_u_btint_a[0+:8];
	assign controller_c_in_u_btint_b11 = controller_c_in_u_btint_b[0+:8];
	assign controller_c_in_u_overflow11 = controller_c_in_u_overflow[0+:2];
	assign controller_c_in_d_btint_a0 = controller_c_in_d_btint_a[88+:8];
	assign controller_c_in_d_btint_b0 = controller_c_in_d_btint_b[88+:8];
	assign controller_c_in_d_overflow0 = controller_c_in_d_overflow[22+:2];
	assign controller_c_in_d_btint_a1 = controller_c_in_d_btint_a[80+:8];
	assign controller_c_in_d_btint_b1 = controller_c_in_d_btint_b[80+:8];
	assign controller_c_in_d_overflow1 = controller_c_in_d_overflow[20+:2];
	assign controller_c_in_d_btint_a2 = controller_c_in_d_btint_a[72+:8];
	assign controller_c_in_d_btint_b2 = controller_c_in_d_btint_b[72+:8];
	assign controller_c_in_d_overflow2 = controller_c_in_d_overflow[18+:2];
	assign controller_c_in_d_btint_a3 = controller_c_in_d_btint_a[64+:8];
	assign controller_c_in_d_btint_b3 = controller_c_in_d_btint_b[64+:8];
	assign controller_c_in_d_overflow3 = controller_c_in_d_overflow[16+:2];
	assign controller_c_in_d_btint_a4 = controller_c_in_d_btint_a[56+:8];
	assign controller_c_in_d_btint_b4 = controller_c_in_d_btint_b[56+:8];
	assign controller_c_in_d_overflow4 = controller_c_in_d_overflow[14+:2];
	assign controller_c_in_d_btint_a5 = controller_c_in_d_btint_a[48+:8];
	assign controller_c_in_d_btint_b5 = controller_c_in_d_btint_b[48+:8];
	assign controller_c_in_d_overflow5 = controller_c_in_d_overflow[12+:2];
	assign controller_c_in_d_btint_a6 = controller_c_in_d_btint_a[40+:8];
	assign controller_c_in_d_btint_b6 = controller_c_in_d_btint_b[40+:8];
	assign controller_c_in_d_overflow6 = controller_c_in_d_overflow[10+:2];
	assign controller_c_in_d_btint_a7 = controller_c_in_d_btint_a[32+:8];
	assign controller_c_in_d_btint_b7 = controller_c_in_d_btint_b[32+:8];
	assign controller_c_in_d_overflow7 = controller_c_in_d_overflow[8+:2];
	assign controller_c_in_d_btint_a8 = controller_c_in_d_btint_a[24+:8];
	assign controller_c_in_d_btint_b8 = controller_c_in_d_btint_b[24+:8];
	assign controller_c_in_d_overflow8 = controller_c_in_d_overflow[6+:2];
	assign controller_c_in_d_btint_a9 = controller_c_in_d_btint_a[16+:8];
	assign controller_c_in_d_btint_b9 = controller_c_in_d_btint_b[16+:8];
	assign controller_c_in_d_overflow9 = controller_c_in_d_overflow[4+:2];
	assign controller_c_in_d_btint_a10 = controller_c_in_d_btint_a[8+:8];
	assign controller_c_in_d_btint_b10 = controller_c_in_d_btint_b[8+:8];
	assign controller_c_in_d_overflow10 = controller_c_in_d_overflow[2+:2];
	assign controller_c_in_d_btint_a11 = controller_c_in_d_btint_a[0+:8];
	assign controller_c_in_d_btint_b11 = controller_c_in_d_btint_b[0+:8];
	assign controller_c_in_d_overflow11 = controller_c_in_d_overflow[0+:2];
	assign controller_s_in0 = controller_s_in[0];
	assign controller_s_in1 = controller_s_in[1];
	assign controller_s_in2 = controller_s_in[2];
	assign controller_s_in3 = controller_s_in[3];
	assign controller_s_in4 = controller_s_in[4];
	assign controller_s_in5 = controller_s_in[5];
	assign controller_s_in6 = controller_s_in[6];
	assign controller_s_in7 = controller_s_in[7];
	assign controller_s_in8 = controller_s_in[8];
	assign controller_s_in9 = controller_s_in[9];
	assign controller_s_in10 = controller_s_in[10];
	assign controller_s_in11 = controller_s_in[11];
	assign controller_result_u_btint_a0 = controller_result_u_btint_a[120+:8];
	assign controller_result_u_btint_b0 = controller_result_u_btint_b[120+:8];
	assign controller_result_u_overflow0 = controller_result_u_overflow[30+:2];
	assign controller_result_u_btint_a1 = controller_result_u_btint_a[112+:8];
	assign controller_result_u_btint_b1 = controller_result_u_btint_b[112+:8];
	assign controller_result_u_overflow1 = controller_result_u_overflow[28+:2];
	assign controller_result_u_btint_a2 = controller_result_u_btint_a[104+:8];
	assign controller_result_u_btint_b2 = controller_result_u_btint_b[104+:8];
	assign controller_result_u_overflow2 = controller_result_u_overflow[26+:2];
	assign controller_result_u_btint_a3 = controller_result_u_btint_a[96+:8];
	assign controller_result_u_btint_b3 = controller_result_u_btint_b[96+:8];
	assign controller_result_u_overflow3 = controller_result_u_overflow[24+:2];
	assign controller_result_u_btint_a4 = controller_result_u_btint_a[88+:8];
	assign controller_result_u_btint_b4 = controller_result_u_btint_b[88+:8];
	assign controller_result_u_overflow4 = controller_result_u_overflow[22+:2];
	assign controller_result_u_btint_a5 = controller_result_u_btint_a[80+:8];
	assign controller_result_u_btint_b5 = controller_result_u_btint_b[80+:8];
	assign controller_result_u_overflow5 = controller_result_u_overflow[20+:2];
	assign controller_result_u_btint_a6 = controller_result_u_btint_a[72+:8];
	assign controller_result_u_btint_b6 = controller_result_u_btint_b[72+:8];
	assign controller_result_u_overflow6 = controller_result_u_overflow[18+:2];
	assign controller_result_u_btint_a7 = controller_result_u_btint_a[64+:8];
	assign controller_result_u_btint_b7 = controller_result_u_btint_b[64+:8];
	assign controller_result_u_overflow7 = controller_result_u_overflow[16+:2];
	assign controller_result_u_btint_a8 = controller_result_u_btint_a[56+:8];
	assign controller_result_u_btint_b8 = controller_result_u_btint_b[56+:8];
	assign controller_result_u_overflow8 = controller_result_u_overflow[14+:2];
	assign controller_result_u_btint_a9 = controller_result_u_btint_a[48+:8];
	assign controller_result_u_btint_b9 = controller_result_u_btint_b[48+:8];
	assign controller_result_u_overflow9 = controller_result_u_overflow[12+:2];
	assign controller_result_u_btint_a10 = controller_result_u_btint_a[40+:8];
	assign controller_result_u_btint_b10 = controller_result_u_btint_b[40+:8];
	assign controller_result_u_overflow10 = controller_result_u_overflow[10+:2];
	assign controller_result_u_btint_a11 = controller_result_u_btint_a[32+:8];
	assign controller_result_u_btint_b11 = controller_result_u_btint_b[32+:8];
	assign controller_result_u_overflow11 = controller_result_u_overflow[8+:2];
	assign controller_result_u_btint_a12 = controller_result_u_btint_a[24+:8];
	assign controller_result_u_btint_b12 = controller_result_u_btint_b[24+:8];
	assign controller_result_u_overflow12 = controller_result_u_overflow[6+:2];
	assign controller_result_u_btint_a13 = controller_result_u_btint_a[16+:8];
	assign controller_result_u_btint_b13 = controller_result_u_btint_b[16+:8];
	assign controller_result_u_overflow13 = controller_result_u_overflow[4+:2];
	assign controller_result_u_btint_a14 = controller_result_u_btint_a[8+:8];
	assign controller_result_u_btint_b14 = controller_result_u_btint_b[8+:8];
	assign controller_result_u_overflow14 = controller_result_u_overflow[2+:2];
	assign controller_result_u_btint_a15 = controller_result_u_btint_a[0+:8];
	assign controller_result_u_btint_b15 = controller_result_u_btint_b[0+:8];
	assign controller_result_u_overflow15 = controller_result_u_overflow[0+:2];
	assign controller_result_d_btint_a0 = controller_result_d_btint_a[120+:8];
	assign controller_result_d_btint_b0 = controller_result_d_btint_b[120+:8];
	assign controller_result_d_overflow0 = controller_result_d_overflow[30+:2];
	assign controller_result_d_btint_a1 = controller_result_d_btint_a[112+:8];
	assign controller_result_d_btint_b1 = controller_result_d_btint_b[112+:8];
	assign controller_result_d_overflow1 = controller_result_d_overflow[28+:2];
	assign controller_result_d_btint_a2 = controller_result_d_btint_a[104+:8];
	assign controller_result_d_btint_b2 = controller_result_d_btint_b[104+:8];
	assign controller_result_d_overflow2 = controller_result_d_overflow[26+:2];
	assign controller_result_d_btint_a3 = controller_result_d_btint_a[96+:8];
	assign controller_result_d_btint_b3 = controller_result_d_btint_b[96+:8];
	assign controller_result_d_overflow3 = controller_result_d_overflow[24+:2];
	assign controller_result_d_btint_a4 = controller_result_d_btint_a[88+:8];
	assign controller_result_d_btint_b4 = controller_result_d_btint_b[88+:8];
	assign controller_result_d_overflow4 = controller_result_d_overflow[22+:2];
	assign controller_result_d_btint_a5 = controller_result_d_btint_a[80+:8];
	assign controller_result_d_btint_b5 = controller_result_d_btint_b[80+:8];
	assign controller_result_d_overflow5 = controller_result_d_overflow[20+:2];
	assign controller_result_d_btint_a6 = controller_result_d_btint_a[72+:8];
	assign controller_result_d_btint_b6 = controller_result_d_btint_b[72+:8];
	assign controller_result_d_overflow6 = controller_result_d_overflow[18+:2];
	assign controller_result_d_btint_a7 = controller_result_d_btint_a[64+:8];
	assign controller_result_d_btint_b7 = controller_result_d_btint_b[64+:8];
	assign controller_result_d_overflow7 = controller_result_d_overflow[16+:2];
	assign controller_result_d_btint_a8 = controller_result_d_btint_a[56+:8];
	assign controller_result_d_btint_b8 = controller_result_d_btint_b[56+:8];
	assign controller_result_d_overflow8 = controller_result_d_overflow[14+:2];
	assign controller_result_d_btint_a9 = controller_result_d_btint_a[48+:8];
	assign controller_result_d_btint_b9 = controller_result_d_btint_b[48+:8];
	assign controller_result_d_overflow9 = controller_result_d_overflow[12+:2];
	assign controller_result_d_btint_a10 = controller_result_d_btint_a[40+:8];
	assign controller_result_d_btint_b10 = controller_result_d_btint_b[40+:8];
	assign controller_result_d_overflow10 = controller_result_d_overflow[10+:2];
	assign controller_result_d_btint_a11 = controller_result_d_btint_a[32+:8];
	assign controller_result_d_btint_b11 = controller_result_d_btint_b[32+:8];
	assign controller_result_d_overflow11 = controller_result_d_overflow[8+:2];
	assign controller_result_d_btint_a12 = controller_result_d_btint_a[24+:8];
	assign controller_result_d_btint_b12 = controller_result_d_btint_b[24+:8];
	assign controller_result_d_overflow12 = controller_result_d_overflow[6+:2];
	assign controller_result_d_btint_a13 = controller_result_d_btint_a[16+:8];
	assign controller_result_d_btint_b13 = controller_result_d_btint_b[16+:8];
	assign controller_result_d_overflow13 = controller_result_d_overflow[4+:2];
	assign controller_result_d_btint_a14 = controller_result_d_btint_a[8+:8];
	assign controller_result_d_btint_b14 = controller_result_d_btint_b[8+:8];
	assign controller_result_d_overflow14 = controller_result_d_overflow[2+:2];
	assign controller_result_d_btint_a15 = controller_result_d_btint_a[0+:8];
	assign controller_result_d_btint_b15 = controller_result_d_btint_b[0+:8];
	assign controller_result_d_overflow15 = controller_result_d_overflow[0+:2];
	reg [5:0] control_WAIT_N_COUNTER;
	reg [5:0] control_WAIT_N_COUNTER_next;
	reg [127:0] result_u_btint_a;
	reg [127:0] result_u_btint_a_next;
	reg [127:0] result_u_btint_b;
	reg [127:0] result_u_btint_b_next;
	reg [31:0] result_u_overflow;
	reg [31:0] result_u_overflow_next;
	reg [127:0] result_d_btint_a;
	reg [127:0] result_d_btint_a_next;
	reg [127:0] result_d_btint_b;
	reg [127:0] result_d_btint_b_next;
	reg [31:0] result_d_overflow;
	reg [31:0] result_d_overflow_next;
	reg signed [31:0] steps;
	reg signed [31:0] steps_next;
	reg [7:0] zero_btint_a;
	reg [7:0] zero_btint_a_next;
	reg [7:0] zero_btint_b;
	reg [7:0] zero_btint_b_next;
	reg [1:0] zero_overflow;
	reg [1:0] zero_overflow_next;
	reg [0:15] state;
	reg [0:15] state_next;
	reg signed [95:0] index_a;
	reg signed [95:0] index_a_next;
	reg load_done;
	reg load_done_next;
	reg signed [31:0] index_b;
	reg signed [31:0] index_b_next;
	reg [7:0] one_btint_a;
	reg [7:0] one_btint_a_next;
	reg [7:0] one_btint_b;
	reg [7:0] one_btint_b_next;
	reg [1:0] one_overflow;
	reg [1:0] one_overflow_next;
	reg [127:0] controller_result_u_btint_a_next;
	reg [127:0] controller_result_u_btint_b_next;
	reg [31:0] controller_result_u_overflow_next;
	reg [127:0] controller_result_d_btint_a_next;
	reg [127:0] controller_result_d_btint_b_next;
	reg [31:0] controller_result_d_overflow_next;
	reg [0:3] controller_s_mm_next;
	reg controller_done_next;
	reg [0:11] controller_s_in_next;
	reg [95:0] controller_c_in_u_btint_a_next;
	reg [95:0] controller_c_in_u_btint_b_next;
	reg [23:0] controller_c_in_u_overflow_next;
	reg [95:0] controller_c_in_d_btint_a_next;
	reg [95:0] controller_c_in_d_btint_b_next;
	reg [23:0] controller_c_in_d_overflow_next;
	reg [95:0] controller_a_in_btint_a_next;
	reg [95:0] controller_a_in_btint_b_next;
	reg [23:0] controller_a_in_overflow_next;
	reg control_PROC_STATE;
	reg control_PROC_STATE_next;
	task control_func;
		integer TMP_0_value;
		reg [7:0] output_btint_a;
		reg [7:0] output_btint_b;
		reg [1:0] output_overflow;
		integer output_index;
		integer output_value;
		reg [7:0] output_btint_a_1;
		reg [7:0] output_btint_b_1;
		reg [1:0] output_overflow_1;
		reg [7:0] TMP_2_btint_a;
		reg [7:0] TMP_2_btint_b;
		reg [1:0] TMP_2_overflow;
		reg TMP_0_isNegative;
		integer TMP_0_i;
		reg [7:0] TMP_1_btint_a;
		reg [7:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		integer TMP_5_value;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg TMP_5_isNegative;
		integer TMP_5_i;
		reg [7:0] TMP_7_btint_a;
		reg [7:0] TMP_7_btint_b;
		reg [1:0] TMP_7_overflow;
		reg [7:0] TMP_6_btint_a;
		reg [7:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		integer k;
		reg [1:0] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			k = 0;
			controller_a_in_btint_a_next = controller_a_in_btint_a;
			controller_a_in_btint_b_next = controller_a_in_btint_b;
			controller_a_in_overflow_next = controller_a_in_overflow;
			controller_c_in_d_btint_a_next = controller_c_in_d_btint_a;
			controller_c_in_d_btint_b_next = controller_c_in_d_btint_b;
			controller_c_in_d_overflow_next = controller_c_in_d_overflow;
			controller_c_in_u_btint_a_next = controller_c_in_u_btint_a;
			controller_c_in_u_btint_b_next = controller_c_in_u_btint_b;
			controller_c_in_u_overflow_next = controller_c_in_u_overflow;
			controller_done_next = controller_done;
			controller_result_d_btint_a_next = controller_result_d_btint_a;
			controller_result_d_btint_b_next = controller_result_d_btint_b;
			controller_result_d_overflow_next = controller_result_d_overflow;
			controller_result_u_btint_a_next = controller_result_u_btint_a;
			controller_result_u_btint_b_next = controller_result_u_btint_b;
			controller_result_u_overflow_next = controller_result_u_overflow;
			controller_s_in_next = controller_s_in;
			controller_s_mm_next = controller_s_mm;
			index_a_next = index_a;
			index_b_next = index_b;
			load_done_next = load_done;
			one_btint_a_next = one_btint_a;
			one_btint_b_next = one_btint_b;
			one_overflow_next = one_overflow;
			result_d_btint_a_next = result_d_btint_a;
			result_d_btint_b_next = result_d_btint_b;
			result_d_overflow_next = result_d_overflow;
			result_u_btint_a_next = result_u_btint_a;
			result_u_btint_b_next = result_u_btint_b;
			result_u_overflow_next = result_u_overflow;
			state_next = state;
			steps_next = steps;
			zero_btint_a_next = zero_btint_a;
			zero_btint_b_next = zero_btint_b;
			zero_overflow_next = zero_overflow;
			control_WAIT_N_COUNTER_next = control_WAIT_N_COUNTER;
			control_PROC_STATE_next = control_PROC_STATE;
			case (control_PROC_STATE)
				0: begin
					begin : sv2v_autoblock_1
						integer i_4;
						for (i_4 = 0; i_4 < 4; i_4 = i_4 + 1)
							begin : sv2v_autoblock_2
								integer j_1;
								for (j_1 = 0; j_1 < 4; j_1 = j_1 + 1)
									begin
										controller_result_u_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_u_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
										controller_result_u_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_u_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
										controller_result_u_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2] = result_u_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2];
										controller_result_d_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_d_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
										controller_result_d_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_d_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
										controller_result_d_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2] = result_d_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2];
									end
							end
					end
					if (controller_op == 0) begin
						begin : sv2v_autoblock_3
							integer i_5;
							for (i_5 = 0; i_5 < 3; i_5 = i_5 + 1)
								if (steps_next >= (4 - i_5))
									controller_s_mm_next[i_5] = 1;
								else
									controller_s_mm_next[i_5] = 0;
						end
						if (steps_next >= 8)
							controller_done_next = 1;
						else
							controller_done_next = 0;
						begin : sv2v_autoblock_4
							integer i_6;
							for (i_6 = 0; i_6 < 4; i_6 = i_6 + 1)
								begin : sv2v_autoblock_5
									integer j_2;
									for (j_2 = 0; j_2 < 3; j_2 = j_2 + 1)
										if ((j_2 == 0) && (j_2 < 3)) begin
											if (steps_next != 2) begin
												controller_s_in_next[(i_6 * 3) + j_2] = 0;
												controller_c_in_u_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_a_next;
												controller_c_in_u_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_b_next;
												controller_c_in_u_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = zero_overflow_next;
												controller_c_in_d_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_a_next;
												controller_c_in_d_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_b_next;
												controller_c_in_d_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = zero_overflow_next;
											end
											else begin
												controller_s_in_next[(i_6 * 3) + j_2] = 1;
												controller_c_in_u_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_a_next;
												controller_c_in_u_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_b_next;
												controller_c_in_u_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = one_overflow_next;
												controller_c_in_d_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_a_next;
												controller_c_in_d_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_b_next;
												controller_c_in_d_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = one_overflow_next;
											end
										end
										else begin
											controller_c_in_u_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_u_btint_a[(i_6 * 3) + (j_2 - 1)];
											controller_c_in_u_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_u_btint_b[(i_6 * 3) + (j_2 - 1)];
											controller_c_in_u_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = controller_c_out_u_overflow[(i_6 * 3) + (j_2 - 1)];
											controller_c_in_d_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_d_btint_a[(i_6 * 3) + (j_2 - 1)];
											controller_c_in_d_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_d_btint_b[(i_6 * 3) + (j_2 - 1)];
											controller_c_in_d_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = controller_c_out_d_overflow[(i_6 * 3) + (j_2 - 1)];
										end
								end
						end
						begin : sv2v_autoblock_6
							integer i_7;
							for (i_7 = 0; i_7 < 4; i_7 = i_7 + 1)
								if (i_7 == 0) begin
									k = 0;
									begin : sv2v_autoblock_7
										integer j_3;
										for (j_3 = 0; j_3 < 3; j_3 = j_3 + 1)
											begin
												if ((steps_next >= (0 + k)) && (steps_next < (3 + j_3))) begin
													controller_a_in_btint_a_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = controller_m_a_btint_a[(((2 - steps_next) + j_3) * 3) + (2 - j_3)];
													controller_a_in_btint_b_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = controller_m_a_btint_b[(((2 - steps_next) + j_3) * 3) + (2 - j_3)];
													controller_a_in_overflow_next[(11 - ((i_7 * 3) + j_3)) * 2+:2] = controller_m_a_overflow[(((2 - steps_next) + j_3) * 3) + (2 - j_3)];
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = zero_btint_a_next;
													controller_a_in_btint_b_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = zero_btint_b_next;
													controller_a_in_overflow_next[(11 - ((i_7 * 3) + j_3)) * 2+:2] = zero_overflow_next;
												end
												k = k + 2;
											end
									end
								end
								else begin : sv2v_autoblock_8
									integer j_4;
									for (j_4 = 0; j_4 < 3; j_4 = j_4 + 1)
										begin
											controller_a_in_btint_a_next[(11 - ((i_7 * 3) + j_4)) * 8+:8] = controller_a_out_btint_a[((i_7 - 1) * 3) + j_4];
											controller_a_in_btint_b_next[(11 - ((i_7 * 3) + j_4)) * 8+:8] = controller_a_out_btint_b[((i_7 - 1) * 3) + j_4];
											controller_a_in_overflow_next[(11 - ((i_7 * 3) + j_4)) * 2+:2] = controller_a_out_overflow[((i_7 - 1) * 3) + j_4];
										end
								end
						end
						begin : sv2v_autoblock_9
							integer i_8;
							for (i_8 = 0; i_8 < 3; i_8 = i_8 + 1)
								if ((steps_next >= 5) && (steps_next < (6 + i_8))) begin
									result_u_btint_a_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_u_btint_a[(i_8 * 3) + 2];
									result_u_btint_b_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_u_btint_b[(i_8 * 3) + 2];
									result_u_overflow_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 2+:2] = controller_c_out_u_overflow[(i_8 * 3) + 2];
									result_d_btint_a_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_d_btint_a[(i_8 * 3) + 2];
									result_d_btint_b_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_d_btint_b[(i_8 * 3) + 2];
									result_d_overflow_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 2+:2] = controller_c_out_d_overflow[(i_8 * 3) + 2];
								end
						end
						begin : sv2v_autoblock_10
							integer i_9;
							for (i_9 = 1; i_9 < 3; i_9 = i_9 + 1)
								begin : sv2v_autoblock_11
									integer j_5;
									for (j_5 = 2 - i_9; j_5 < 2; j_5 = j_5 + 1)
										begin
											controller_s_in_next[(i_9 * 3) + (j_5 + 1)] = state_next[(i_9 * 4) + (j_5 + 1)];
											state_next[(i_9 * 4) + (j_5 + 1)] = controller_s_out[(i_9 * 3) + j_5];
										end
								end
						end
						begin : sv2v_autoblock_12
							integer i_10;
							for (i_10 = 0; i_10 < 2; i_10 = i_10 + 1)
								begin : sv2v_autoblock_13
									integer j_6;
									for (j_6 = 0; j_6 < (2 - i_10); j_6 = j_6 + 1)
										controller_s_in_next[(i_10 * 3) + (j_6 + 1)] = controller_s_out[(i_10 * 3) + j_6];
								end
						end
						steps_next = steps_next + 1;
					end
					else if (controller_op == 1) begin
						if (index_a_next[64+:32] >= 10)
							controller_done_next = 1;
						else
							controller_done_next = 0;
						begin : sv2v_autoblock_14
							integer i_11;
							for (i_11 = 0; i_11 < 4; i_11 = i_11 + 1)
								begin : sv2v_autoblock_15
									integer j_7;
									for (j_7 = 0; j_7 < 3; j_7 = j_7 + 1)
										if (j_7 == 0) begin
											controller_c_in_u_btint_a_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = zero_btint_a_next;
											controller_c_in_u_btint_b_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = zero_btint_b_next;
											controller_c_in_u_overflow_next[(11 - ((i_11 * 3) + j_7)) * 2+:2] = zero_overflow_next;
										end
										else begin
											controller_c_in_u_btint_a_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = controller_c_out_u_btint_a[(i_11 * 3) + (j_7 - 1)];
											controller_c_in_u_btint_b_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = controller_c_out_u_btint_b[(i_11 * 3) + (j_7 - 1)];
											controller_c_in_u_overflow_next[(11 - ((i_11 * 3) + j_7)) * 2+:2] = controller_c_out_u_overflow[(i_11 * 3) + (j_7 - 1)];
										end
								end
						end
						begin : sv2v_autoblock_16
							integer i_12;
							for (i_12 = 0; i_12 < 4; i_12 = i_12 + 1)
								if ((index_a_next[64+:32] >= (3 + i_12)) && (index_a_next[64+:32] < (7 + i_12))) begin
									result_u_btint_a_next[(15 - ((((index_a_next[64+:32] - 3) - i_12) * 4) + i_12)) * 8+:8] = controller_c_out_u_btint_a[(i_12 * 3) + 2];
									result_u_btint_b_next[(15 - ((((index_a_next[64+:32] - 3) - i_12) * 4) + i_12)) * 8+:8] = controller_c_out_u_btint_b[(i_12 * 3) + 2];
									result_u_overflow_next[(15 - ((((index_a_next[64+:32] - 3) - i_12) * 4) + i_12)) * 2+:2] = controller_c_out_u_overflow[(i_12 * 3) + 2];
								end
						end
						if (!load_done_next) begin
							begin : sv2v_autoblock_17
								integer i_13;
								for (i_13 = 0; i_13 < 4; i_13 = i_13 + 1)
									controller_s_mm_next[i_13] = 0;
							end
							begin : sv2v_autoblock_18
								integer i_14;
								for (i_14 = 0; i_14 < 4; i_14 = i_14 + 1)
									begin : sv2v_autoblock_19
										integer j_8;
										for (j_8 = 0; j_8 < 3; j_8 = j_8 + 1)
											if (i_14 == 0) begin
												controller_a_in_btint_a_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_m_b_btint_a[(j_8 * 4) + (3 - index_b_next)];
												controller_a_in_btint_b_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_m_b_btint_b[(j_8 * 4) + (3 - index_b_next)];
												controller_a_in_overflow_next[(11 - ((i_14 * 3) + j_8)) * 2+:2] = controller_m_b_overflow[(j_8 * 4) + (3 - index_b_next)];
											end
											else begin
												controller_a_in_btint_a_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_a_out_btint_a[((i_14 - 1) * 3) + j_8];
												controller_a_in_btint_b_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_a_out_btint_b[((i_14 - 1) * 3) + j_8];
												controller_a_in_overflow_next[(11 - ((i_14 * 3) + j_8)) * 2+:2] = controller_a_out_overflow[((i_14 - 1) * 3) + j_8];
											end
									end
							end
							if (index_b_next >= 3) begin
								load_done_next = 1;
								begin : sv2v_autoblock_20
									integer i_15;
									for (i_15 = 0; i_15 < 4; i_15 = i_15 + 1)
										controller_s_mm_next[i_15] = 1;
								end
							end
							else
								index_b_next = index_b_next + 1;
						end
						else begin
							begin : sv2v_autoblock_21
								integer i_16;
								for (i_16 = 0; i_16 < 4; i_16 = i_16 + 1)
									controller_s_mm_next[i_16] = 0;
							end
							begin : sv2v_autoblock_22
								integer i_17;
								for (i_17 = 0; i_17 < 4; i_17 = i_17 + 1)
									begin : sv2v_autoblock_23
										integer j_9;
										for (j_9 = 0; j_9 < 3; j_9 = j_9 + 1)
											if (i_17 == 0) begin
												if ((index_a_next[(2 - j_9) * 32+:32] < 0) || (index_a_next[(2 - j_9) * 32+:32] > 3)) begin
													controller_a_in_btint_a_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = zero_btint_a_next;
													controller_a_in_btint_b_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = zero_btint_b_next;
													controller_a_in_overflow_next[(11 - ((i_17 * 3) + j_9)) * 2+:2] = zero_overflow_next;
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_m_a_btint_a[(index_a_next[(2 - j_9) * 32+:32] * 3) + j_9];
													controller_a_in_btint_b_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_m_a_btint_b[(index_a_next[(2 - j_9) * 32+:32] * 3) + j_9];
													controller_a_in_overflow_next[(11 - ((i_17 * 3) + j_9)) * 2+:2] = controller_m_a_overflow[(index_a_next[(2 - j_9) * 32+:32] * 3) + j_9];
												end
											end
											else begin
												controller_a_in_btint_a_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_a_out_btint_a[((i_17 - 1) * 3) + j_9];
												controller_a_in_btint_b_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_a_out_btint_b[((i_17 - 1) * 3) + j_9];
												controller_a_in_overflow_next[(11 - ((i_17 * 3) + j_9)) * 2+:2] = controller_a_out_overflow[((i_17 - 1) * 3) + j_9];
											end
									end
							end
							begin : sv2v_autoblock_24
								integer i_18;
								for (i_18 = 0; i_18 < 3; i_18 = i_18 + 1)
									index_a_next[(2 - i_18) * 32+:32] = index_a_next[(2 - i_18) * 32+:32] + 1;
							end
						end
					end
					else begin
						if (index_a_next[0+:32] >= 5)
							controller_done_next = 1;
						else
							controller_done_next = 0;
						if (!load_done_next) begin
							begin : sv2v_autoblock_25
								integer i_19;
								for (i_19 = 0; i_19 < 4; i_19 = i_19 + 1)
									begin : sv2v_autoblock_26
										integer j_10;
										for (j_10 = 0; j_10 < 3; j_10 = j_10 + 1)
											if (i_19 == 0) begin
												controller_a_in_btint_a_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_v_btint_a[(2 - j_10) * 8+:8];
												controller_a_in_btint_b_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_v_btint_b[(2 - j_10) * 8+:8];
												controller_a_in_overflow_next[(11 - ((i_19 * 3) + j_10)) * 2+:2] = controller_v_overflow[(2 - j_10) * 2+:2];
											end
											else begin
												controller_a_in_btint_a_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_a_out_btint_a[((i_19 - 1) * 3) + j_10];
												controller_a_in_btint_b_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_a_out_btint_b[((i_19 - 1) * 3) + j_10];
												controller_a_in_overflow_next[(11 - ((i_19 * 3) + j_10)) * 2+:2] = controller_a_out_overflow[((i_19 - 1) * 3) + j_10];
											end
									end
							end
							begin : sv2v_autoblock_27
								integer i_20;
								for (i_20 = 0; i_20 < 4; i_20 = i_20 + 1)
									controller_s_mm_next[i_20] = 1;
							end
							load_done_next = 1;
						end
						else begin
							begin : sv2v_autoblock_28
								integer i_21;
								for (i_21 = 0; i_21 < 4; i_21 = i_21 + 1)
									controller_s_mm_next[i_21] = 0;
							end
							begin : sv2v_autoblock_29
								integer i_22;
								for (i_22 = 0; i_22 < 4; i_22 = i_22 + 1)
									begin : sv2v_autoblock_30
										integer j_11;
										for (j_11 = 0; j_11 < 3; j_11 = j_11 + 1)
											if (i_22 == 0) begin
												if ((index_a_next[(2 - j_11) * 32+:32] < 0) || (index_a_next[(2 - j_11) * 32+:32] > 3)) begin
													controller_a_in_btint_a_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = zero_btint_a_next;
													controller_a_in_btint_b_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = zero_btint_b_next;
													controller_a_in_overflow_next[(11 - ((i_22 * 3) + j_11)) * 2+:2] = zero_overflow_next;
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_m_a_btint_a[(index_a_next[(2 - j_11) * 32+:32] * 3) + j_11];
													controller_a_in_btint_b_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_m_a_btint_b[(index_a_next[(2 - j_11) * 32+:32] * 3) + j_11];
													controller_a_in_overflow_next[(11 - ((i_22 * 3) + j_11)) * 2+:2] = controller_m_a_overflow[(index_a_next[(2 - j_11) * 32+:32] * 3) + j_11];
												end
											end
											else begin
												controller_a_in_btint_a_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_a_out_btint_a[((i_22 - 1) * 3) + j_11];
												controller_a_in_btint_b_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_a_out_btint_b[((i_22 - 1) * 3) + j_11];
												controller_a_in_overflow_next[(11 - ((i_22 * 3) + j_11)) * 2+:2] = controller_a_out_overflow[((i_22 - 1) * 3) + j_11];
											end
									end
							end
							begin : sv2v_autoblock_31
								integer i_23;
								for (i_23 = 0; i_23 < 4; i_23 = i_23 + 1)
									begin : sv2v_autoblock_32
										integer j_12;
										for (j_12 = 0; j_12 < 3; j_12 = j_12 + 1)
											if (j_12 == 0) begin
												controller_c_in_u_btint_a_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = zero_btint_a_next;
												controller_c_in_u_btint_b_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = zero_btint_b_next;
												controller_c_in_u_overflow_next[(11 - ((i_23 * 3) + j_12)) * 2+:2] = zero_overflow_next;
											end
											else begin
												controller_c_in_u_btint_a_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = controller_c_out_u_btint_a[(i_23 * 3) + (j_12 - 1)];
												controller_c_in_u_btint_b_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = controller_c_out_u_btint_b[(i_23 * 3) + (j_12 - 1)];
												controller_c_in_u_overflow_next[(11 - ((i_23 * 3) + j_12)) * 2+:2] = controller_c_out_u_overflow[(i_23 * 3) + (j_12 - 1)];
											end
									end
							end
							if ((index_a_next[0+:32] >= 1) && (index_a_next[0+:32] <= 4)) begin
								result_u_btint_a_next[(15 - (((index_a_next[0+:32] - 1) * 4) + 0)) * 8+:8] = controller_c_out_u_btint_a[2];
								result_u_btint_b_next[(15 - (((index_a_next[0+:32] - 1) * 4) + 0)) * 8+:8] = controller_c_out_u_btint_b[2];
								result_u_overflow_next[(15 - (((index_a_next[0+:32] - 1) * 4) + 0)) * 2+:2] = controller_c_out_u_overflow[2];
							end
							begin : sv2v_autoblock_33
								integer i_24;
								for (i_24 = 0; i_24 < 3; i_24 = i_24 + 1)
									index_a_next[(2 - i_24) * 32+:32] = index_a_next[(2 - i_24) * 32+:32] + 1;
							end
						end
					end
					control_WAIT_N_COUNTER_next = 37;
					control_PROC_STATE_next = 1;
					_sv2v_jump = 2'b11;
				end
				1: begin
					if (control_WAIT_N_COUNTER != 1) begin
						control_WAIT_N_COUNTER_next = control_WAIT_N_COUNTER - 1;
						control_PROC_STATE_next = 1;
						_sv2v_jump = 2'b11;
					end
					if (_sv2v_jump == 2'b00) begin
						begin : sv2v_autoblock_34
							integer i_4;
							for (i_4 = 0; i_4 < 4; i_4 = i_4 + 1)
								begin : sv2v_autoblock_35
									integer j_1;
									for (j_1 = 0; j_1 < 4; j_1 = j_1 + 1)
										begin
											controller_result_u_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_u_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
											controller_result_u_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_u_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
											controller_result_u_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2] = result_u_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2];
											controller_result_d_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_d_btint_a_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
											controller_result_d_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8] = result_d_btint_b_next[(15 - ((i_4 * 4) + j_1)) * 8+:8];
											controller_result_d_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2] = result_d_overflow_next[(15 - ((i_4 * 4) + j_1)) * 2+:2];
										end
								end
						end
						if (controller_op == 0) begin
							begin : sv2v_autoblock_36
								integer i_5;
								for (i_5 = 0; i_5 < 3; i_5 = i_5 + 1)
									if (steps_next >= (4 - i_5))
										controller_s_mm_next[i_5] = 1;
									else
										controller_s_mm_next[i_5] = 0;
							end
							if (steps_next >= 8)
								controller_done_next = 1;
							else
								controller_done_next = 0;
							begin : sv2v_autoblock_37
								integer i_6;
								for (i_6 = 0; i_6 < 4; i_6 = i_6 + 1)
									begin : sv2v_autoblock_38
										integer j_2;
										for (j_2 = 0; j_2 < 3; j_2 = j_2 + 1)
											if ((j_2 == 0) && (j_2 < 3)) begin
												if (steps_next != 2) begin
													controller_s_in_next[(i_6 * 3) + j_2] = 0;
													controller_c_in_u_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_a_next;
													controller_c_in_u_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_b_next;
													controller_c_in_u_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = zero_overflow_next;
													controller_c_in_d_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_a_next;
													controller_c_in_d_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = zero_btint_b_next;
													controller_c_in_d_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = zero_overflow_next;
												end
												else begin
													controller_s_in_next[(i_6 * 3) + j_2] = 1;
													controller_c_in_u_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_a_next;
													controller_c_in_u_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_b_next;
													controller_c_in_u_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = one_overflow_next;
													controller_c_in_d_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_a_next;
													controller_c_in_d_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = one_btint_b_next;
													controller_c_in_d_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = one_overflow_next;
												end
											end
											else begin
												controller_c_in_u_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_u_btint_a[(i_6 * 3) + (j_2 - 1)];
												controller_c_in_u_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_u_btint_b[(i_6 * 3) + (j_2 - 1)];
												controller_c_in_u_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = controller_c_out_u_overflow[(i_6 * 3) + (j_2 - 1)];
												controller_c_in_d_btint_a_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_d_btint_a[(i_6 * 3) + (j_2 - 1)];
												controller_c_in_d_btint_b_next[(11 - ((i_6 * 3) + j_2)) * 8+:8] = controller_c_out_d_btint_b[(i_6 * 3) + (j_2 - 1)];
												controller_c_in_d_overflow_next[(11 - ((i_6 * 3) + j_2)) * 2+:2] = controller_c_out_d_overflow[(i_6 * 3) + (j_2 - 1)];
											end
									end
							end
							begin : sv2v_autoblock_39
								integer i_7;
								for (i_7 = 0; i_7 < 4; i_7 = i_7 + 1)
									if (i_7 == 0) begin
										k = 0;
										begin : sv2v_autoblock_40
											integer j_3;
											for (j_3 = 0; j_3 < 3; j_3 = j_3 + 1)
												begin
													if ((steps_next >= (0 + k)) && (steps_next < (3 + j_3))) begin
														controller_a_in_btint_a_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = controller_m_a_btint_a[(((2 - steps_next) + j_3) * 3) + (2 - j_3)];
														controller_a_in_btint_b_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = controller_m_a_btint_b[(((2 - steps_next) + j_3) * 3) + (2 - j_3)];
														controller_a_in_overflow_next[(11 - ((i_7 * 3) + j_3)) * 2+:2] = controller_m_a_overflow[(((2 - steps_next) + j_3) * 3) + (2 - j_3)];
													end
													else begin
														controller_a_in_btint_a_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = zero_btint_a_next;
														controller_a_in_btint_b_next[(11 - ((i_7 * 3) + j_3)) * 8+:8] = zero_btint_b_next;
														controller_a_in_overflow_next[(11 - ((i_7 * 3) + j_3)) * 2+:2] = zero_overflow_next;
													end
													k = k + 2;
												end
										end
									end
									else begin : sv2v_autoblock_41
										integer j_4;
										for (j_4 = 0; j_4 < 3; j_4 = j_4 + 1)
											begin
												controller_a_in_btint_a_next[(11 - ((i_7 * 3) + j_4)) * 8+:8] = controller_a_out_btint_a[((i_7 - 1) * 3) + j_4];
												controller_a_in_btint_b_next[(11 - ((i_7 * 3) + j_4)) * 8+:8] = controller_a_out_btint_b[((i_7 - 1) * 3) + j_4];
												controller_a_in_overflow_next[(11 - ((i_7 * 3) + j_4)) * 2+:2] = controller_a_out_overflow[((i_7 - 1) * 3) + j_4];
											end
									end
							end
							begin : sv2v_autoblock_42
								integer i_8;
								for (i_8 = 0; i_8 < 3; i_8 = i_8 + 1)
									if ((steps_next >= 5) && (steps_next < (6 + i_8))) begin
										result_u_btint_a_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_u_btint_a[(i_8 * 3) + 2];
										result_u_btint_b_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_u_btint_b[(i_8 * 3) + 2];
										result_u_overflow_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 2+:2] = controller_c_out_u_overflow[(i_8 * 3) + 2];
										result_d_btint_a_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_d_btint_a[(i_8 * 3) + 2];
										result_d_btint_b_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 8+:8] = controller_c_out_d_btint_b[(i_8 * 3) + 2];
										result_d_overflow_next[(15 - ((((5 - steps_next) + i_8) * 4) + i_8)) * 2+:2] = controller_c_out_d_overflow[(i_8 * 3) + 2];
									end
							end
							begin : sv2v_autoblock_43
								integer i_9;
								for (i_9 = 1; i_9 < 3; i_9 = i_9 + 1)
									begin : sv2v_autoblock_44
										integer j_5;
										for (j_5 = 2 - i_9; j_5 < 2; j_5 = j_5 + 1)
											begin
												controller_s_in_next[(i_9 * 3) + (j_5 + 1)] = state_next[(i_9 * 4) + (j_5 + 1)];
												state_next[(i_9 * 4) + (j_5 + 1)] = controller_s_out[(i_9 * 3) + j_5];
											end
									end
							end
							begin : sv2v_autoblock_45
								integer i_10;
								for (i_10 = 0; i_10 < 2; i_10 = i_10 + 1)
									begin : sv2v_autoblock_46
										integer j_6;
										for (j_6 = 0; j_6 < (2 - i_10); j_6 = j_6 + 1)
											controller_s_in_next[(i_10 * 3) + (j_6 + 1)] = controller_s_out[(i_10 * 3) + j_6];
									end
							end
							steps_next = steps_next + 1;
						end
						else if (controller_op == 1) begin
							if (index_a_next[64+:32] >= 10)
								controller_done_next = 1;
							else
								controller_done_next = 0;
							begin : sv2v_autoblock_47
								integer i_11;
								for (i_11 = 0; i_11 < 4; i_11 = i_11 + 1)
									begin : sv2v_autoblock_48
										integer j_7;
										for (j_7 = 0; j_7 < 3; j_7 = j_7 + 1)
											if (j_7 == 0) begin
												controller_c_in_u_btint_a_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = zero_btint_a_next;
												controller_c_in_u_btint_b_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = zero_btint_b_next;
												controller_c_in_u_overflow_next[(11 - ((i_11 * 3) + j_7)) * 2+:2] = zero_overflow_next;
											end
											else begin
												controller_c_in_u_btint_a_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = controller_c_out_u_btint_a[(i_11 * 3) + (j_7 - 1)];
												controller_c_in_u_btint_b_next[(11 - ((i_11 * 3) + j_7)) * 8+:8] = controller_c_out_u_btint_b[(i_11 * 3) + (j_7 - 1)];
												controller_c_in_u_overflow_next[(11 - ((i_11 * 3) + j_7)) * 2+:2] = controller_c_out_u_overflow[(i_11 * 3) + (j_7 - 1)];
											end
									end
							end
							begin : sv2v_autoblock_49
								integer i_12;
								for (i_12 = 0; i_12 < 4; i_12 = i_12 + 1)
									if ((index_a_next[64+:32] >= (3 + i_12)) && (index_a_next[64+:32] < (7 + i_12))) begin
										result_u_btint_a_next[(15 - ((((index_a_next[64+:32] - 3) - i_12) * 4) + i_12)) * 8+:8] = controller_c_out_u_btint_a[(i_12 * 3) + 2];
										result_u_btint_b_next[(15 - ((((index_a_next[64+:32] - 3) - i_12) * 4) + i_12)) * 8+:8] = controller_c_out_u_btint_b[(i_12 * 3) + 2];
										result_u_overflow_next[(15 - ((((index_a_next[64+:32] - 3) - i_12) * 4) + i_12)) * 2+:2] = controller_c_out_u_overflow[(i_12 * 3) + 2];
									end
							end
							if (!load_done_next) begin
								begin : sv2v_autoblock_50
									integer i_13;
									for (i_13 = 0; i_13 < 4; i_13 = i_13 + 1)
										controller_s_mm_next[i_13] = 0;
								end
								begin : sv2v_autoblock_51
									integer i_14;
									for (i_14 = 0; i_14 < 4; i_14 = i_14 + 1)
										begin : sv2v_autoblock_52
											integer j_8;
											for (j_8 = 0; j_8 < 3; j_8 = j_8 + 1)
												if (i_14 == 0) begin
													controller_a_in_btint_a_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_m_b_btint_a[(j_8 * 4) + (3 - index_b_next)];
													controller_a_in_btint_b_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_m_b_btint_b[(j_8 * 4) + (3 - index_b_next)];
													controller_a_in_overflow_next[(11 - ((i_14 * 3) + j_8)) * 2+:2] = controller_m_b_overflow[(j_8 * 4) + (3 - index_b_next)];
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_a_out_btint_a[((i_14 - 1) * 3) + j_8];
													controller_a_in_btint_b_next[(11 - ((i_14 * 3) + j_8)) * 8+:8] = controller_a_out_btint_b[((i_14 - 1) * 3) + j_8];
													controller_a_in_overflow_next[(11 - ((i_14 * 3) + j_8)) * 2+:2] = controller_a_out_overflow[((i_14 - 1) * 3) + j_8];
												end
										end
								end
								if (index_b_next >= 3) begin
									load_done_next = 1;
									begin : sv2v_autoblock_53
										integer i_15;
										for (i_15 = 0; i_15 < 4; i_15 = i_15 + 1)
											controller_s_mm_next[i_15] = 1;
									end
								end
								else
									index_b_next = index_b_next + 1;
							end
							else begin
								begin : sv2v_autoblock_54
									integer i_16;
									for (i_16 = 0; i_16 < 4; i_16 = i_16 + 1)
										controller_s_mm_next[i_16] = 0;
								end
								begin : sv2v_autoblock_55
									integer i_17;
									for (i_17 = 0; i_17 < 4; i_17 = i_17 + 1)
										begin : sv2v_autoblock_56
											integer j_9;
											for (j_9 = 0; j_9 < 3; j_9 = j_9 + 1)
												if (i_17 == 0) begin
													if ((index_a_next[(2 - j_9) * 32+:32] < 0) || (index_a_next[(2 - j_9) * 32+:32] > 3)) begin
														controller_a_in_btint_a_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = zero_btint_a_next;
														controller_a_in_btint_b_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = zero_btint_b_next;
														controller_a_in_overflow_next[(11 - ((i_17 * 3) + j_9)) * 2+:2] = zero_overflow_next;
													end
													else begin
														controller_a_in_btint_a_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_m_a_btint_a[(index_a_next[(2 - j_9) * 32+:32] * 3) + j_9];
														controller_a_in_btint_b_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_m_a_btint_b[(index_a_next[(2 - j_9) * 32+:32] * 3) + j_9];
														controller_a_in_overflow_next[(11 - ((i_17 * 3) + j_9)) * 2+:2] = controller_m_a_overflow[(index_a_next[(2 - j_9) * 32+:32] * 3) + j_9];
													end
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_a_out_btint_a[((i_17 - 1) * 3) + j_9];
													controller_a_in_btint_b_next[(11 - ((i_17 * 3) + j_9)) * 8+:8] = controller_a_out_btint_b[((i_17 - 1) * 3) + j_9];
													controller_a_in_overflow_next[(11 - ((i_17 * 3) + j_9)) * 2+:2] = controller_a_out_overflow[((i_17 - 1) * 3) + j_9];
												end
										end
								end
								begin : sv2v_autoblock_57
									integer i_18;
									for (i_18 = 0; i_18 < 3; i_18 = i_18 + 1)
										index_a_next[(2 - i_18) * 32+:32] = index_a_next[(2 - i_18) * 32+:32] + 1;
								end
							end
						end
						else begin
							if (index_a_next[0+:32] >= 5)
								controller_done_next = 1;
							else
								controller_done_next = 0;
							if (!load_done_next) begin
								begin : sv2v_autoblock_58
									integer i_19;
									for (i_19 = 0; i_19 < 4; i_19 = i_19 + 1)
										begin : sv2v_autoblock_59
											integer j_10;
											for (j_10 = 0; j_10 < 3; j_10 = j_10 + 1)
												if (i_19 == 0) begin
													controller_a_in_btint_a_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_v_btint_a[(2 - j_10) * 8+:8];
													controller_a_in_btint_b_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_v_btint_b[(2 - j_10) * 8+:8];
													controller_a_in_overflow_next[(11 - ((i_19 * 3) + j_10)) * 2+:2] = controller_v_overflow[(2 - j_10) * 2+:2];
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_a_out_btint_a[((i_19 - 1) * 3) + j_10];
													controller_a_in_btint_b_next[(11 - ((i_19 * 3) + j_10)) * 8+:8] = controller_a_out_btint_b[((i_19 - 1) * 3) + j_10];
													controller_a_in_overflow_next[(11 - ((i_19 * 3) + j_10)) * 2+:2] = controller_a_out_overflow[((i_19 - 1) * 3) + j_10];
												end
										end
								end
								begin : sv2v_autoblock_60
									integer i_20;
									for (i_20 = 0; i_20 < 4; i_20 = i_20 + 1)
										controller_s_mm_next[i_20] = 1;
								end
								load_done_next = 1;
							end
							else begin
								begin : sv2v_autoblock_61
									integer i_21;
									for (i_21 = 0; i_21 < 4; i_21 = i_21 + 1)
										controller_s_mm_next[i_21] = 0;
								end
								begin : sv2v_autoblock_62
									integer i_22;
									for (i_22 = 0; i_22 < 4; i_22 = i_22 + 1)
										begin : sv2v_autoblock_63
											integer j_11;
											for (j_11 = 0; j_11 < 3; j_11 = j_11 + 1)
												if (i_22 == 0) begin
													if ((index_a_next[(2 - j_11) * 32+:32] < 0) || (index_a_next[(2 - j_11) * 32+:32] > 3)) begin
														controller_a_in_btint_a_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = zero_btint_a_next;
														controller_a_in_btint_b_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = zero_btint_b_next;
														controller_a_in_overflow_next[(11 - ((i_22 * 3) + j_11)) * 2+:2] = zero_overflow_next;
													end
													else begin
														controller_a_in_btint_a_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_m_a_btint_a[(index_a_next[(2 - j_11) * 32+:32] * 3) + j_11];
														controller_a_in_btint_b_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_m_a_btint_b[(index_a_next[(2 - j_11) * 32+:32] * 3) + j_11];
														controller_a_in_overflow_next[(11 - ((i_22 * 3) + j_11)) * 2+:2] = controller_m_a_overflow[(index_a_next[(2 - j_11) * 32+:32] * 3) + j_11];
													end
												end
												else begin
													controller_a_in_btint_a_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_a_out_btint_a[((i_22 - 1) * 3) + j_11];
													controller_a_in_btint_b_next[(11 - ((i_22 * 3) + j_11)) * 8+:8] = controller_a_out_btint_b[((i_22 - 1) * 3) + j_11];
													controller_a_in_overflow_next[(11 - ((i_22 * 3) + j_11)) * 2+:2] = controller_a_out_overflow[((i_22 - 1) * 3) + j_11];
												end
										end
								end
								begin : sv2v_autoblock_64
									integer i_23;
									for (i_23 = 0; i_23 < 4; i_23 = i_23 + 1)
										begin : sv2v_autoblock_65
											integer j_12;
											for (j_12 = 0; j_12 < 3; j_12 = j_12 + 1)
												if (j_12 == 0) begin
													controller_c_in_u_btint_a_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = zero_btint_a_next;
													controller_c_in_u_btint_b_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = zero_btint_b_next;
													controller_c_in_u_overflow_next[(11 - ((i_23 * 3) + j_12)) * 2+:2] = zero_overflow_next;
												end
												else begin
													controller_c_in_u_btint_a_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = controller_c_out_u_btint_a[(i_23 * 3) + (j_12 - 1)];
													controller_c_in_u_btint_b_next[(11 - ((i_23 * 3) + j_12)) * 8+:8] = controller_c_out_u_btint_b[(i_23 * 3) + (j_12 - 1)];
													controller_c_in_u_overflow_next[(11 - ((i_23 * 3) + j_12)) * 2+:2] = controller_c_out_u_overflow[(i_23 * 3) + (j_12 - 1)];
												end
										end
								end
								if ((index_a_next[0+:32] >= 1) && (index_a_next[0+:32] <= 4)) begin
									result_u_btint_a_next[(15 - (((index_a_next[0+:32] - 1) * 4) + 0)) * 8+:8] = controller_c_out_u_btint_a[2];
									result_u_btint_b_next[(15 - (((index_a_next[0+:32] - 1) * 4) + 0)) * 8+:8] = controller_c_out_u_btint_b[2];
									result_u_overflow_next[(15 - (((index_a_next[0+:32] - 1) * 4) + 0)) * 2+:2] = controller_c_out_u_overflow[2];
								end
								begin : sv2v_autoblock_66
									integer i_24;
									for (i_24 = 0; i_24 < 3; i_24 = i_24 + 1)
										index_a_next[(2 - i_24) * 32+:32] = index_a_next[(2 - i_24) * 32+:32] + 1;
								end
							end
						end
						control_WAIT_N_COUNTER_next = 37;
						control_PROC_STATE_next = 1;
						_sv2v_jump = 2'b11;
					end
				end
			endcase
		end
	endtask
	always @(controller_c_out_u_overflow[2] or index_a_next[0+:32] or controller_c_out_u_btint_b[2] or index_a_next[0+:32] or controller_c_out_u_btint_a[2] or index_a_next[0+:32] or index_a_next[0+:32] or index_a_next[0+:32] or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or index_a_next or index_a_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or controller_v_overflow or controller_v_btint_b or controller_v_btint_a or load_done_next or index_a_next[0+:32] or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or index_a_next or index_a_next or index_b_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or index_b_next or controller_m_b_overflow or index_b_next or controller_m_b_btint_b or index_b_next or controller_m_b_btint_a or load_done_next or controller_c_out_u_overflow or index_a_next[64+:32] or controller_c_out_u_btint_b or index_a_next[64+:32] or controller_c_out_u_btint_a or index_a_next[64+:32] or index_a_next[64+:32] or index_a_next[64+:32] or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or index_a_next[64+:32] or controller_op or controller_s_out or controller_s_out or state_next or controller_c_out_d_overflow or steps_next or controller_c_out_d_btint_b or steps_next or controller_c_out_d_btint_a or steps_next or controller_c_out_u_overflow or steps_next or controller_c_out_u_btint_b or steps_next or controller_c_out_u_btint_a or steps_next or steps_next or steps_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or steps_next or controller_m_a_overflow or steps_next or controller_m_a_btint_b or steps_next or controller_m_a_btint_a or steps_next or steps_next or controller_c_out_d_overflow or controller_c_out_d_btint_b or controller_c_out_d_btint_a or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or one_overflow_next or one_btint_b_next or one_btint_a_next or one_overflow_next or one_btint_b_next or one_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or steps_next or steps_next or steps_next or controller_op or result_d_overflow_next or result_d_btint_b_next or result_d_btint_a_next or result_u_overflow_next or result_u_btint_b_next or result_u_btint_a_next or control_WAIT_N_COUNTER or control_WAIT_N_COUNTER or controller_c_out_u_overflow[2] or index_a_next[0+:32] or controller_c_out_u_btint_b[2] or index_a_next[0+:32] or controller_c_out_u_btint_a[2] or index_a_next[0+:32] or index_a_next[0+:32] or index_a_next[0+:32] or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or index_a_next or index_a_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or controller_v_overflow or controller_v_btint_b or controller_v_btint_a or load_done_next or index_a_next[0+:32] or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or index_a_next or index_a_next or index_b_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or index_b_next or controller_m_b_overflow or index_b_next or controller_m_b_btint_b or index_b_next or controller_m_b_btint_a or load_done_next or controller_c_out_u_overflow or index_a_next[64+:32] or controller_c_out_u_btint_b or index_a_next[64+:32] or controller_c_out_u_btint_a or index_a_next[64+:32] or index_a_next[64+:32] or index_a_next[64+:32] or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or index_a_next[64+:32] or controller_op or controller_s_out or controller_s_out or state_next or controller_c_out_d_overflow or steps_next or controller_c_out_d_btint_b or steps_next or controller_c_out_d_btint_a or steps_next or controller_c_out_u_overflow or steps_next or controller_c_out_u_btint_b or steps_next or controller_c_out_u_btint_a or steps_next or steps_next or steps_next or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or steps_next or controller_m_a_overflow or steps_next or controller_m_a_btint_b or steps_next or controller_m_a_btint_a or steps_next or steps_next or controller_c_out_d_overflow or controller_c_out_d_btint_b or controller_c_out_d_btint_a or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or one_overflow_next or one_btint_b_next or one_btint_a_next or one_overflow_next or one_btint_b_next or one_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or zero_overflow_next or zero_btint_b_next or zero_btint_a_next or steps_next or steps_next or steps_next or controller_op or result_d_overflow_next or result_d_btint_b_next or result_d_btint_a_next or result_u_overflow_next or result_u_btint_b_next or result_u_btint_a_next or control_PROC_STATE or control_PROC_STATE or control_WAIT_N_COUNTER or zero_overflow or zero_btint_b or zero_btint_a or steps or state or result_u_overflow or result_u_btint_b or result_u_btint_a or result_d_overflow or result_d_btint_b or result_d_btint_a or one_overflow or one_btint_b or one_btint_a or load_done or index_b or index_a or controller_s_mm or controller_s_in or controller_result_u_overflow or controller_result_u_btint_b or controller_result_u_btint_a or controller_result_d_overflow or controller_result_d_btint_b or controller_result_d_btint_a or controller_done or controller_c_in_u_overflow or controller_c_in_u_btint_b or controller_c_in_u_btint_a or controller_c_in_d_overflow or controller_c_in_d_btint_b or controller_c_in_d_btint_a or controller_a_in_overflow or controller_a_in_btint_b or controller_a_in_btint_a or _sv2v_0) begin : control_comb
		if (_sv2v_0)
			;
		control_func;
	end
	always @(posedge controller_clock) begin : control_ff
		if (controller_reset) begin : sv2v_autoblock_67
			integer TMP_0_value;
			reg [7:0] output_btint_a;
			reg [7:0] output_btint_b;
			reg [1:0] output_overflow;
			integer output_index;
			integer output_value;
			reg [7:0] output_btint_a_1;
			reg [7:0] output_btint_b_1;
			reg [1:0] output_overflow_1;
			reg [7:0] TMP_2_btint_a;
			reg [7:0] TMP_2_btint_b;
			reg [1:0] TMP_2_overflow;
			reg TMP_0_isNegative;
			integer TMP_0_i;
			reg [7:0] TMP_1_btint_a;
			reg [7:0] TMP_1_btint_b;
			reg [1:0] TMP_1_overflow;
			integer TMP_5_value;
			reg [7:0] output_btint_a_2;
			reg [7:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [7:0] output_btint_a_3;
			reg [7:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg TMP_5_isNegative;
			integer TMP_5_i;
			reg [7:0] TMP_7_btint_a;
			reg [7:0] TMP_7_btint_b;
			reg [1:0] TMP_7_overflow;
			reg [7:0] TMP_6_btint_a;
			reg [7:0] TMP_6_btint_b;
			reg [1:0] TMP_6_overflow;
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_68
				integer i;
				for (i = 0; i < 8; i = i + 1)
					begin
						output_index = i;
						output_value = 0;
						output_btint_a_1 = 0;
						output_btint_b_1 = 0;
						output_overflow_1 = 0;
						output_btint_a_1 = output_btint_a;
						output_btint_b_1 = output_btint_b;
						output_overflow_1 = output_overflow;
						case (0)
							0: begin
								output_btint_a_1[output_index] = 0;
								output_btint_b_1[output_index] = 1;
							end
							1: begin
								output_btint_a_1[output_index] = 1;
								output_btint_b_1[output_index] = 1;
							end
						endcase
						TMP_2_btint_a = output_btint_a_1;
						TMP_2_btint_b = output_btint_b_1;
						TMP_2_overflow = output_overflow_1;
						output_btint_a = TMP_2_btint_a;
						output_btint_b = TMP_2_btint_b;
						output_overflow = TMP_2_overflow;
					end
			end
			TMP_0_isNegative = TMP_0_value < 0;
			TMP_0_i = 0;
			TMP_1_btint_a = output_btint_a;
			TMP_1_btint_b = output_btint_b;
			TMP_1_overflow = output_overflow;
			zero_btint_a <= TMP_1_btint_a;
			zero_btint_b <= TMP_1_btint_b;
			zero_overflow <= TMP_1_overflow;
			TMP_5_value = 1;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			begin : sv2v_autoblock_69
				integer i_1;
				for (i_1 = 0; i_1 < 8; i_1 = i_1 + 1)
					begin
						output_index_1 = i_1;
						output_value_1 = 0;
						output_btint_a_3 = 0;
						output_btint_b_3 = 0;
						output_overflow_3 = 0;
						output_btint_a_3 = output_btint_a_2;
						output_btint_b_3 = output_btint_b_2;
						output_overflow_3 = output_overflow_2;
						case (0)
							0: begin
								output_btint_a_3[output_index_1] = 0;
								output_btint_b_3[output_index_1] = 1;
							end
							1: begin
								output_btint_a_3[output_index_1] = 1;
								output_btint_b_3[output_index_1] = 1;
							end
						endcase
						TMP_2_btint_a = output_btint_a_3;
						TMP_2_btint_b = output_btint_b_3;
						TMP_2_overflow = output_overflow_3;
						output_btint_a_2 = TMP_2_btint_a;
						output_btint_b_2 = TMP_2_btint_b;
						output_overflow_2 = TMP_2_overflow;
					end
			end
			TMP_5_isNegative = TMP_5_value < 0;
			TMP_5_i = 0;
			while (|TMP_5_value) begin
				TMP_5_i = TMP_5_i + 1;
				output_index_1 = TMP_5_i + 1'sd1;
				output_value_1 = 1;
				output_btint_a_3 = 0;
				output_btint_b_3 = 0;
				output_overflow_3 = 0;
				output_btint_a_3 = output_btint_a_2;
				output_btint_b_3 = output_btint_b_2;
				output_overflow_3 = output_overflow_2;
				case (1)
					0: begin
						output_btint_a_3[output_index_1] = 0;
						output_btint_b_3[output_index_1] = 1;
					end
					1: begin
						output_btint_a_3[output_index_1] = 1;
						output_btint_b_3[output_index_1] = 1;
					end
				endcase
				TMP_7_btint_a = output_btint_a_3;
				TMP_7_btint_b = output_btint_b_3;
				TMP_7_overflow = output_overflow_3;
				output_btint_a_2 = TMP_7_btint_a;
				output_btint_b_2 = TMP_7_btint_b;
				output_overflow_2 = TMP_7_overflow;
				TMP_5_value = TMP_5_value - 1;
				TMP_5_value = TMP_5_value / 2;
			end
			TMP_6_btint_a = output_btint_a_2;
			TMP_6_btint_b = output_btint_b_2;
			TMP_6_overflow = output_overflow_2;
			one_btint_a <= TMP_6_btint_a;
			one_btint_b <= TMP_6_btint_b;
			one_overflow <= TMP_6_overflow;
			begin : sv2v_autoblock_70
				integer i_2;
				for (i_2 = 0; i_2 < 4; i_2 = i_2 + 1)
					begin : sv2v_autoblock_71
						integer j;
						for (j = 0; j < 4; j = j + 1)
							begin
								result_u_btint_a[(15 - ((i_2 * 4) + j)) * 8+:8] <= zero_btint_a;
								result_u_btint_b[(15 - ((i_2 * 4) + j)) * 8+:8] <= zero_btint_b;
								result_u_overflow[(15 - ((i_2 * 4) + j)) * 2+:2] <= zero_overflow;
								result_d_btint_a[(15 - ((i_2 * 4) + j)) * 8+:8] <= zero_btint_a;
								result_d_btint_b[(15 - ((i_2 * 4) + j)) * 8+:8] <= zero_btint_b;
								result_d_overflow[(15 - ((i_2 * 4) + j)) * 2+:2] <= zero_overflow;
								state[(i_2 * 4) + j] <= 0;
							end
					end
			end
			steps <= 0;
			begin : sv2v_autoblock_72
				integer i_3;
				for (i_3 = 0; i_3 < 3; i_3 = i_3 + 1)
					index_a[(2 - i_3) * 32+:32] <= -(i_3 + 1);
			end
			index_b <= 0;
			load_done <= 0;
			control_PROC_STATE <= 0;
			control_WAIT_N_COUNTER <= 0;
		end
		else begin
			control_WAIT_N_COUNTER <= control_WAIT_N_COUNTER_next;
			result_u_btint_a <= result_u_btint_a_next;
			result_u_btint_b <= result_u_btint_b_next;
			result_u_overflow <= result_u_overflow_next;
			result_d_btint_a <= result_d_btint_a_next;
			result_d_btint_b <= result_d_btint_b_next;
			result_d_overflow <= result_d_overflow_next;
			steps <= steps_next;
			zero_btint_a <= zero_btint_a_next;
			zero_btint_b <= zero_btint_b_next;
			zero_overflow <= zero_overflow_next;
			state <= state_next;
			index_a <= index_a_next;
			load_done <= load_done_next;
			index_b <= index_b_next;
			one_btint_a <= one_btint_a_next;
			one_btint_b <= one_btint_b_next;
			one_overflow <= one_overflow_next;
			controller_result_u_btint_a <= controller_result_u_btint_a_next;
			controller_result_u_btint_b <= controller_result_u_btint_b_next;
			controller_result_u_overflow <= controller_result_u_overflow_next;
			controller_result_d_btint_a <= controller_result_d_btint_a_next;
			controller_result_d_btint_b <= controller_result_d_btint_b_next;
			controller_result_d_overflow <= controller_result_d_overflow_next;
			controller_s_mm <= controller_s_mm_next;
			controller_done <= controller_done_next;
			controller_s_in <= controller_s_in_next;
			controller_c_in_u_btint_a <= controller_c_in_u_btint_a_next;
			controller_c_in_u_btint_b <= controller_c_in_u_btint_b_next;
			controller_c_in_u_overflow <= controller_c_in_u_overflow_next;
			controller_c_in_d_btint_a <= controller_c_in_d_btint_a_next;
			controller_c_in_d_btint_b <= controller_c_in_d_btint_b_next;
			controller_c_in_d_overflow <= controller_c_in_d_overflow_next;
			controller_a_in_btint_a <= controller_a_in_btint_a_next;
			controller_a_in_btint_b <= controller_a_in_btint_b_next;
			controller_a_in_overflow <= controller_a_in_overflow_next;
			control_PROC_STATE <= control_PROC_STATE_next;
		end
	end
	initial _sv2v_0 = 0;
endmodule
