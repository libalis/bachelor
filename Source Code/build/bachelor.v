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
	wire [95:0] cell_a_in_btint_a;
	wire [95:0] cell_a_in_btint_b;
	wire [23:0] cell_a_in_overflow;
	wire [95:0] cell_c_in_u_btint_a;
	wire [95:0] cell_c_in_u_btint_b;
	wire [23:0] cell_c_in_u_overflow;
	wire [95:0] cell_c_in_d_btint_a;
	wire [95:0] cell_c_in_d_btint_b;
	wire [23:0] cell_c_in_d_overflow;
	wire [11:0] cell_s_in;
	wire [0:3] cell_s_mm;
	wire [95:0] cell_a_out_btint_a;
	wire [95:0] cell_a_out_btint_b;
	wire [23:0] cell_a_out_overflow;
	wire [95:0] cell_c_out_u_btint_a;
	wire [95:0] cell_c_out_u_btint_b;
	wire [23:0] cell_c_out_u_overflow;
	wire [95:0] cell_c_out_d_btint_a;
	wire [95:0] cell_c_out_d_btint_b;
	wire [23:0] cell_c_out_d_overflow;
	wire [11:0] cell_s_out;
	CELL cell_0_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[88+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[88+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[22+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[88+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[88+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[22+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[88+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[88+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[22+:2]),
		.cell_s_in(cell_s_in[11]),
		.cell_s_mm(cell_s_mm[0]),
		.cell_a_out_btint_a(cell_a_out_btint_a[88+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[88+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[22+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[88+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[88+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[22+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[88+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[88+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[22+:2]),
		.cell_s_out(cell_s_out[11])
	);
	CELL cell_0_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[80+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[80+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[20+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[80+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[80+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[20+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[80+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[80+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[20+:2]),
		.cell_s_in(cell_s_in[10]),
		.cell_s_mm(cell_s_mm[0]),
		.cell_a_out_btint_a(cell_a_out_btint_a[80+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[80+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[20+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[80+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[80+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[20+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[80+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[80+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[20+:2]),
		.cell_s_out(cell_s_out[10])
	);
	CELL cell_0_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[72+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[72+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[18+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[72+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[72+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[18+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[72+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[72+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[18+:2]),
		.cell_s_in(cell_s_in[9]),
		.cell_s_mm(cell_s_mm[0]),
		.cell_a_out_btint_a(cell_a_out_btint_a[72+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[72+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[18+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[72+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[72+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[18+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[72+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[72+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[18+:2]),
		.cell_s_out(cell_s_out[9])
	);
	CELL cell_1_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[64+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[64+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[16+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[64+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[64+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[16+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[64+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[64+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[16+:2]),
		.cell_s_in(cell_s_in[8]),
		.cell_s_mm(cell_s_mm[1]),
		.cell_a_out_btint_a(cell_a_out_btint_a[64+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[64+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[16+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[64+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[64+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[16+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[64+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[64+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[16+:2]),
		.cell_s_out(cell_s_out[8])
	);
	CELL cell_1_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[56+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[56+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[14+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[56+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[56+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[14+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[56+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[56+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[14+:2]),
		.cell_s_in(cell_s_in[7]),
		.cell_s_mm(cell_s_mm[1]),
		.cell_a_out_btint_a(cell_a_out_btint_a[56+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[56+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[14+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[56+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[56+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[14+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[56+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[56+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[14+:2]),
		.cell_s_out(cell_s_out[7])
	);
	CELL cell_1_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[48+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[48+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[12+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[48+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[48+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[12+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[48+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[48+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[12+:2]),
		.cell_s_in(cell_s_in[6]),
		.cell_s_mm(cell_s_mm[1]),
		.cell_a_out_btint_a(cell_a_out_btint_a[48+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[48+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[12+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[48+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[48+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[12+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[48+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[48+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[12+:2]),
		.cell_s_out(cell_s_out[6])
	);
	CELL cell_2_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[40+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[40+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[10+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[40+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[40+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[10+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[40+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[40+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[10+:2]),
		.cell_s_in(cell_s_in[5]),
		.cell_s_mm(cell_s_mm[2]),
		.cell_a_out_btint_a(cell_a_out_btint_a[40+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[40+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[10+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[40+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[40+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[10+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[40+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[40+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[10+:2]),
		.cell_s_out(cell_s_out[5])
	);
	CELL cell_2_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[32+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[32+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[8+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[32+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[32+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[8+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[32+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[32+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[8+:2]),
		.cell_s_in(cell_s_in[4]),
		.cell_s_mm(cell_s_mm[2]),
		.cell_a_out_btint_a(cell_a_out_btint_a[32+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[32+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[8+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[32+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[32+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[8+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[32+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[32+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[8+:2]),
		.cell_s_out(cell_s_out[4])
	);
	CELL cell_2_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[24+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[24+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[6+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[24+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[24+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[6+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[24+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[24+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[6+:2]),
		.cell_s_in(cell_s_in[3]),
		.cell_s_mm(cell_s_mm[2]),
		.cell_a_out_btint_a(cell_a_out_btint_a[24+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[24+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[6+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[24+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[24+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[6+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[24+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[24+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[6+:2]),
		.cell_s_out(cell_s_out[3])
	);
	CELL cell_3_0(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[16+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[16+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[4+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[16+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[16+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[4+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[16+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[16+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[4+:2]),
		.cell_s_in(cell_s_in[2]),
		.cell_s_mm(cell_s_mm[3]),
		.cell_a_out_btint_a(cell_a_out_btint_a[16+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[16+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[4+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[16+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[16+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[4+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[16+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[16+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[4+:2]),
		.cell_s_out(cell_s_out[2])
	);
	CELL cell_3_1(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[8+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[8+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[2+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[8+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[8+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[2+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[8+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[8+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[2+:2]),
		.cell_s_in(cell_s_in[1]),
		.cell_s_mm(cell_s_mm[3]),
		.cell_a_out_btint_a(cell_a_out_btint_a[8+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[8+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[2+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[8+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[8+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[2+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[8+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[8+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[2+:2]),
		.cell_s_out(cell_s_out[1])
	);
	CELL cell_3_2(
		.cell_clock(combined_operations_clock),
		.cell_reset(combined_operations_reset),
		.cell_op(combined_operations_op),
		.cell_a_in_btint_a(cell_a_in_btint_a[0+:8]),
		.cell_a_in_btint_b(cell_a_in_btint_b[0+:8]),
		.cell_a_in_overflow(cell_a_in_overflow[0+:2]),
		.cell_c_in_u_btint_a(cell_c_in_u_btint_a[0+:8]),
		.cell_c_in_u_btint_b(cell_c_in_u_btint_b[0+:8]),
		.cell_c_in_u_overflow(cell_c_in_u_overflow[0+:2]),
		.cell_c_in_d_btint_a(cell_c_in_d_btint_a[0+:8]),
		.cell_c_in_d_btint_b(cell_c_in_d_btint_b[0+:8]),
		.cell_c_in_d_overflow(cell_c_in_d_overflow[0+:2]),
		.cell_s_in(cell_s_in[0]),
		.cell_s_mm(cell_s_mm[3]),
		.cell_a_out_btint_a(cell_a_out_btint_a[0+:8]),
		.cell_a_out_btint_b(cell_a_out_btint_b[0+:8]),
		.cell_a_out_overflow(cell_a_out_overflow[0+:2]),
		.cell_c_out_u_btint_a(cell_c_out_u_btint_a[0+:8]),
		.cell_c_out_u_btint_b(cell_c_out_u_btint_b[0+:8]),
		.cell_c_out_u_overflow(cell_c_out_u_overflow[0+:2]),
		.cell_c_out_d_btint_a(cell_c_out_d_btint_a[0+:8]),
		.cell_c_out_d_btint_b(cell_c_out_d_btint_b[0+:8]),
		.cell_c_out_d_overflow(cell_c_out_d_overflow[0+:2]),
		.cell_s_out(cell_s_out[0])
	);
	CONTROLLER controller(
		.controller_clock(combined_operations_clock),
		.controller_reset(combined_operations_reset),
		.controller_m_a_btint_a(combined_operations_m_a_btint_a),
		.controller_m_a_btint_b(combined_operations_m_a_btint_b),
		.controller_m_a_overflow(combined_operations_m_a_overflow),
		.controller_m_b_btint_a(combined_operations_m_b_btint_a),
		.controller_m_b_btint_b(combined_operations_m_b_btint_b),
		.controller_m_b_overflow(combined_operations_m_b_overflow),
		.controller_v_btint_a(combined_operations_v_btint_a),
		.controller_v_btint_b(combined_operations_v_btint_b),
		.controller_v_overflow(combined_operations_v_overflow),
		.controller_op(combined_operations_op),
		.controller_a_out_btint_a(cell_a_out_btint_a),
		.controller_a_out_btint_b(cell_a_out_btint_b),
		.controller_a_out_overflow(cell_a_out_overflow),
		.controller_c_out_u_btint_a(cell_c_out_u_btint_a),
		.controller_c_out_u_btint_b(cell_c_out_u_btint_b),
		.controller_c_out_u_overflow(cell_c_out_u_overflow),
		.controller_c_out_d_btint_a(cell_c_out_d_btint_a),
		.controller_c_out_d_btint_b(cell_c_out_d_btint_b),
		.controller_c_out_d_overflow(cell_c_out_d_overflow),
		.controller_s_out(cell_s_out),
		.controller_a_in_btint_a(cell_a_in_btint_a),
		.controller_a_in_btint_b(cell_a_in_btint_b),
		.controller_a_in_overflow(cell_a_in_overflow),
		.controller_c_in_u_btint_a(cell_c_in_u_btint_a),
		.controller_c_in_u_btint_b(cell_c_in_u_btint_b),
		.controller_c_in_u_overflow(cell_c_in_u_overflow),
		.controller_c_in_d_btint_a(cell_c_in_d_btint_a),
		.controller_c_in_d_btint_b(cell_c_in_d_btint_b),
		.controller_c_in_d_overflow(cell_c_in_d_overflow),
		.controller_s_in(cell_s_in),
		.controller_s_mm(cell_s_mm),
		.controller_done(combined_operations_done),
		.controller_result_u_btint_a(combined_operations_result_u_btint_a),
		.controller_result_u_btint_b(combined_operations_result_u_btint_b),
		.controller_result_u_overflow(combined_operations_result_u_overflow),
		.controller_result_d_btint_a(combined_operations_result_d_btint_a),
		.controller_result_d_btint_b(combined_operations_result_d_btint_b),
		.controller_result_d_overflow(combined_operations_result_d_overflow)
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
		reg [16:0] sum_btint_a;
		reg [16:0] sum_btint_b;
		reg [1:0] sum_overflow;
		reg [7:0] c_in_u_btint_a;
		reg [7:0] c_in_u_btint_b;
		reg [1:0] c_in_u_overflow;
		reg [7:0] a_in_btint_a;
		reg [7:0] a_in_btint_b;
		reg [1:0] a_in_overflow;
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
		integer TMP_3_value;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg TMP_3_isNegative;
		integer TMP_3_i;
		reg [7:0] TMP_4_btint_a;
		reg [7:0] TMP_4_btint_b;
		reg [1:0] TMP_4_overflow;
		integer TMP_5_value;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		integer output_index_2;
		integer output_value_2;
		reg [7:0] output_btint_a_5;
		reg [7:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
		reg TMP_5_isNegative;
		integer TMP_5_i;
		reg [7:0] TMP_6_btint_a;
		reg [7:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		integer TMP_7_value;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		integer output_index_3;
		integer output_value_3;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg TMP_7_isNegative;
		integer TMP_7_i;
		reg [7:0] TMP_8_btint_a;
		reg [7:0] TMP_8_btint_b;
		reg [1:0] TMP_8_overflow;
		integer TMP_9_value;
		reg [7:0] output_btint_a_8;
		reg [7:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		integer output_index_4;
		integer output_value_4;
		reg [7:0] output_btint_a_9;
		reg [7:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg TMP_9_isNegative;
		integer TMP_9_i;
		reg [7:0] TMP_10_btint_a;
		reg [7:0] TMP_10_btint_b;
		reg [1:0] TMP_10_overflow;
		reg [15:0] output_btint_a_10;
		reg [15:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
		integer TMP_13;
		integer output_index_5;
		integer product_msd;
		integer TMP_15;
		integer product_msd_1_1;
		integer TMP_17;
		integer product_msd_2_1;
		integer output_index_6;
		integer output_value_5;
		reg [15:0] output_btint_a_11;
		reg [15:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg [15:0] TMP_19_btint_a;
		reg [15:0] TMP_19_btint_b;
		reg [1:0] TMP_19_overflow;
		reg [15:0] TMP_20_btint_a;
		reg [15:0] TMP_20_btint_b;
		reg [1:0] TMP_20_overflow;
		reg [15:0] TMP_21_btint_a;
		reg [15:0] TMP_21_btint_b;
		reg [1:0] TMP_21_overflow;
		reg [15:0] TMP_12_btint_a;
		reg [15:0] TMP_12_btint_b;
		reg [1:0] TMP_12_overflow;
		integer TMP_12_from;
		integer TMP_12_to;
		reg [7:0] output_btint_a_12;
		reg [7:0] output_btint_b_12;
		reg [1:0] output_overflow_12;
		reg [7:0] TMP_22_btint_a;
		reg [7:0] TMP_22_btint_b;
		reg [1:0] TMP_22_overflow;
		integer TMP_27;
		integer c_in_u_output_v;
		integer TMP_28;
		integer c_in_u_index;
		reg [7:0] output_btint_a_13;
		reg [7:0] output_btint_b_13;
		reg [1:0] output_overflow_13;
		integer TMP_30;
		integer output_index_7;
		integer output_index_8;
		integer output_value_6;
		reg [7:0] output_btint_a_14;
		reg [7:0] output_btint_b_14;
		reg [1:0] output_overflow_14;
		reg [7:0] TMP_31_btint_a;
		reg [7:0] TMP_31_btint_b;
		reg [1:0] TMP_31_overflow;
		integer TMP_33;
		integer output_value_7;
		reg [7:0] output_btint_a_15;
		reg [7:0] output_btint_b_15;
		reg [1:0] output_overflow_15;
		reg [7:0] TMP_34_btint_a;
		reg [7:0] TMP_34_btint_b;
		reg [1:0] TMP_34_overflow;
		reg [7:0] TMP_29_btint_a;
		reg [7:0] TMP_29_btint_b;
		reg [1:0] TMP_29_overflow;
		integer TMP_40;
		integer a_in_output_v;
		integer a_in_index;
		integer TMP_41;
		integer output_v_1;
		integer index;
		reg [16:0] output_btint_a_16;
		reg [16:0] output_btint_b_16;
		reg [1:0] output_overflow_16;
		integer TMP_48;
		integer output_index_9;
		integer sum_msd;
		integer TMP_50;
		integer sum_msd_1_1;
		integer TMP_52;
		integer sum_msd_2_1;
		integer output_index_10;
		integer output_value_8;
		reg [16:0] output_btint_a_17;
		reg [16:0] output_btint_b_17;
		reg [1:0] output_overflow_17;
		reg [16:0] TMP_54_btint_a;
		reg [16:0] TMP_54_btint_b;
		reg [1:0] TMP_54_overflow;
		reg [16:0] TMP_55_btint_a;
		reg [16:0] TMP_55_btint_b;
		reg [1:0] TMP_55_overflow;
		reg [16:0] TMP_56_btint_a;
		reg [16:0] TMP_56_btint_b;
		reg [1:0] TMP_56_overflow;
		reg [16:0] TMP_47_btint_a;
		reg [16:0] TMP_47_btint_b;
		reg [1:0] TMP_47_overflow;
		integer TMP_47_from;
		integer TMP_47_to;
		reg [7:0] output_btint_a_18;
		reg [7:0] output_btint_b_18;
		reg [1:0] output_overflow_18;
		reg [7:0] TMP_57_btint_a;
		reg [7:0] TMP_57_btint_b;
		reg [1:0] TMP_57_overflow;
		integer TMP_62_value;
		reg [7:0] output_btint_a_19;
		reg [7:0] output_btint_b_19;
		reg [1:0] output_overflow_19;
		integer output_index_11;
		integer output_value_9;
		reg [7:0] output_btint_a_20;
		reg [7:0] output_btint_b_20;
		reg [1:0] output_overflow_20;
		reg TMP_62_isNegative;
		integer TMP_62_i;
		reg [7:0] TMP_63_btint_a;
		reg [7:0] TMP_63_btint_b;
		reg [1:0] TMP_63_overflow;
		reg [7:0] output_btint_a_21;
		reg [7:0] output_btint_b_21;
		reg [1:0] output_overflow_21;
		integer TMP_65_value;
		reg [7:0] output_btint_a_22;
		reg [7:0] output_btint_b_22;
		reg [1:0] output_overflow_22;
		integer output_index_12;
		integer output_value_10;
		reg [7:0] output_btint_a_23;
		reg [7:0] output_btint_b_23;
		reg [1:0] output_overflow_23;
		reg TMP_65_isNegative;
		integer TMP_65_i;
		reg [7:0] TMP_66_btint_a;
		reg [7:0] TMP_66_btint_b;
		reg [1:0] TMP_66_overflow;
		reg [7:0] low_btint_a;
		reg [7:0] low_btint_b;
		reg [1:0] low_overflow;
		reg [15:0] output_btint_a_24;
		reg [15:0] output_btint_b_24;
		reg [1:0] output_overflow_24;
		reg [15:0] TMP_67_btint_a;
		reg [15:0] TMP_67_btint_b;
		reg [1:0] TMP_67_overflow;
		begin
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			TMP_13 = 0;
			output_index_5 = 0;
			product_msd = 0;
			TMP_15 = 0;
			product_msd_1_1 = 0;
			TMP_17 = 0;
			product_msd_2_1 = 0;
			output_index_6 = 0;
			output_value_5 = 0;
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
			TMP_19_btint_a = 0;
			TMP_19_btint_b = 0;
			TMP_19_overflow = 0;
			TMP_20_btint_a = 0;
			TMP_20_btint_b = 0;
			TMP_20_overflow = 0;
			TMP_21_btint_a = 0;
			TMP_21_btint_b = 0;
			TMP_21_overflow = 0;
			TMP_12_btint_a = 0;
			TMP_12_btint_b = 0;
			TMP_12_overflow = 0;
			TMP_12_from = 0;
			TMP_12_to = 0;
			output_btint_a_12 = 0;
			output_btint_b_12 = 0;
			output_overflow_12 = 0;
			TMP_22_btint_a = 0;
			TMP_22_btint_b = 0;
			TMP_22_overflow = 0;
			TMP_27 = 0;
			c_in_u_output_v = 0;
			TMP_28 = 0;
			c_in_u_index = 0;
			output_btint_a_13 = 0;
			output_btint_b_13 = 0;
			output_overflow_13 = 0;
			TMP_30 = 0;
			output_index_7 = 0;
			output_index_8 = 0;
			output_value_6 = 0;
			output_btint_a_14 = 0;
			output_btint_b_14 = 0;
			output_overflow_14 = 0;
			TMP_31_btint_a = 0;
			TMP_31_btint_b = 0;
			TMP_31_overflow = 0;
			TMP_33 = 0;
			output_value_7 = 0;
			output_btint_a_15 = 0;
			output_btint_b_15 = 0;
			output_overflow_15 = 0;
			TMP_34_btint_a = 0;
			TMP_34_btint_b = 0;
			TMP_34_overflow = 0;
			TMP_29_btint_a = 0;
			TMP_29_btint_b = 0;
			TMP_29_overflow = 0;
			TMP_40 = 0;
			a_in_output_v = 0;
			a_in_index = 0;
			TMP_41 = 0;
			output_v_1 = 0;
			index = 0;
			output_btint_a_16 = 0;
			output_btint_b_16 = 0;
			output_overflow_16 = 0;
			TMP_48 = 0;
			output_index_9 = 0;
			sum_msd = 0;
			TMP_50 = 0;
			sum_msd_1_1 = 0;
			TMP_52 = 0;
			sum_msd_2_1 = 0;
			output_index_10 = 0;
			output_value_8 = 0;
			output_btint_a_17 = 0;
			output_btint_b_17 = 0;
			output_overflow_17 = 0;
			TMP_54_btint_a = 0;
			TMP_54_btint_b = 0;
			TMP_54_overflow = 0;
			TMP_55_btint_a = 0;
			TMP_55_btint_b = 0;
			TMP_55_overflow = 0;
			TMP_56_btint_a = 0;
			TMP_56_btint_b = 0;
			TMP_56_overflow = 0;
			TMP_47_btint_a = 0;
			TMP_47_btint_b = 0;
			TMP_47_overflow = 0;
			TMP_47_from = 0;
			TMP_47_to = 0;
			output_btint_a_18 = 0;
			output_btint_b_18 = 0;
			output_overflow_18 = 0;
			TMP_57_btint_a = 0;
			TMP_57_btint_b = 0;
			TMP_57_overflow = 0;
			TMP_62_value = 0;
			output_btint_a_19 = 0;
			output_btint_b_19 = 0;
			output_overflow_19 = 0;
			output_index_11 = 0;
			output_value_9 = 0;
			output_btint_a_20 = 0;
			output_btint_b_20 = 0;
			output_overflow_20 = 0;
			TMP_62_isNegative = 0;
			TMP_62_i = 0;
			TMP_63_btint_a = 0;
			TMP_63_btint_b = 0;
			TMP_63_overflow = 0;
			output_btint_a_21 = 0;
			output_btint_b_21 = 0;
			output_overflow_21 = 0;
			TMP_65_value = 0;
			output_btint_a_22 = 0;
			output_btint_b_22 = 0;
			output_overflow_22 = 0;
			output_index_12 = 0;
			output_value_10 = 0;
			output_btint_a_23 = 0;
			output_btint_b_23 = 0;
			output_overflow_23 = 0;
			TMP_65_isNegative = 0;
			TMP_65_i = 0;
			TMP_66_btint_a = 0;
			TMP_66_btint_b = 0;
			TMP_66_overflow = 0;
			low_btint_a = 0;
			low_btint_b = 0;
			low_overflow = 0;
			output_btint_a_24 = 0;
			output_btint_b_24 = 0;
			output_overflow_24 = 0;
			TMP_67_btint_a = 0;
			TMP_67_btint_b = 0;
			TMP_67_overflow = 0;
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
			sum_btint_a = adder_subtractor_sum_btint_a;
			sum_btint_b = adder_subtractor_sum_btint_b;
			sum_overflow = adder_subtractor_sum_overflow;
			begin : sv2v_autoblock_1
				integer i_5;
				for (i_5 = 0; i_5 < 4; i_5 = i_5 + 1)
					begin
						product_btint_a_next[(3 - i_5) * 16+:16] = multiplier_product_btint_a[i_5];
						product_btint_b_next[(3 - i_5) * 16+:16] = multiplier_product_btint_b[i_5];
						product_overflow_next[(3 - i_5) * 2+:2] = multiplier_product_overflow[i_5];
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
						output_btint_a_10 = 0;
						output_btint_b_10 = 0;
						output_overflow_10 = 0;
						output_btint_a_10[0] = product_btint_a_next[48+:16];
						output_btint_b_10[0] = product_btint_b_next[48+:16];
						output_overflow_10[0] = product_overflow_next[6+:2];
						output_index_5 = 8;
						TMP_13 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
						product_msd = TMP_13;
						output_index_5 = 7;
						TMP_15 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
						product_msd_1_1 = TMP_15;
						output_index_5 = 6;
						TMP_17 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
						product_msd_2_1 = TMP_17;
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
						output_index_6 = 8;
						output_value_5 = product_msd;
						output_btint_a_11 = 0;
						output_btint_b_11 = 0;
						output_overflow_11 = 0;
						output_btint_a_11 = output_btint_a_10;
						output_btint_b_11 = output_btint_b_10;
						output_overflow_11 = output_overflow_10;
						case (output_value_5)
							-1: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 0;
							end
							0: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 1;
							end
							1: begin
								output_btint_a_11[output_index_6] = 1;
								output_btint_b_11[output_index_6] = 1;
							end
							default:
								;
						endcase
						TMP_19_btint_a = output_btint_a_11;
						TMP_19_btint_b = output_btint_b_11;
						TMP_19_overflow = output_overflow_11;
						output_btint_a_10 = TMP_19_btint_a;
						output_btint_b_10 = TMP_19_btint_b;
						output_overflow_10 = TMP_19_overflow;
						output_index_6 = 7;
						output_value_5 = product_msd_1_1;
						output_btint_a_11 = 0;
						output_btint_b_11 = 0;
						output_overflow_11 = 0;
						output_btint_a_11 = output_btint_a_10;
						output_btint_b_11 = output_btint_b_10;
						output_overflow_11 = output_overflow_10;
						case (output_value_5)
							-1: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 0;
							end
							0: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 1;
							end
							1: begin
								output_btint_a_11[output_index_6] = 1;
								output_btint_b_11[output_index_6] = 1;
							end
							default:
								;
						endcase
						TMP_20_btint_a = output_btint_a_11;
						TMP_20_btint_b = output_btint_b_11;
						TMP_20_overflow = output_overflow_11;
						output_btint_a_10 = TMP_20_btint_a;
						output_btint_b_10 = TMP_20_btint_b;
						output_overflow_10 = TMP_20_overflow;
						output_index_6 = 6;
						output_value_5 = product_msd_2_1;
						output_btint_a_11 = 0;
						output_btint_b_11 = 0;
						output_overflow_11 = 0;
						output_btint_a_11 = output_btint_a_10;
						output_btint_b_11 = output_btint_b_10;
						output_overflow_11 = output_overflow_10;
						case (output_value_5)
							-1: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 0;
							end
							0: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 1;
							end
							1: begin
								output_btint_a_11[output_index_6] = 1;
								output_btint_b_11[output_index_6] = 1;
							end
							default:
								;
						endcase
						TMP_21_btint_a = output_btint_a_11;
						TMP_21_btint_b = output_btint_b_11;
						TMP_21_overflow = output_overflow_11;
						output_btint_a_10 = TMP_21_btint_a;
						output_btint_b_10 = TMP_21_btint_b;
						output_overflow_10 = TMP_21_overflow;
						TMP_12_btint_a = output_btint_a_10;
						TMP_12_btint_b = output_btint_b_10;
						TMP_12_overflow = output_overflow_10;
						TMP_12_from = 15;
						TMP_12_to = 0;
						output_btint_a_12 = 0;
						output_btint_b_12 = 0;
						output_overflow_12 = 0;
						output_btint_a_12 = TMP_12_btint_a[TMP_12_to+:8];
						output_btint_b_12 = TMP_12_btint_b[TMP_12_to+:8];
						output_overflow_12 = TMP_12_overflow;
						TMP_22_btint_a = output_btint_a_12;
						TMP_22_btint_b = output_btint_b_12;
						TMP_22_overflow = output_overflow_12;
						state_d_btint_a_next = TMP_22_btint_a;
						state_d_btint_b_next = TMP_22_btint_b;
						state_d_overflow_next = TMP_22_overflow;
						cell_c_out_u_btint_a_next = cell_c_in_u_btint_a;
						cell_c_out_u_btint_b_next = cell_c_in_u_btint_b;
						cell_c_out_u_overflow_next = cell_c_in_u_overflow;
						output_btint_a_10 = 0;
						output_btint_b_10 = 0;
						output_overflow_10 = 0;
						output_btint_a_10[0] = product_btint_a_next[48+:16];
						output_btint_b_10[0] = product_btint_b_next[48+:16];
						output_overflow_10[0] = product_overflow_next[6+:2];
						output_index_5 = 8;
						TMP_13 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
						product_msd = TMP_13;
						output_index_5 = 7;
						TMP_15 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
						product_msd_1_1 = TMP_15;
						output_index_5 = 6;
						TMP_17 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
						product_msd_2_1 = TMP_17;
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
						output_index_6 = 8;
						output_value_5 = product_msd;
						output_btint_a_11 = 0;
						output_btint_b_11 = 0;
						output_overflow_11 = 0;
						output_btint_a_11 = output_btint_a_10;
						output_btint_b_11 = output_btint_b_10;
						output_overflow_11 = output_overflow_10;
						case (output_value_5)
							-1: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 0;
							end
							0: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 1;
							end
							1: begin
								output_btint_a_11[output_index_6] = 1;
								output_btint_b_11[output_index_6] = 1;
							end
							default:
								;
						endcase
						TMP_19_btint_a = output_btint_a_11;
						TMP_19_btint_b = output_btint_b_11;
						TMP_19_overflow = output_overflow_11;
						output_btint_a_10 = TMP_19_btint_a;
						output_btint_b_10 = TMP_19_btint_b;
						output_overflow_10 = TMP_19_overflow;
						output_index_6 = 7;
						output_value_5 = product_msd_1_1;
						output_btint_a_11 = 0;
						output_btint_b_11 = 0;
						output_overflow_11 = 0;
						output_btint_a_11 = output_btint_a_10;
						output_btint_b_11 = output_btint_b_10;
						output_overflow_11 = output_overflow_10;
						case (output_value_5)
							-1: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 0;
							end
							0: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 1;
							end
							1: begin
								output_btint_a_11[output_index_6] = 1;
								output_btint_b_11[output_index_6] = 1;
							end
							default:
								;
						endcase
						TMP_20_btint_a = output_btint_a_11;
						TMP_20_btint_b = output_btint_b_11;
						TMP_20_overflow = output_overflow_11;
						output_btint_a_10 = TMP_20_btint_a;
						output_btint_b_10 = TMP_20_btint_b;
						output_overflow_10 = TMP_20_overflow;
						output_index_6 = 6;
						output_value_5 = product_msd_2_1;
						output_btint_a_11 = 0;
						output_btint_b_11 = 0;
						output_overflow_11 = 0;
						output_btint_a_11 = output_btint_a_10;
						output_btint_b_11 = output_btint_b_10;
						output_overflow_11 = output_overflow_10;
						case (output_value_5)
							-1: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 0;
							end
							0: begin
								output_btint_a_11[output_index_6] = 0;
								output_btint_b_11[output_index_6] = 1;
							end
							1: begin
								output_btint_a_11[output_index_6] = 1;
								output_btint_b_11[output_index_6] = 1;
							end
							default:
								;
						endcase
						TMP_21_btint_a = output_btint_a_11;
						TMP_21_btint_b = output_btint_b_11;
						TMP_21_overflow = output_overflow_11;
						output_btint_a_10 = TMP_21_btint_a;
						output_btint_b_10 = TMP_21_btint_b;
						output_overflow_10 = TMP_21_overflow;
						TMP_12_btint_a = output_btint_a_10;
						TMP_12_btint_b = output_btint_b_10;
						TMP_12_overflow = output_overflow_10;
						TMP_12_from = 15;
						TMP_12_to = 0;
						output_btint_a_12 = 0;
						output_btint_b_12 = 0;
						output_overflow_12 = 0;
						output_btint_a_12 = TMP_12_btint_a[TMP_12_to+:8];
						output_btint_b_12 = TMP_12_btint_b[TMP_12_to+:8];
						output_overflow_12 = TMP_12_overflow;
						TMP_22_btint_a = output_btint_a_12;
						TMP_22_btint_b = output_btint_b_12;
						TMP_22_overflow = output_overflow_12;
						cell_c_out_d_btint_a_next = TMP_22_btint_a;
						cell_c_out_d_btint_b_next = TMP_22_btint_b;
						cell_c_out_d_overflow_next = TMP_22_overflow;
					end
					else begin
						c_in_u_output_v = 0;
						begin : sv2v_autoblock_2
							integer i_6;
							for (i_6 = 7; i_6 >= 0; i_6 = i_6 - 1)
								begin
									c_in_u_index = i_6;
									TMP_28 = (c_in_u_btint_a[c_in_u_index] + c_in_u_btint_b[c_in_u_index]) - 1;
									c_in_u_output_v = (2 * c_in_u_output_v) + TMP_28;
								end
						end
						TMP_27 = c_in_u_output_v;
						if (TMP_27 == 0) begin
							multiplier_reset_next[0] = 0;
							output_btint_a_13 = 0;
							output_btint_b_13 = 0;
							output_overflow_13 = 0;
							output_btint_a_13 = state_u_btint_a_next;
							output_btint_b_13 = state_u_btint_b_next;
							output_overflow_13 = state_u_overflow_next;
							begin : sv2v_autoblock_3
								integer i_7;
								for (i_7 = 0; i_7 < 8; i_7 = i_7 + 1)
									begin
										output_index_7 = i_7;
										TMP_30 = (output_btint_a_13[output_index_7] + output_btint_b_13[output_index_7]) - 1;
										output_index_8 = i_7;
										output_value_6 = -TMP_30;
										output_btint_a_14 = 0;
										output_btint_b_14 = 0;
										output_overflow_14 = 0;
										output_btint_a_14 = output_btint_a_13;
										output_btint_b_14 = output_btint_b_13;
										output_overflow_14 = output_overflow_13;
										case (output_value_6)
											-1: begin
												output_btint_a_14[output_index_8] = 0;
												output_btint_b_14[output_index_8] = 0;
											end
											0: begin
												output_btint_a_14[output_index_8] = 0;
												output_btint_b_14[output_index_8] = 1;
											end
											1: begin
												output_btint_a_14[output_index_8] = 1;
												output_btint_b_14[output_index_8] = 1;
											end
											default:
												;
										endcase
										TMP_31_btint_a = output_btint_a_14;
										TMP_31_btint_b = output_btint_b_14;
										TMP_31_overflow = output_overflow_14;
										output_btint_a_13 = TMP_31_btint_a;
										output_btint_b_13 = TMP_31_btint_b;
										output_overflow_13 = TMP_31_overflow;
									end
							end
							TMP_33 = (output_overflow_13[0] + output_overflow_13[1]) - 1;
							output_value_7 = -TMP_33;
							output_btint_a_15 = 0;
							output_btint_b_15 = 0;
							output_overflow_15 = 0;
							output_btint_a_15 = output_btint_a_13;
							output_btint_b_15 = output_btint_b_13;
							output_overflow_15 = output_overflow_13;
							case (output_value_7)
								-1: begin
									output_overflow_15[0] = 0;
									output_overflow_15[1] = 0;
								end
								0: begin
									output_overflow_15[0] = 0;
									output_overflow_15[1] = 1;
								end
								1: begin
									output_overflow_15[0] = 1;
									output_overflow_15[1] = 1;
								end
								default:
									;
							endcase
							TMP_34_btint_a = output_btint_a_15;
							TMP_34_btint_b = output_btint_b_15;
							TMP_34_overflow = output_overflow_15;
							output_btint_a_13 = TMP_34_btint_a;
							output_btint_b_13 = TMP_34_btint_b;
							output_overflow_13 = TMP_34_overflow;
							TMP_29_btint_a = output_btint_a_13;
							TMP_29_btint_b = output_btint_b_13;
							TMP_29_overflow = output_overflow_13;
							multiplier_a_btint_a_next[24+:8] = TMP_29_btint_a;
							multiplier_a_btint_b_next[24+:8] = TMP_29_btint_b;
							multiplier_a_overflow_next[6+:2] = TMP_29_overflow;
							multiplier_b_btint_a_next[24+:8] = cell_a_in_btint_a;
							multiplier_b_btint_b_next[24+:8] = cell_a_in_btint_b;
							multiplier_b_overflow_next[6+:2] = cell_a_in_overflow;
							output_btint_a_10 = 0;
							output_btint_b_10 = 0;
							output_overflow_10 = 0;
							output_btint_a_10[0] = product_btint_a_next[48+:16];
							output_btint_b_10[0] = product_btint_b_next[48+:16];
							output_overflow_10[0] = product_overflow_next[6+:2];
							output_index_5 = 8;
							TMP_13 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
							product_msd = TMP_13;
							output_index_5 = 7;
							TMP_15 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
							product_msd_1_1 = TMP_15;
							output_index_5 = 6;
							TMP_17 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
							product_msd_2_1 = TMP_17;
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
							output_index_6 = 8;
							output_value_5 = product_msd;
							output_btint_a_11 = 0;
							output_btint_b_11 = 0;
							output_overflow_11 = 0;
							output_btint_a_11 = output_btint_a_10;
							output_btint_b_11 = output_btint_b_10;
							output_overflow_11 = output_overflow_10;
							case (output_value_5)
								-1: begin
									output_btint_a_11[output_index_6] = 0;
									output_btint_b_11[output_index_6] = 0;
								end
								0: begin
									output_btint_a_11[output_index_6] = 0;
									output_btint_b_11[output_index_6] = 1;
								end
								1: begin
									output_btint_a_11[output_index_6] = 1;
									output_btint_b_11[output_index_6] = 1;
								end
								default:
									;
							endcase
							TMP_19_btint_a = output_btint_a_11;
							TMP_19_btint_b = output_btint_b_11;
							TMP_19_overflow = output_overflow_11;
							output_btint_a_10 = TMP_19_btint_a;
							output_btint_b_10 = TMP_19_btint_b;
							output_overflow_10 = TMP_19_overflow;
							output_index_6 = 7;
							output_value_5 = product_msd_1_1;
							output_btint_a_11 = 0;
							output_btint_b_11 = 0;
							output_overflow_11 = 0;
							output_btint_a_11 = output_btint_a_10;
							output_btint_b_11 = output_btint_b_10;
							output_overflow_11 = output_overflow_10;
							case (output_value_5)
								-1: begin
									output_btint_a_11[output_index_6] = 0;
									output_btint_b_11[output_index_6] = 0;
								end
								0: begin
									output_btint_a_11[output_index_6] = 0;
									output_btint_b_11[output_index_6] = 1;
								end
								1: begin
									output_btint_a_11[output_index_6] = 1;
									output_btint_b_11[output_index_6] = 1;
								end
								default:
									;
							endcase
							TMP_20_btint_a = output_btint_a_11;
							TMP_20_btint_b = output_btint_b_11;
							TMP_20_overflow = output_overflow_11;
							output_btint_a_10 = TMP_20_btint_a;
							output_btint_b_10 = TMP_20_btint_b;
							output_overflow_10 = TMP_20_overflow;
							output_index_6 = 6;
							output_value_5 = product_msd_2_1;
							output_btint_a_11 = 0;
							output_btint_b_11 = 0;
							output_overflow_11 = 0;
							output_btint_a_11 = output_btint_a_10;
							output_btint_b_11 = output_btint_b_10;
							output_overflow_11 = output_overflow_10;
							case (output_value_5)
								-1: begin
									output_btint_a_11[output_index_6] = 0;
									output_btint_b_11[output_index_6] = 0;
								end
								0: begin
									output_btint_a_11[output_index_6] = 0;
									output_btint_b_11[output_index_6] = 1;
								end
								1: begin
									output_btint_a_11[output_index_6] = 1;
									output_btint_b_11[output_index_6] = 1;
								end
								default:
									;
							endcase
							TMP_21_btint_a = output_btint_a_11;
							TMP_21_btint_b = output_btint_b_11;
							TMP_21_overflow = output_overflow_11;
							output_btint_a_10 = TMP_21_btint_a;
							output_btint_b_10 = TMP_21_btint_b;
							output_overflow_10 = TMP_21_overflow;
							TMP_12_btint_a = output_btint_a_10;
							TMP_12_btint_b = output_btint_b_10;
							TMP_12_overflow = output_overflow_10;
							TMP_12_from = 15;
							TMP_12_to = 0;
							output_btint_a_12 = 0;
							output_btint_b_12 = 0;
							output_overflow_12 = 0;
							output_btint_a_12 = TMP_12_btint_a[TMP_12_to+:8];
							output_btint_b_12 = TMP_12_btint_b[TMP_12_to+:8];
							output_overflow_12 = TMP_12_overflow;
							TMP_22_btint_a = output_btint_a_12;
							TMP_22_btint_b = output_btint_b_12;
							TMP_22_overflow = output_overflow_12;
							cell_c_out_u_btint_a_next = TMP_22_btint_a;
							cell_c_out_u_btint_b_next = TMP_22_btint_b;
							cell_c_out_u_overflow_next = TMP_22_overflow;
							cell_c_out_d_btint_a_next = state_d_btint_a_next;
							cell_c_out_d_btint_b_next = state_d_btint_b_next;
							cell_c_out_d_overflow_next = state_d_overflow_next;
						end
						else begin
							a_in_output_v = 0;
							begin : sv2v_autoblock_4
								integer i_8;
								for (i_8 = 7; i_8 >= 0; i_8 = i_8 - 1)
									begin
										a_in_index = i_8;
										TMP_28 = (a_in_btint_a[a_in_index] + a_in_btint_b[a_in_index]) - 1;
										a_in_output_v = (2 * a_in_output_v) + TMP_28;
									end
							end
							TMP_40 = a_in_output_v;
							output_v_1 = 0;
							begin : sv2v_autoblock_5
								integer i_9;
								for (i_9 = 7; i_9 >= 0; i_9 = i_9 - 1)
									begin
										index = i_9;
										TMP_28 = (state_u_btint_a_next[index] + state_u_btint_b_next[index]) - 1;
										output_v_1 = (2 * output_v_1) + TMP_28;
									end
							end
							TMP_41 = output_v_1;
							if ((TMP_40 == 0) || (TMP_41 == 0)) begin
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
								output_btint_a_10 = 0;
								output_btint_b_10 = 0;
								output_overflow_10 = 0;
								output_btint_a_10[1] = product_btint_a_next[32+:16];
								output_btint_b_10[1] = product_btint_b_next[32+:16];
								output_overflow_10[1] = product_overflow_next[4+:2];
								output_index_5 = 8;
								TMP_13 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
								product_msd = TMP_13;
								output_index_5 = 7;
								TMP_15 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
								product_msd_1_1 = TMP_15;
								output_index_5 = 6;
								TMP_17 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
								product_msd_2_1 = TMP_17;
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
								output_index_6 = 8;
								output_value_5 = product_msd;
								output_btint_a_11 = 0;
								output_btint_b_11 = 0;
								output_overflow_11 = 0;
								output_btint_a_11 = output_btint_a_10;
								output_btint_b_11 = output_btint_b_10;
								output_overflow_11 = output_overflow_10;
								case (output_value_5)
									-1: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 0;
									end
									0: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 1;
									end
									1: begin
										output_btint_a_11[output_index_6] = 1;
										output_btint_b_11[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_19_btint_a = output_btint_a_11;
								TMP_19_btint_b = output_btint_b_11;
								TMP_19_overflow = output_overflow_11;
								output_btint_a_10 = TMP_19_btint_a;
								output_btint_b_10 = TMP_19_btint_b;
								output_overflow_10 = TMP_19_overflow;
								output_index_6 = 7;
								output_value_5 = product_msd_1_1;
								output_btint_a_11 = 0;
								output_btint_b_11 = 0;
								output_overflow_11 = 0;
								output_btint_a_11 = output_btint_a_10;
								output_btint_b_11 = output_btint_b_10;
								output_overflow_11 = output_overflow_10;
								case (output_value_5)
									-1: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 0;
									end
									0: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 1;
									end
									1: begin
										output_btint_a_11[output_index_6] = 1;
										output_btint_b_11[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_20_btint_a = output_btint_a_11;
								TMP_20_btint_b = output_btint_b_11;
								TMP_20_overflow = output_overflow_11;
								output_btint_a_10 = TMP_20_btint_a;
								output_btint_b_10 = TMP_20_btint_b;
								output_overflow_10 = TMP_20_overflow;
								output_index_6 = 6;
								output_value_5 = product_msd_2_1;
								output_btint_a_11 = 0;
								output_btint_b_11 = 0;
								output_overflow_11 = 0;
								output_btint_a_11 = output_btint_a_10;
								output_btint_b_11 = output_btint_b_10;
								output_overflow_11 = output_overflow_10;
								case (output_value_5)
									-1: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 0;
									end
									0: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 1;
									end
									1: begin
										output_btint_a_11[output_index_6] = 1;
										output_btint_b_11[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_21_btint_a = output_btint_a_11;
								TMP_21_btint_b = output_btint_b_11;
								TMP_21_overflow = output_overflow_11;
								output_btint_a_10 = TMP_21_btint_a;
								output_btint_b_10 = TMP_21_btint_b;
								output_overflow_10 = TMP_21_overflow;
								TMP_12_btint_a = output_btint_a_10;
								TMP_12_btint_b = output_btint_b_10;
								TMP_12_overflow = output_overflow_10;
								TMP_12_from = 15;
								TMP_12_to = 0;
								output_btint_a_12 = 0;
								output_btint_b_12 = 0;
								output_overflow_12 = 0;
								output_btint_a_12 = TMP_12_btint_a[TMP_12_to+:8];
								output_btint_b_12 = TMP_12_btint_b[TMP_12_to+:8];
								output_overflow_12 = TMP_12_overflow;
								TMP_22_btint_a = output_btint_a_12;
								TMP_22_btint_b = output_btint_b_12;
								TMP_22_overflow = output_overflow_12;
								multiplier_a_btint_a_next[8+:8] = TMP_22_btint_a;
								multiplier_a_btint_b_next[8+:8] = TMP_22_btint_b;
								multiplier_a_overflow_next[2+:2] = TMP_22_overflow;
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
								output_btint_a_16 = 0;
								output_btint_b_16 = 0;
								output_overflow_16 = 0;
								output_btint_a_16 = sum_btint_a;
								output_btint_b_16 = sum_btint_b;
								output_overflow_16 = sum_overflow;
								output_index_9 = 8;
								TMP_48 = (output_btint_a_16[output_index_9] + output_btint_b_16[output_index_9]) - 1;
								sum_msd = TMP_48;
								output_index_9 = 7;
								TMP_50 = (output_btint_a_16[output_index_9] + output_btint_b_16[output_index_9]) - 1;
								sum_msd_1_1 = TMP_50;
								output_index_9 = 6;
								TMP_52 = (output_btint_a_16[output_index_9] + output_btint_b_16[output_index_9]) - 1;
								sum_msd_2_1 = TMP_52;
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
								output_index_10 = 8;
								output_value_8 = sum_msd;
								output_btint_a_17 = 0;
								output_btint_b_17 = 0;
								output_overflow_17 = 0;
								output_btint_a_17 = output_btint_a_16;
								output_btint_b_17 = output_btint_b_16;
								output_overflow_17 = output_overflow_16;
								case (output_value_8)
									-1: begin
										output_btint_a_17[output_index_10] = 0;
										output_btint_b_17[output_index_10] = 0;
									end
									0: begin
										output_btint_a_17[output_index_10] = 0;
										output_btint_b_17[output_index_10] = 1;
									end
									1: begin
										output_btint_a_17[output_index_10] = 1;
										output_btint_b_17[output_index_10] = 1;
									end
									default:
										;
								endcase
								TMP_54_btint_a = output_btint_a_17;
								TMP_54_btint_b = output_btint_b_17;
								TMP_54_overflow = output_overflow_17;
								output_btint_a_16 = TMP_54_btint_a;
								output_btint_b_16 = TMP_54_btint_b;
								output_overflow_16 = TMP_54_overflow;
								output_index_10 = 7;
								output_value_8 = sum_msd_1_1;
								output_btint_a_17 = 0;
								output_btint_b_17 = 0;
								output_overflow_17 = 0;
								output_btint_a_17 = output_btint_a_16;
								output_btint_b_17 = output_btint_b_16;
								output_overflow_17 = output_overflow_16;
								case (output_value_8)
									-1: begin
										output_btint_a_17[output_index_10] = 0;
										output_btint_b_17[output_index_10] = 0;
									end
									0: begin
										output_btint_a_17[output_index_10] = 0;
										output_btint_b_17[output_index_10] = 1;
									end
									1: begin
										output_btint_a_17[output_index_10] = 1;
										output_btint_b_17[output_index_10] = 1;
									end
									default:
										;
								endcase
								TMP_55_btint_a = output_btint_a_17;
								TMP_55_btint_b = output_btint_b_17;
								TMP_55_overflow = output_overflow_17;
								output_btint_a_16 = TMP_55_btint_a;
								output_btint_b_16 = TMP_55_btint_b;
								output_overflow_16 = TMP_55_overflow;
								output_index_10 = 6;
								output_value_8 = sum_msd_2_1;
								output_btint_a_17 = 0;
								output_btint_b_17 = 0;
								output_overflow_17 = 0;
								output_btint_a_17 = output_btint_a_16;
								output_btint_b_17 = output_btint_b_16;
								output_overflow_17 = output_overflow_16;
								case (output_value_8)
									-1: begin
										output_btint_a_17[output_index_10] = 0;
										output_btint_b_17[output_index_10] = 0;
									end
									0: begin
										output_btint_a_17[output_index_10] = 0;
										output_btint_b_17[output_index_10] = 1;
									end
									1: begin
										output_btint_a_17[output_index_10] = 1;
										output_btint_b_17[output_index_10] = 1;
									end
									default:
										;
								endcase
								TMP_56_btint_a = output_btint_a_17;
								TMP_56_btint_b = output_btint_b_17;
								TMP_56_overflow = output_overflow_17;
								output_btint_a_16 = TMP_56_btint_a;
								output_btint_b_16 = TMP_56_btint_b;
								output_overflow_16 = TMP_56_overflow;
								TMP_47_btint_a = output_btint_a_16;
								TMP_47_btint_b = output_btint_b_16;
								TMP_47_overflow = output_overflow_16;
								TMP_47_from = 16;
								TMP_47_to = 0;
								output_btint_a_18 = 0;
								output_btint_b_18 = 0;
								output_overflow_18 = 0;
								output_btint_a_18 = TMP_47_btint_a[TMP_47_to+:8];
								output_btint_b_18 = TMP_47_btint_b[TMP_47_to+:8];
								output_overflow_18 = TMP_47_overflow;
								TMP_57_btint_a = output_btint_a_18;
								TMP_57_btint_b = output_btint_b_18;
								TMP_57_overflow = output_overflow_18;
								cell_c_out_u_btint_a_next = TMP_57_btint_a;
								cell_c_out_u_btint_b_next = TMP_57_btint_b;
								cell_c_out_u_overflow_next = TMP_57_overflow;
								multiplier_reset_next[3] = 0;
								multiplier_a_btint_a_next[0+:8] = cell_c_in_d_btint_a;
								multiplier_a_btint_b_next[0+:8] = cell_c_in_d_btint_b;
								multiplier_a_overflow_next[0+:2] = cell_c_in_d_overflow;
								multiplier_b_btint_a_next[0+:8] = state_d_btint_a_next;
								multiplier_b_btint_b_next[0+:8] = state_d_btint_b_next;
								multiplier_b_overflow_next[0+:2] = state_d_overflow_next;
								output_btint_a_10 = 0;
								output_btint_b_10 = 0;
								output_overflow_10 = 0;
								output_btint_a_10[3] = product_btint_a_next[0+:16];
								output_btint_b_10[3] = product_btint_b_next[0+:16];
								output_overflow_10[3] = product_overflow_next[0+:2];
								output_index_5 = 8;
								TMP_13 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
								product_msd = TMP_13;
								output_index_5 = 7;
								TMP_15 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
								product_msd_1_1 = TMP_15;
								output_index_5 = 6;
								TMP_17 = (output_btint_a_10[output_index_5] + output_btint_b_10[output_index_5]) - 1;
								product_msd_2_1 = TMP_17;
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
								output_index_6 = 8;
								output_value_5 = product_msd;
								output_btint_a_11 = 0;
								output_btint_b_11 = 0;
								output_overflow_11 = 0;
								output_btint_a_11 = output_btint_a_10;
								output_btint_b_11 = output_btint_b_10;
								output_overflow_11 = output_overflow_10;
								case (output_value_5)
									-1: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 0;
									end
									0: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 1;
									end
									1: begin
										output_btint_a_11[output_index_6] = 1;
										output_btint_b_11[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_19_btint_a = output_btint_a_11;
								TMP_19_btint_b = output_btint_b_11;
								TMP_19_overflow = output_overflow_11;
								output_btint_a_10 = TMP_19_btint_a;
								output_btint_b_10 = TMP_19_btint_b;
								output_overflow_10 = TMP_19_overflow;
								output_index_6 = 7;
								output_value_5 = product_msd_1_1;
								output_btint_a_11 = 0;
								output_btint_b_11 = 0;
								output_overflow_11 = 0;
								output_btint_a_11 = output_btint_a_10;
								output_btint_b_11 = output_btint_b_10;
								output_overflow_11 = output_overflow_10;
								case (output_value_5)
									-1: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 0;
									end
									0: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 1;
									end
									1: begin
										output_btint_a_11[output_index_6] = 1;
										output_btint_b_11[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_20_btint_a = output_btint_a_11;
								TMP_20_btint_b = output_btint_b_11;
								TMP_20_overflow = output_overflow_11;
								output_btint_a_10 = TMP_20_btint_a;
								output_btint_b_10 = TMP_20_btint_b;
								output_overflow_10 = TMP_20_overflow;
								output_index_6 = 6;
								output_value_5 = product_msd_2_1;
								output_btint_a_11 = 0;
								output_btint_b_11 = 0;
								output_overflow_11 = 0;
								output_btint_a_11 = output_btint_a_10;
								output_btint_b_11 = output_btint_b_10;
								output_overflow_11 = output_overflow_10;
								case (output_value_5)
									-1: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 0;
									end
									0: begin
										output_btint_a_11[output_index_6] = 0;
										output_btint_b_11[output_index_6] = 1;
									end
									1: begin
										output_btint_a_11[output_index_6] = 1;
										output_btint_b_11[output_index_6] = 1;
									end
									default:
										;
								endcase
								TMP_21_btint_a = output_btint_a_11;
								TMP_21_btint_b = output_btint_b_11;
								TMP_21_overflow = output_overflow_11;
								output_btint_a_10 = TMP_21_btint_a;
								output_btint_b_10 = TMP_21_btint_b;
								output_overflow_10 = TMP_21_overflow;
								TMP_12_btint_a = output_btint_a_10;
								TMP_12_btint_b = output_btint_b_10;
								TMP_12_overflow = output_overflow_10;
								TMP_12_from = 15;
								TMP_12_to = 0;
								output_btint_a_12 = 0;
								output_btint_b_12 = 0;
								output_overflow_12 = 0;
								output_btint_a_12 = TMP_12_btint_a[TMP_12_to+:8];
								output_btint_b_12 = TMP_12_btint_b[TMP_12_to+:8];
								output_overflow_12 = TMP_12_overflow;
								TMP_22_btint_a = output_btint_a_12;
								TMP_22_btint_b = output_btint_b_12;
								TMP_22_overflow = output_overflow_12;
								cell_c_out_d_btint_a_next = TMP_22_btint_a;
								cell_c_out_d_btint_b_next = TMP_22_btint_b;
								cell_c_out_d_overflow_next = TMP_22_overflow;
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
				TMP_62_value = 0;
				output_btint_a_19 = 0;
				output_btint_b_19 = 0;
				output_overflow_19 = 0;
				begin : sv2v_autoblock_6
					integer i_10;
					for (i_10 = 0; i_10 < 8; i_10 = i_10 + 1)
						begin
							output_index_11 = i_10;
							output_value_9 = 0;
							output_btint_a_20 = 0;
							output_btint_b_20 = 0;
							output_overflow_20 = 0;
							output_btint_a_20 = output_btint_a_19;
							output_btint_b_20 = output_btint_b_19;
							output_overflow_20 = output_overflow_19;
							case (0)
								-1: begin
									output_btint_a_20[output_index_11] = 0;
									output_btint_b_20[output_index_11] = 0;
								end
								0: begin
									output_btint_a_20[output_index_11] = 0;
									output_btint_b_20[output_index_11] = 1;
								end
								1: begin
									output_btint_a_20[output_index_11] = 1;
									output_btint_b_20[output_index_11] = 1;
								end
								default:
									;
							endcase
							TMP_2_btint_a = output_btint_a_20;
							TMP_2_btint_b = output_btint_b_20;
							TMP_2_overflow = output_overflow_20;
							output_btint_a_19 = TMP_2_btint_a;
							output_btint_b_19 = TMP_2_btint_b;
							output_overflow_19 = TMP_2_overflow;
						end
				end
				TMP_62_isNegative = TMP_62_value < 0;
				TMP_62_i = 0;
				TMP_63_btint_a = output_btint_a_19;
				TMP_63_btint_b = output_btint_b_19;
				TMP_63_overflow = output_overflow_19;
				cell_c_out_u_btint_a_next = TMP_63_btint_a;
				cell_c_out_u_btint_b_next = TMP_63_btint_b;
				cell_c_out_u_overflow_next = TMP_63_overflow;
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
				output_btint_a_21 = 0;
				output_btint_b_21 = 0;
				output_overflow_21 = 0;
				output_btint_a_21 = c_in_u_btint_a;
				output_btint_b_21 = c_in_u_btint_b;
				output_overflow_21 = c_in_u_overflow;
				TMP_65_value = 0;
				output_btint_a_22 = 0;
				output_btint_b_22 = 0;
				output_overflow_22 = 0;
				begin : sv2v_autoblock_7
					integer i_11;
					for (i_11 = 0; i_11 < 8; i_11 = i_11 + 1)
						begin
							output_index_12 = i_11;
							output_value_10 = 0;
							output_btint_a_23 = 0;
							output_btint_b_23 = 0;
							output_overflow_23 = 0;
							output_btint_a_23 = output_btint_a_22;
							output_btint_b_23 = output_btint_b_22;
							output_overflow_23 = output_overflow_22;
							case (0)
								-1: begin
									output_btint_a_23[output_index_12] = 0;
									output_btint_b_23[output_index_12] = 0;
								end
								0: begin
									output_btint_a_23[output_index_12] = 0;
									output_btint_b_23[output_index_12] = 1;
								end
								1: begin
									output_btint_a_23[output_index_12] = 1;
									output_btint_b_23[output_index_12] = 1;
								end
								default:
									;
							endcase
							TMP_2_btint_a = output_btint_a_23;
							TMP_2_btint_b = output_btint_b_23;
							TMP_2_overflow = output_overflow_23;
							output_btint_a_22 = TMP_2_btint_a;
							output_btint_b_22 = TMP_2_btint_b;
							output_overflow_22 = TMP_2_overflow;
						end
				end
				TMP_65_isNegative = TMP_65_value < 0;
				TMP_65_i = 0;
				TMP_66_btint_a = output_btint_a_22;
				TMP_66_btint_b = output_btint_b_22;
				TMP_66_overflow = output_overflow_22;
				low_btint_a = output_btint_a_21;
				low_btint_b = output_btint_b_21;
				low_overflow = output_overflow_21;
				output_btint_a_24 = 0;
				output_btint_b_24 = 0;
				output_overflow_24 = 0;
				output_btint_a_24 = {TMP_66_btint_a, low_btint_a};
				output_btint_b_24 = {TMP_66_btint_b, low_btint_b};
				output_overflow_24 = TMP_66_overflow;
				TMP_67_btint_a = output_btint_a_24;
				TMP_67_btint_b = output_btint_b_24;
				TMP_67_overflow = output_overflow_24;
				adder_subtractor_b_btint_a_next = TMP_67_btint_a;
				adder_subtractor_b_btint_b_next = TMP_67_btint_b;
				adder_subtractor_b_overflow_next = TMP_67_overflow;
				adder_subtractor_subtract_next = 0;
				output_btint_a_16 = 0;
				output_btint_b_16 = 0;
				output_overflow_16 = 0;
				output_btint_a_16 = sum_btint_a;
				output_btint_b_16 = sum_btint_b;
				output_overflow_16 = sum_overflow;
				output_index_9 = 8;
				TMP_48 = (output_btint_a_16[output_index_9] + output_btint_b_16[output_index_9]) - 1;
				sum_msd = TMP_48;
				output_index_9 = 7;
				TMP_50 = (output_btint_a_16[output_index_9] + output_btint_b_16[output_index_9]) - 1;
				sum_msd_1_1 = TMP_50;
				output_index_9 = 6;
				TMP_52 = (output_btint_a_16[output_index_9] + output_btint_b_16[output_index_9]) - 1;
				sum_msd_2_1 = TMP_52;
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
				output_index_10 = 8;
				output_value_8 = sum_msd;
				output_btint_a_17 = 0;
				output_btint_b_17 = 0;
				output_overflow_17 = 0;
				output_btint_a_17 = output_btint_a_16;
				output_btint_b_17 = output_btint_b_16;
				output_overflow_17 = output_overflow_16;
				case (output_value_8)
					-1: begin
						output_btint_a_17[output_index_10] = 0;
						output_btint_b_17[output_index_10] = 0;
					end
					0: begin
						output_btint_a_17[output_index_10] = 0;
						output_btint_b_17[output_index_10] = 1;
					end
					1: begin
						output_btint_a_17[output_index_10] = 1;
						output_btint_b_17[output_index_10] = 1;
					end
					default:
						;
				endcase
				TMP_54_btint_a = output_btint_a_17;
				TMP_54_btint_b = output_btint_b_17;
				TMP_54_overflow = output_overflow_17;
				output_btint_a_16 = TMP_54_btint_a;
				output_btint_b_16 = TMP_54_btint_b;
				output_overflow_16 = TMP_54_overflow;
				output_index_10 = 7;
				output_value_8 = sum_msd_1_1;
				output_btint_a_17 = 0;
				output_btint_b_17 = 0;
				output_overflow_17 = 0;
				output_btint_a_17 = output_btint_a_16;
				output_btint_b_17 = output_btint_b_16;
				output_overflow_17 = output_overflow_16;
				case (output_value_8)
					-1: begin
						output_btint_a_17[output_index_10] = 0;
						output_btint_b_17[output_index_10] = 0;
					end
					0: begin
						output_btint_a_17[output_index_10] = 0;
						output_btint_b_17[output_index_10] = 1;
					end
					1: begin
						output_btint_a_17[output_index_10] = 1;
						output_btint_b_17[output_index_10] = 1;
					end
					default:
						;
				endcase
				TMP_55_btint_a = output_btint_a_17;
				TMP_55_btint_b = output_btint_b_17;
				TMP_55_overflow = output_overflow_17;
				output_btint_a_16 = TMP_55_btint_a;
				output_btint_b_16 = TMP_55_btint_b;
				output_overflow_16 = TMP_55_overflow;
				output_index_10 = 6;
				output_value_8 = sum_msd_2_1;
				output_btint_a_17 = 0;
				output_btint_b_17 = 0;
				output_overflow_17 = 0;
				output_btint_a_17 = output_btint_a_16;
				output_btint_b_17 = output_btint_b_16;
				output_overflow_17 = output_overflow_16;
				case (output_value_8)
					-1: begin
						output_btint_a_17[output_index_10] = 0;
						output_btint_b_17[output_index_10] = 0;
					end
					0: begin
						output_btint_a_17[output_index_10] = 0;
						output_btint_b_17[output_index_10] = 1;
					end
					1: begin
						output_btint_a_17[output_index_10] = 1;
						output_btint_b_17[output_index_10] = 1;
					end
					default:
						;
				endcase
				TMP_56_btint_a = output_btint_a_17;
				TMP_56_btint_b = output_btint_b_17;
				TMP_56_overflow = output_overflow_17;
				output_btint_a_16 = TMP_56_btint_a;
				output_btint_b_16 = TMP_56_btint_b;
				output_overflow_16 = TMP_56_overflow;
				TMP_47_btint_a = output_btint_a_16;
				TMP_47_btint_b = output_btint_b_16;
				TMP_47_overflow = output_overflow_16;
				TMP_47_from = 16;
				TMP_47_to = 0;
				output_btint_a_18 = 0;
				output_btint_b_18 = 0;
				output_overflow_18 = 0;
				output_btint_a_18 = TMP_47_btint_a[TMP_47_to+:8];
				output_btint_b_18 = TMP_47_btint_b[TMP_47_to+:8];
				output_overflow_18 = TMP_47_overflow;
				TMP_57_btint_a = output_btint_a_18;
				TMP_57_btint_b = output_btint_b_18;
				TMP_57_overflow = output_overflow_18;
				cell_c_out_u_btint_a_next = TMP_57_btint_a;
				cell_c_out_u_btint_b_next = TMP_57_btint_b;
				cell_c_out_u_overflow_next = TMP_57_overflow;
			end
		end
	endtask
	always @(product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or state_u_overflow_next or state_u_btint_b_next or state_u_btint_a_next or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_s_mm or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or product_overflow_next[0+:2] or product_btint_b_next[0+:16] or product_btint_a_next[0+:16] or state_d_overflow_next or state_d_btint_b_next or state_d_btint_a_next or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or product_overflow_next[2+:2] or product_btint_b_next[16+:16] or product_btint_a_next[16+:16] or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or product_overflow_next[4+:2] or product_btint_b_next[32+:16] or product_btint_a_next[32+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or state_u_overflow_next or state_u_btint_b_next or state_u_btint_a_next or state_d_overflow_next or state_d_btint_b_next or state_d_btint_a_next or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or state_u_btint_b_next or state_u_btint_a_next or state_d_overflow_next or state_d_btint_b_next or state_d_btint_a_next or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or state_u_overflow_next or state_u_btint_b_next or state_u_btint_a_next or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or product_overflow_next[6+:2] or product_btint_b_next[48+:16] or product_btint_a_next[48+:16] or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_c_in_d_overflow or cell_c_in_d_btint_b or cell_c_in_d_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or cell_s_in or cell_s_mm or cell_op or cell_s_in or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_a_in_overflow or cell_a_in_btint_b or cell_a_in_btint_a or cell_c_in_u_overflow or cell_c_in_u_btint_b or cell_c_in_u_btint_a or multiplier_product_overflow or multiplier_product_btint_b or multiplier_product_btint_a or adder_subtractor_sum_overflow or adder_subtractor_sum_btint_b or adder_subtractor_sum_btint_a or state_u_overflow or state_u_btint_b or state_u_btint_a or state_d_overflow or state_d_btint_b or state_d_btint_a or product_overflow or product_btint_b or product_btint_a or multiplier_reset or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or cell_s_out or cell_c_out_u_overflow or cell_c_out_u_btint_b or cell_c_out_u_btint_a or cell_c_out_d_overflow or cell_c_out_d_btint_b or cell_c_out_d_btint_a or cell_a_out_overflow or cell_a_out_btint_b or cell_a_out_btint_a or adder_subtractor_subtract or adder_subtractor_b_overflow or adder_subtractor_b_btint_b or adder_subtractor_b_btint_a or adder_subtractor_a_overflow or adder_subtractor_a_btint_b or adder_subtractor_a_btint_a or _sv2v_0) begin : compute_comb
		if (_sv2v_0)
			;
		compute_func;
	end
	always @(posedge cell_clock) begin : compute_ff
		if (cell_reset) begin : sv2v_autoblock_8
			reg [16:0] sum_btint_a;
			reg [16:0] sum_btint_b;
			reg [1:0] sum_overflow;
			reg [7:0] c_in_u_btint_a;
			reg [7:0] c_in_u_btint_b;
			reg [1:0] c_in_u_overflow;
			reg [7:0] a_in_btint_a;
			reg [7:0] a_in_btint_b;
			reg [1:0] a_in_overflow;
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
			integer TMP_3_value;
			reg [7:0] output_btint_a_2;
			reg [7:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [7:0] output_btint_a_3;
			reg [7:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg TMP_3_isNegative;
			integer TMP_3_i;
			reg [7:0] TMP_4_btint_a;
			reg [7:0] TMP_4_btint_b;
			reg [1:0] TMP_4_overflow;
			integer TMP_5_value;
			reg [7:0] output_btint_a_4;
			reg [7:0] output_btint_b_4;
			reg [1:0] output_overflow_4;
			integer output_index_2;
			integer output_value_2;
			reg [7:0] output_btint_a_5;
			reg [7:0] output_btint_b_5;
			reg [1:0] output_overflow_5;
			reg TMP_5_isNegative;
			integer TMP_5_i;
			reg [7:0] TMP_6_btint_a;
			reg [7:0] TMP_6_btint_b;
			reg [1:0] TMP_6_overflow;
			integer TMP_7_value;
			reg [7:0] output_btint_a_6;
			reg [7:0] output_btint_b_6;
			reg [1:0] output_overflow_6;
			integer output_index_3;
			integer output_value_3;
			reg [7:0] output_btint_a_7;
			reg [7:0] output_btint_b_7;
			reg [1:0] output_overflow_7;
			reg TMP_7_isNegative;
			integer TMP_7_i;
			reg [7:0] TMP_8_btint_a;
			reg [7:0] TMP_8_btint_b;
			reg [1:0] TMP_8_overflow;
			integer TMP_9_value;
			reg [7:0] output_btint_a_8;
			reg [7:0] output_btint_b_8;
			reg [1:0] output_overflow_8;
			integer output_index_4;
			integer output_value_4;
			reg [7:0] output_btint_a_9;
			reg [7:0] output_btint_b_9;
			reg [1:0] output_overflow_9;
			reg TMP_9_isNegative;
			integer TMP_9_i;
			reg [7:0] TMP_10_btint_a;
			reg [7:0] TMP_10_btint_b;
			reg [1:0] TMP_10_overflow;
			sum_btint_a = 0;
			sum_btint_b = 0;
			sum_overflow = 0;
			c_in_u_btint_a = 0;
			c_in_u_btint_b = 0;
			c_in_u_overflow = 0;
			a_in_btint_a = 0;
			a_in_btint_b = 0;
			a_in_overflow = 0;
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_9
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
			cell_a_out_btint_a <= TMP_1_btint_a;
			cell_a_out_btint_b <= TMP_1_btint_b;
			cell_a_out_overflow <= TMP_1_overflow;
			TMP_3_value = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			begin : sv2v_autoblock_10
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
						TMP_2_btint_a = output_btint_a_3;
						TMP_2_btint_b = output_btint_b_3;
						TMP_2_overflow = output_overflow_3;
						output_btint_a_2 = TMP_2_btint_a;
						output_btint_b_2 = TMP_2_btint_b;
						output_overflow_2 = TMP_2_overflow;
					end
			end
			TMP_3_isNegative = TMP_3_value < 0;
			TMP_3_i = 0;
			TMP_4_btint_a = output_btint_a_2;
			TMP_4_btint_b = output_btint_b_2;
			TMP_4_overflow = output_overflow_2;
			cell_c_out_u_btint_a <= TMP_4_btint_a;
			cell_c_out_u_btint_b <= TMP_4_btint_b;
			cell_c_out_u_overflow <= TMP_4_overflow;
			TMP_5_value = 0;
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			begin : sv2v_autoblock_11
				integer i_2;
				for (i_2 = 0; i_2 < 8; i_2 = i_2 + 1)
					begin
						output_index_2 = i_2;
						output_value_2 = 0;
						output_btint_a_5 = 0;
						output_btint_b_5 = 0;
						output_overflow_5 = 0;
						output_btint_a_5 = output_btint_a_4;
						output_btint_b_5 = output_btint_b_4;
						output_overflow_5 = output_overflow_4;
						case (0)
							-1: begin
								output_btint_a_5[output_index_2] = 0;
								output_btint_b_5[output_index_2] = 0;
							end
							0: begin
								output_btint_a_5[output_index_2] = 0;
								output_btint_b_5[output_index_2] = 1;
							end
							1: begin
								output_btint_a_5[output_index_2] = 1;
								output_btint_b_5[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_2_btint_a = output_btint_a_5;
						TMP_2_btint_b = output_btint_b_5;
						TMP_2_overflow = output_overflow_5;
						output_btint_a_4 = TMP_2_btint_a;
						output_btint_b_4 = TMP_2_btint_b;
						output_overflow_4 = TMP_2_overflow;
					end
			end
			TMP_5_isNegative = TMP_5_value < 0;
			TMP_5_i = 0;
			TMP_6_btint_a = output_btint_a_4;
			TMP_6_btint_b = output_btint_b_4;
			TMP_6_overflow = output_overflow_4;
			cell_c_out_d_btint_a <= TMP_6_btint_a;
			cell_c_out_d_btint_b <= TMP_6_btint_b;
			cell_c_out_d_overflow <= TMP_6_overflow;
			cell_s_out <= 0;
			TMP_7_value = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			begin : sv2v_autoblock_12
				integer i_3;
				for (i_3 = 0; i_3 < 8; i_3 = i_3 + 1)
					begin
						output_index_3 = i_3;
						output_value_3 = 0;
						output_btint_a_7 = 0;
						output_btint_b_7 = 0;
						output_overflow_7 = 0;
						output_btint_a_7 = output_btint_a_6;
						output_btint_b_7 = output_btint_b_6;
						output_overflow_7 = output_overflow_6;
						case (0)
							-1: begin
								output_btint_a_7[output_index_3] = 0;
								output_btint_b_7[output_index_3] = 0;
							end
							0: begin
								output_btint_a_7[output_index_3] = 0;
								output_btint_b_7[output_index_3] = 1;
							end
							1: begin
								output_btint_a_7[output_index_3] = 1;
								output_btint_b_7[output_index_3] = 1;
							end
							default:
								;
						endcase
						TMP_2_btint_a = output_btint_a_7;
						TMP_2_btint_b = output_btint_b_7;
						TMP_2_overflow = output_overflow_7;
						output_btint_a_6 = TMP_2_btint_a;
						output_btint_b_6 = TMP_2_btint_b;
						output_overflow_6 = TMP_2_overflow;
					end
			end
			TMP_7_isNegative = TMP_7_value < 0;
			TMP_7_i = 0;
			TMP_8_btint_a = output_btint_a_6;
			TMP_8_btint_b = output_btint_b_6;
			TMP_8_overflow = output_overflow_6;
			state_u_btint_a <= TMP_8_btint_a;
			state_u_btint_b <= TMP_8_btint_b;
			state_u_overflow <= TMP_8_overflow;
			TMP_9_value = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			begin : sv2v_autoblock_13
				integer i_4;
				for (i_4 = 0; i_4 < 8; i_4 = i_4 + 1)
					begin
						output_index_4 = i_4;
						output_value_4 = 0;
						output_btint_a_9 = 0;
						output_btint_b_9 = 0;
						output_overflow_9 = 0;
						output_btint_a_9 = output_btint_a_8;
						output_btint_b_9 = output_btint_b_8;
						output_overflow_9 = output_overflow_8;
						case (0)
							-1: begin
								output_btint_a_9[output_index_4] = 0;
								output_btint_b_9[output_index_4] = 0;
							end
							0: begin
								output_btint_a_9[output_index_4] = 0;
								output_btint_b_9[output_index_4] = 1;
							end
							1: begin
								output_btint_a_9[output_index_4] = 1;
								output_btint_b_9[output_index_4] = 1;
							end
							default:
								;
						endcase
						TMP_2_btint_a = output_btint_a_9;
						TMP_2_btint_b = output_btint_b_9;
						TMP_2_overflow = output_overflow_9;
						output_btint_a_8 = TMP_2_btint_a;
						output_btint_b_8 = TMP_2_btint_b;
						output_overflow_8 = TMP_2_overflow;
					end
			end
			TMP_9_isNegative = TMP_9_value < 0;
			TMP_9_i = 0;
			TMP_10_btint_a = output_btint_a_8;
			TMP_10_btint_b = output_btint_b_8;
			TMP_10_overflow = output_overflow_8;
			state_d_btint_a <= TMP_10_btint_a;
			state_d_btint_b <= TMP_10_btint_b;
			state_d_overflow <= TMP_10_overflow;
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
		integer TMP_3_value;
		reg [15:0] output_btint_a_2;
		reg [15:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [15:0] output_btint_a_3;
		reg [15:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg [15:0] TMP_5_btint_a;
		reg [15:0] TMP_5_btint_b;
		reg [1:0] TMP_5_overflow;
		reg TMP_3_isNegative;
		integer TMP_3_i;
		reg [15:0] TMP_4_btint_a;
		reg [15:0] TMP_4_btint_b;
		reg [1:0] TMP_4_overflow;
		integer TMP_6_value;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		integer output_index_2;
		integer output_value_2;
		reg [7:0] output_btint_a_5;
		reg [7:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
		reg TMP_6_isNegative;
		integer TMP_6_i;
		reg [7:0] TMP_7_btint_a;
		reg [7:0] TMP_7_btint_b;
		reg [1:0] TMP_7_overflow;
		integer TMP_8_value;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		integer output_index_3;
		integer output_value_3;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg TMP_8_isNegative;
		integer TMP_8_i;
		reg [7:0] TMP_9_btint_a;
		reg [7:0] TMP_9_btint_b;
		reg [1:0] TMP_9_overflow;
		integer TMP_10_value;
		reg [7:0] output_btint_a_8;
		reg [7:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		integer output_index_4;
		integer output_value_4;
		reg [7:0] output_btint_a_9;
		reg [7:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg TMP_10_isNegative;
		integer TMP_10_i;
		reg [7:0] TMP_11_btint_a;
		reg [7:0] TMP_11_btint_b;
		reg [1:0] TMP_11_overflow;
		integer TMP_12;
		integer input_a_output_v;
		integer TMP_13;
		integer input_a_index;
		integer TMP_14;
		integer output_v;
		integer index;
		integer TMP_15;
		integer input_b_output_v;
		integer input_b_index;
		integer TMP_16;
		integer output_v_1;
		integer index_1;
		integer TMP_17_value;
		reg [7:0] output_btint_a_10;
		reg [7:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
		integer output_index_5;
		integer output_value_5;
		reg [7:0] output_btint_a_11;
		reg [7:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg TMP_17_isNegative;
		integer TMP_17_i;
		reg [7:0] TMP_18_btint_a;
		reg [7:0] TMP_18_btint_b;
		reg [1:0] TMP_18_overflow;
		integer TMP_19_value;
		reg [15:0] output_btint_a_12;
		reg [15:0] output_btint_b_12;
		reg [1:0] output_overflow_12;
		integer output_index_6;
		integer output_value_6;
		reg [15:0] output_btint_a_13;
		reg [15:0] output_btint_b_13;
		reg [1:0] output_overflow_13;
		reg TMP_19_isNegative;
		integer TMP_19_i;
		reg [15:0] TMP_20_btint_a;
		reg [15:0] TMP_20_btint_b;
		reg [1:0] TMP_20_overflow;
		integer TMP_21;
		integer index_2;
		integer TMP_22_value;
		reg [7:0] output_btint_a_14;
		reg [7:0] output_btint_b_14;
		reg [1:0] output_overflow_14;
		integer output_index_7;
		integer output_value_7;
		reg [7:0] output_btint_a_15;
		reg [7:0] output_btint_b_15;
		reg [1:0] output_overflow_15;
		reg TMP_22_isNegative;
		integer TMP_22_i;
		reg [7:0] TMP_23_btint_a;
		reg [7:0] TMP_23_btint_b;
		reg [1:0] TMP_23_overflow;
		integer TMP_24;
		integer index_3;
		reg [7:0] output_btint_a_16;
		reg [7:0] output_btint_b_16;
		reg [1:0] output_overflow_16;
		integer output_index_8;
		integer output_value_8;
		reg [7:0] output_btint_a_17;
		reg [7:0] output_btint_b_17;
		reg [1:0] output_overflow_17;
		reg [7:0] TMP_26_btint_a;
		reg [7:0] TMP_26_btint_b;
		reg [1:0] TMP_26_overflow;
		reg [7:0] TMP_25_btint_a;
		reg [7:0] TMP_25_btint_b;
		reg [1:0] TMP_25_overflow;
		reg [7:0] low_btint_a;
		reg [7:0] low_btint_b;
		reg [1:0] low_overflow;
		reg [15:0] output_btint_a_18;
		reg [15:0] output_btint_b_18;
		reg [1:0] output_overflow_18;
		reg [15:0] TMP_27_btint_a;
		reg [15:0] TMP_27_btint_b;
		reg [1:0] TMP_27_overflow;
		integer TMP_28;
		integer product_index;
		integer TMP_29;
		integer product_value;
		reg [15:0] output_btint_a_19;
		reg [15:0] output_btint_b_19;
		reg [1:0] output_overflow_19;
		reg [15:0] TMP_30_btint_a;
		reg [15:0] TMP_30_btint_b;
		reg [1:0] TMP_30_overflow;
		begin
			TMP_12 = 0;
			input_a_output_v = 0;
			TMP_13 = 0;
			input_a_index = 0;
			TMP_14 = 0;
			output_v = 0;
			index = 0;
			TMP_15 = 0;
			input_b_output_v = 0;
			input_b_index = 0;
			TMP_16 = 0;
			output_v_1 = 0;
			index_1 = 0;
			TMP_17_value = 0;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			output_index_5 = 0;
			output_value_5 = 0;
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
			TMP_17_isNegative = 0;
			TMP_17_i = 0;
			TMP_18_btint_a = 0;
			TMP_18_btint_b = 0;
			TMP_18_overflow = 0;
			TMP_19_value = 0;
			output_btint_a_12 = 0;
			output_btint_b_12 = 0;
			output_overflow_12 = 0;
			output_index_6 = 0;
			output_value_6 = 0;
			output_btint_a_13 = 0;
			output_btint_b_13 = 0;
			output_overflow_13 = 0;
			TMP_19_isNegative = 0;
			TMP_19_i = 0;
			TMP_20_btint_a = 0;
			TMP_20_btint_b = 0;
			TMP_20_overflow = 0;
			TMP_21 = 0;
			index_2 = 0;
			TMP_22_value = 0;
			output_btint_a_14 = 0;
			output_btint_b_14 = 0;
			output_overflow_14 = 0;
			output_index_7 = 0;
			output_value_7 = 0;
			output_btint_a_15 = 0;
			output_btint_b_15 = 0;
			output_overflow_15 = 0;
			TMP_22_isNegative = 0;
			TMP_22_i = 0;
			TMP_23_btint_a = 0;
			TMP_23_btint_b = 0;
			TMP_23_overflow = 0;
			TMP_24 = 0;
			index_3 = 0;
			output_btint_a_16 = 0;
			output_btint_b_16 = 0;
			output_overflow_16 = 0;
			output_index_8 = 0;
			output_value_8 = 0;
			output_btint_a_17 = 0;
			output_btint_b_17 = 0;
			output_overflow_17 = 0;
			TMP_26_btint_a = 0;
			TMP_26_btint_b = 0;
			TMP_26_overflow = 0;
			TMP_25_btint_a = 0;
			TMP_25_btint_b = 0;
			TMP_25_overflow = 0;
			low_btint_a = 0;
			low_btint_b = 0;
			low_overflow = 0;
			output_btint_a_18 = 0;
			output_btint_b_18 = 0;
			output_overflow_18 = 0;
			TMP_27_btint_a = 0;
			TMP_27_btint_b = 0;
			TMP_27_overflow = 0;
			TMP_28 = 0;
			product_index = 0;
			TMP_29 = 0;
			product_value = 0;
			output_btint_a_19 = 0;
			output_btint_b_19 = 0;
			output_overflow_19 = 0;
			TMP_30_btint_a = 0;
			TMP_30_btint_b = 0;
			TMP_30_overflow = 0;
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
				integer i_5;
				for (i_5 = 7; i_5 >= 0; i_5 = i_5 - 1)
					begin
						input_a_index = i_5;
						TMP_13 = (input_a_btint_a[input_a_index] + input_a_btint_b[input_a_index]) - 1;
						input_a_output_v = (2 * input_a_output_v) + TMP_13;
					end
			end
			TMP_12 = input_a_output_v;
			output_v = 0;
			begin : sv2v_autoblock_2
				integer i_6;
				for (i_6 = 7; i_6 >= 0; i_6 = i_6 - 1)
					begin
						index = i_6;
						TMP_13 = (a_old_btint_a_next[index] + a_old_btint_b_next[index]) - 1;
						output_v = (2 * output_v) + TMP_13;
					end
			end
			TMP_14 = output_v;
			input_b_output_v = 0;
			begin : sv2v_autoblock_3
				integer i_7;
				for (i_7 = 7; i_7 >= 0; i_7 = i_7 - 1)
					begin
						input_b_index = i_7;
						TMP_13 = (input_b_btint_a[input_b_index] + input_b_btint_b[input_b_index]) - 1;
						input_b_output_v = (2 * input_b_output_v) + TMP_13;
					end
			end
			TMP_15 = input_b_output_v;
			output_v_1 = 0;
			begin : sv2v_autoblock_4
				integer i_8;
				for (i_8 = 7; i_8 >= 0; i_8 = i_8 - 1)
					begin
						index_1 = i_8;
						TMP_13 = (b_old_btint_a_next[index_1] + b_old_btint_b_next[index_1]) - 1;
						output_v_1 = (2 * output_v_1) + TMP_13;
					end
			end
			TMP_16 = output_v_1;
			if ((TMP_12 != TMP_14) || (TMP_15 != TMP_16)) begin
				TMP_17_value = 0;
				output_btint_a_10 = 0;
				output_btint_b_10 = 0;
				output_overflow_10 = 0;
				begin : sv2v_autoblock_5
					integer i_9;
					for (i_9 = 0; i_9 < 8; i_9 = i_9 + 1)
						begin
							output_index_5 = i_9;
							output_value_5 = 0;
							output_btint_a_11 = 0;
							output_btint_b_11 = 0;
							output_overflow_11 = 0;
							output_btint_a_11 = output_btint_a_10;
							output_btint_b_11 = output_btint_b_10;
							output_overflow_11 = output_overflow_10;
							case (0)
								0: begin
									output_btint_a_11[output_index_5] = 0;
									output_btint_b_11[output_index_5] = 1;
								end
							endcase
							TMP_2_btint_a = output_btint_a_11;
							TMP_2_btint_b = output_btint_b_11;
							TMP_2_overflow = output_overflow_11;
							output_btint_a_10 = TMP_2_btint_a;
							output_btint_b_10 = TMP_2_btint_b;
							output_overflow_10 = TMP_2_overflow;
						end
				end
				TMP_17_isNegative = TMP_17_value < 0;
				TMP_17_i = 0;
				TMP_18_btint_a = output_btint_a_10;
				TMP_18_btint_b = output_btint_b_10;
				TMP_18_overflow = output_overflow_10;
				adder_subtractor_b_btint_a_next = TMP_18_btint_a;
				adder_subtractor_b_btint_b_next = TMP_18_btint_b;
				adder_subtractor_b_overflow_next = TMP_18_overflow;
				shift_register_reset_next = 1;
				TMP_19_value = 0;
				output_btint_a_12 = 0;
				output_btint_b_12 = 0;
				output_overflow_12 = 0;
				begin : sv2v_autoblock_6
					integer i_10;
					for (i_10 = 0; i_10 < 16; i_10 = i_10 + 1)
						begin
							output_index_6 = i_10;
							output_value_6 = 0;
							output_btint_a_13 = 0;
							output_btint_b_13 = 0;
							output_overflow_13 = 0;
							output_btint_a_13 = output_btint_a_12;
							output_btint_b_13 = output_btint_b_12;
							output_overflow_13 = output_overflow_12;
							case (0)
								0: begin
									output_btint_a_13[output_index_6] = 0;
									output_btint_b_13[output_index_6] = 1;
								end
							endcase
							TMP_5_btint_a = output_btint_a_13;
							TMP_5_btint_b = output_btint_b_13;
							TMP_5_overflow = output_overflow_13;
							output_btint_a_12 = TMP_5_btint_a;
							output_btint_b_12 = TMP_5_btint_b;
							output_overflow_12 = TMP_5_overflow;
						end
				end
				TMP_19_isNegative = TMP_19_value < 0;
				TMP_19_i = 0;
				TMP_20_btint_a = output_btint_a_12;
				TMP_20_btint_b = output_btint_b_12;
				TMP_20_overflow = output_overflow_12;
				multiplier_product_btint_a_next = TMP_20_btint_a;
				multiplier_product_btint_b_next = TMP_20_btint_b;
				multiplier_product_overflow_next = TMP_20_overflow;
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
				TMP_21 = (b_btint_a_next[index_2] + b_btint_b_next[index_2]) - 1;
				if (|TMP_21) begin
					adder_subtractor_b_btint_a_next = multiplier_a_btint_a;
					adder_subtractor_b_btint_b_next = multiplier_a_btint_b;
					adder_subtractor_b_overflow_next = multiplier_a_overflow;
				end
				else begin
					TMP_22_value = 0;
					output_btint_a_14 = 0;
					output_btint_b_14 = 0;
					output_overflow_14 = 0;
					begin : sv2v_autoblock_7
						integer i_11;
						for (i_11 = 0; i_11 < 8; i_11 = i_11 + 1)
							begin
								output_index_7 = i_11;
								output_value_7 = 0;
								output_btint_a_15 = 0;
								output_btint_b_15 = 0;
								output_overflow_15 = 0;
								output_btint_a_15 = output_btint_a_14;
								output_btint_b_15 = output_btint_b_14;
								output_overflow_15 = output_overflow_14;
								case (0)
									0: begin
										output_btint_a_15[output_index_7] = 0;
										output_btint_b_15[output_index_7] = 1;
									end
								endcase
								TMP_2_btint_a = output_btint_a_15;
								TMP_2_btint_b = output_btint_b_15;
								TMP_2_overflow = output_overflow_15;
								output_btint_a_14 = TMP_2_btint_a;
								output_btint_b_14 = TMP_2_btint_b;
								output_overflow_14 = TMP_2_overflow;
							end
					end
					TMP_22_isNegative = TMP_22_value < 0;
					TMP_22_i = 0;
					TMP_23_btint_a = output_btint_a_14;
					TMP_23_btint_b = output_btint_b_14;
					TMP_23_overflow = output_overflow_14;
					adder_subtractor_b_btint_a_next = TMP_23_btint_a;
					adder_subtractor_b_btint_b_next = TMP_23_btint_b;
					adder_subtractor_b_overflow_next = TMP_23_overflow;
				end
				index_2 = 0;
				TMP_24 = (b_btint_a_next[index_2] + b_btint_b_next[index_2]) - 1;
				adder_subtractor_subtract_next = TMP_24 == -2'sd1;
				index_3 = 1;
				output_btint_a_16 = 0;
				output_btint_b_16 = 0;
				output_overflow_16 = 0;
				output_btint_a_16 = b_btint_a_next;
				output_btint_b_16 = b_btint_b_next;
				output_overflow_16 = b_overflow_next;
				begin : sv2v_autoblock_8
					integer i_12;
					for (i_12 = 0; i_12 < index_3; i_12 = i_12 + 1)
						begin
							output_btint_a_16 = output_btint_a_16 >>> 1;
							output_btint_b_16 = output_btint_b_16 >>> 1;
							output_index_8 = 7;
							output_value_8 = 0;
							output_btint_a_17 = 0;
							output_btint_b_17 = 0;
							output_overflow_17 = 0;
							output_btint_a_17 = output_btint_a_16;
							output_btint_b_17 = output_btint_b_16;
							output_overflow_17 = output_overflow_16;
							case (0)
								0: begin
									output_btint_a_17[output_index_8] = 0;
									output_btint_b_17[output_index_8] = 1;
								end
							endcase
							TMP_26_btint_a = output_btint_a_17;
							TMP_26_btint_b = output_btint_b_17;
							TMP_26_overflow = output_overflow_17;
							output_btint_a_16 = TMP_26_btint_a;
							output_btint_b_16 = TMP_26_btint_b;
							output_overflow_16 = TMP_26_overflow;
						end
				end
				TMP_25_btint_a = output_btint_a_16;
				TMP_25_btint_b = output_btint_b_16;
				TMP_25_overflow = output_overflow_16;
				b_btint_a_next = TMP_25_btint_a;
				b_btint_b_next = TMP_25_btint_b;
				b_overflow_next = TMP_25_overflow;
				shift_register_reset_next = 0;
				low_btint_a = state_btint_a;
				low_btint_b = state_btint_b;
				low_overflow = state_overflow;
				output_btint_a_18 = 0;
				output_btint_b_18 = 0;
				output_overflow_18 = 0;
				output_btint_a_18 = {a_btint_a, low_btint_a};
				output_btint_b_18 = {a_btint_b, low_btint_b};
				output_overflow_18 = a_overflow;
				TMP_27_btint_a = output_btint_a_18;
				TMP_27_btint_b = output_btint_b_18;
				TMP_27_overflow = output_overflow_18;
				product_btint_a = TMP_27_btint_a;
				product_btint_b = TMP_27_btint_b;
				product_overflow = TMP_27_overflow;
				begin : sv2v_autoblock_9
					integer i_13;
					for (i_13 = 8; i_13 < 16; i_13 = i_13 + 1)
						begin
							product_index = i_13;
							TMP_28 = (product_btint_a[product_index] + product_btint_b[product_index]) - 1;
							if (|TMP_28) begin
								product_index = i_13;
								TMP_29 = (product_btint_a[product_index] + product_btint_b[product_index]) - 1;
								product_value = TMP_29;
								output_btint_a_19 = 0;
								output_btint_b_19 = 0;
								output_overflow_19 = 0;
								output_btint_a_19 = product_btint_a;
								output_btint_b_19 = product_btint_b;
								output_overflow_19 = product_overflow;
								case (product_value)
									-1: begin
										output_overflow_19[0] = 0;
										output_overflow_19[1] = 0;
									end
									0: begin
										output_overflow_19[0] = 0;
										output_overflow_19[1] = 1;
									end
									1: begin
										output_overflow_19[0] = 1;
										output_overflow_19[1] = 1;
									end
									default:
										;
								endcase
								TMP_30_btint_a = output_btint_a_19;
								TMP_30_btint_b = output_btint_b_19;
								TMP_30_overflow = output_overflow_19;
								product_btint_a = TMP_30_btint_a;
								product_btint_b = TMP_30_btint_b;
								product_overflow = TMP_30_overflow;
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
	always @(lock_next or b_overflow_next or b_btint_b_next or b_btint_a_next or b_btint_b_next or b_btint_a_next or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or b_btint_b_next or b_btint_a_next or lock_next or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or b_old_btint_b_next or b_old_btint_a_next or a_old_btint_b_next or a_old_btint_a_next or shift_register_state_overflow or shift_register_state_btint_b or shift_register_state_btint_a or adder_subtractor_a_overflow or adder_subtractor_a_btint_b or adder_subtractor_a_btint_a or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or shift_register_reset or multiplier_product_overflow or multiplier_product_btint_b or multiplier_product_btint_a or lock or b_overflow or b_old_btint_b or b_old_btint_a or b_btint_b or b_btint_a or adder_subtractor_subtract or adder_subtractor_b_overflow or adder_subtractor_b_btint_b or adder_subtractor_b_btint_a or a_old_btint_b or a_old_btint_a or _sv2v_0) begin : multiply_comb
		if (_sv2v_0)
			;
		multiply_func;
	end
	always @(posedge multiplier_clock) begin : multiply_ff
		if (multiplier_reset) begin : sv2v_autoblock_10
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
			integer TMP_3_value;
			reg [15:0] output_btint_a_2;
			reg [15:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [15:0] output_btint_a_3;
			reg [15:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg [15:0] TMP_5_btint_a;
			reg [15:0] TMP_5_btint_b;
			reg [1:0] TMP_5_overflow;
			reg TMP_3_isNegative;
			integer TMP_3_i;
			reg [15:0] TMP_4_btint_a;
			reg [15:0] TMP_4_btint_b;
			reg [1:0] TMP_4_overflow;
			integer TMP_6_value;
			reg [7:0] output_btint_a_4;
			reg [7:0] output_btint_b_4;
			reg [1:0] output_overflow_4;
			integer output_index_2;
			integer output_value_2;
			reg [7:0] output_btint_a_5;
			reg [7:0] output_btint_b_5;
			reg [1:0] output_overflow_5;
			reg TMP_6_isNegative;
			integer TMP_6_i;
			reg [7:0] TMP_7_btint_a;
			reg [7:0] TMP_7_btint_b;
			reg [1:0] TMP_7_overflow;
			integer TMP_8_value;
			reg [7:0] output_btint_a_6;
			reg [7:0] output_btint_b_6;
			reg [1:0] output_overflow_6;
			integer output_index_3;
			integer output_value_3;
			reg [7:0] output_btint_a_7;
			reg [7:0] output_btint_b_7;
			reg [1:0] output_overflow_7;
			reg TMP_8_isNegative;
			integer TMP_8_i;
			reg [7:0] TMP_9_btint_a;
			reg [7:0] TMP_9_btint_b;
			reg [1:0] TMP_9_overflow;
			integer TMP_10_value;
			reg [7:0] output_btint_a_8;
			reg [7:0] output_btint_b_8;
			reg [1:0] output_overflow_8;
			integer output_index_4;
			integer output_value_4;
			reg [7:0] output_btint_a_9;
			reg [7:0] output_btint_b_9;
			reg [1:0] output_overflow_9;
			reg TMP_10_isNegative;
			integer TMP_10_i;
			reg [7:0] TMP_11_btint_a;
			reg [7:0] TMP_11_btint_b;
			reg [1:0] TMP_11_overflow;
			reg [1:0] a_old_overflow;
			reg [1:0] b_old_overflow;
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
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_11
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
			adder_subtractor_b_btint_a <= TMP_1_btint_a;
			adder_subtractor_b_btint_b <= TMP_1_btint_b;
			adder_subtractor_b_overflow <= TMP_1_overflow;
			shift_register_reset <= 1;
			TMP_3_value = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			begin : sv2v_autoblock_12
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
						TMP_5_btint_a = output_btint_a_3;
						TMP_5_btint_b = output_btint_b_3;
						TMP_5_overflow = output_overflow_3;
						output_btint_a_2 = TMP_5_btint_a;
						output_btint_b_2 = TMP_5_btint_b;
						output_overflow_2 = TMP_5_overflow;
					end
			end
			TMP_3_isNegative = TMP_3_value < 0;
			TMP_3_i = 0;
			TMP_4_btint_a = output_btint_a_2;
			TMP_4_btint_b = output_btint_b_2;
			TMP_4_overflow = output_overflow_2;
			multiplier_product_btint_a <= TMP_4_btint_a;
			multiplier_product_btint_b <= TMP_4_btint_b;
			multiplier_product_overflow <= TMP_4_overflow;
			TMP_6_value = 0;
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			begin : sv2v_autoblock_13
				integer i_2;
				for (i_2 = 0; i_2 < 8; i_2 = i_2 + 1)
					begin
						output_index_2 = i_2;
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
						TMP_2_btint_a = output_btint_a_5;
						TMP_2_btint_b = output_btint_b_5;
						TMP_2_overflow = output_overflow_5;
						output_btint_a_4 = TMP_2_btint_a;
						output_btint_b_4 = TMP_2_btint_b;
						output_overflow_4 = TMP_2_overflow;
					end
			end
			TMP_6_isNegative = TMP_6_value < 0;
			TMP_6_i = 0;
			TMP_7_btint_a = output_btint_a_4;
			TMP_7_btint_b = output_btint_b_4;
			TMP_7_overflow = output_overflow_4;
			a_old_btint_a <= TMP_7_btint_a;
			a_old_btint_b <= TMP_7_btint_b;
			a_old_overflow = TMP_7_overflow;
			TMP_8_value = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			begin : sv2v_autoblock_14
				integer i_3;
				for (i_3 = 0; i_3 < 8; i_3 = i_3 + 1)
					begin
						output_index_3 = i_3;
						output_value_3 = 0;
						output_btint_a_7 = 0;
						output_btint_b_7 = 0;
						output_overflow_7 = 0;
						output_btint_a_7 = output_btint_a_6;
						output_btint_b_7 = output_btint_b_6;
						output_overflow_7 = output_overflow_6;
						case (0)
							0: begin
								output_btint_a_7[output_index_3] = 0;
								output_btint_b_7[output_index_3] = 1;
							end
						endcase
						TMP_2_btint_a = output_btint_a_7;
						TMP_2_btint_b = output_btint_b_7;
						TMP_2_overflow = output_overflow_7;
						output_btint_a_6 = TMP_2_btint_a;
						output_btint_b_6 = TMP_2_btint_b;
						output_overflow_6 = TMP_2_overflow;
					end
			end
			TMP_8_isNegative = TMP_8_value < 0;
			TMP_8_i = 0;
			TMP_9_btint_a = output_btint_a_6;
			TMP_9_btint_b = output_btint_b_6;
			TMP_9_overflow = output_overflow_6;
			b_old_btint_a <= TMP_9_btint_a;
			b_old_btint_b <= TMP_9_btint_b;
			b_old_overflow = TMP_9_overflow;
			TMP_10_value = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			begin : sv2v_autoblock_15
				integer i_4;
				for (i_4 = 0; i_4 < 8; i_4 = i_4 + 1)
					begin
						output_index_4 = i_4;
						output_value_4 = 0;
						output_btint_a_9 = 0;
						output_btint_b_9 = 0;
						output_overflow_9 = 0;
						output_btint_a_9 = output_btint_a_8;
						output_btint_b_9 = output_btint_b_8;
						output_overflow_9 = output_overflow_8;
						case (0)
							0: begin
								output_btint_a_9[output_index_4] = 0;
								output_btint_b_9[output_index_4] = 1;
							end
						endcase
						TMP_2_btint_a = output_btint_a_9;
						TMP_2_btint_b = output_btint_b_9;
						TMP_2_overflow = output_overflow_9;
						output_btint_a_8 = TMP_2_btint_a;
						output_btint_b_8 = TMP_2_btint_b;
						output_overflow_8 = TMP_2_overflow;
					end
			end
			TMP_10_isNegative = TMP_10_value < 0;
			TMP_10_i = 0;
			TMP_11_btint_a = output_btint_a_8;
			TMP_11_btint_b = output_btint_b_8;
			TMP_11_overflow = output_overflow_8;
			b_btint_a <= TMP_11_btint_a;
			b_btint_b <= TMP_11_btint_b;
			b_overflow <= TMP_11_overflow;
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
		reg [8:0] input_btint_a;
		reg [8:0] input_btint_b;
		reg [1:0] input_overflow;
		reg [7:0] state_btint_a;
		reg [7:0] state_btint_b;
		reg [1:0] state_overflow;
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
		integer TMP_3_value;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg TMP_3_isNegative;
		integer TMP_3_i;
		reg [7:0] TMP_4_btint_a;
		reg [7:0] TMP_4_btint_b;
		reg [1:0] TMP_4_overflow;
		integer state_index;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		integer output_index_2;
		integer output_value_2;
		reg [7:0] output_btint_a_5;
		reg [7:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
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
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		reg [7:0] TMP_8_btint_a;
		reg [7:0] TMP_8_btint_b;
		reg [1:0] TMP_8_overflow;
		integer input_index_1;
		reg [8:0] output_btint_a_7;
		reg [8:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		integer output_index_3;
		integer output_value_3;
		reg [8:0] output_btint_a_8;
		reg [8:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		reg [8:0] TMP_11_btint_a;
		reg [8:0] TMP_11_btint_b;
		reg [1:0] TMP_11_overflow;
		reg [8:0] TMP_10_btint_a;
		reg [8:0] TMP_10_btint_b;
		reg [1:0] TMP_10_overflow;
		reg [8:0] output_btint_a_9;
		reg [8:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		integer TMP_14;
		integer output_index_4;
		integer input_msd;
		integer TMP_16;
		integer input_msd_1_1;
		integer TMP_18;
		integer input_msd_2_1;
		integer output_index_5;
		integer output_value_4;
		reg [8:0] output_btint_a_10;
		reg [8:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
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
		reg [7:0] output_btint_a_11;
		reg [7:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg [7:0] TMP_23_btint_a;
		reg [7:0] TMP_23_btint_b;
		reg [1:0] TMP_23_overflow;
		begin
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			output_index_2 = 0;
			output_value_2 = 0;
			output_btint_a_5 = 0;
			output_btint_b_5 = 0;
			output_overflow_5 = 0;
			TMP_6_btint_a = 0;
			TMP_6_btint_b = 0;
			TMP_6_overflow = 0;
			TMP_5_btint_a = 0;
			TMP_5_btint_b = 0;
			TMP_5_overflow = 0;
			TMP_7 = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			TMP_8_btint_a = 0;
			TMP_8_btint_b = 0;
			TMP_8_overflow = 0;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			output_index_3 = 0;
			output_value_3 = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			TMP_11_btint_a = 0;
			TMP_11_btint_b = 0;
			TMP_11_overflow = 0;
			TMP_10_btint_a = 0;
			TMP_10_btint_b = 0;
			TMP_10_overflow = 0;
			output_btint_a_9 = 0;
			output_btint_b_9 = 0;
			output_overflow_9 = 0;
			TMP_14 = 0;
			output_index_4 = 0;
			input_msd = 0;
			TMP_16 = 0;
			input_msd_1_1 = 0;
			TMP_18 = 0;
			input_msd_2_1 = 0;
			output_index_5 = 0;
			output_value_4 = 0;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
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
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
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
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			output_btint_a_4 = state_btint_a;
			output_btint_b_4 = state_btint_b;
			output_overflow_4 = state_overflow;
			begin : sv2v_autoblock_1
				integer i_2;
				for (i_2 = 0; i_2 < state_index; i_2 = i_2 + 1)
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
							-1: begin
								output_btint_a_5[output_index_2] = 0;
								output_btint_b_5[output_index_2] = 0;
							end
							0: begin
								output_btint_a_5[output_index_2] = 0;
								output_btint_b_5[output_index_2] = 1;
							end
							1: begin
								output_btint_a_5[output_index_2] = 1;
								output_btint_b_5[output_index_2] = 1;
							end
							default:
								;
						endcase
						TMP_6_btint_a = output_btint_a_5;
						TMP_6_btint_b = output_btint_b_5;
						TMP_6_overflow = output_overflow_5;
						output_btint_a_4 = TMP_6_btint_a;
						output_btint_b_4 = TMP_6_btint_b;
						output_overflow_4 = TMP_6_overflow;
					end
			end
			TMP_5_btint_a = output_btint_a_4;
			TMP_5_btint_b = output_btint_b_4;
			TMP_5_overflow = output_overflow_4;
			state_btint_a = TMP_5_btint_a;
			state_btint_b = TMP_5_btint_b;
			state_overflow = TMP_5_overflow;
			input_index = 0;
			TMP_7 = (input_btint_a[input_index] + input_btint_b[input_index]) - 1;
			state_index_1 = 7;
			state_value = TMP_7;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			output_btint_a_6 = state_btint_a;
			output_btint_b_6 = state_btint_b;
			output_overflow_6 = state_overflow;
			case (state_value)
				-1: begin
					output_btint_a_6[state_index_1] = 0;
					output_btint_b_6[state_index_1] = 0;
				end
				0: begin
					output_btint_a_6[state_index_1] = 0;
					output_btint_b_6[state_index_1] = 1;
				end
				1: begin
					output_btint_a_6[state_index_1] = 1;
					output_btint_b_6[state_index_1] = 1;
				end
				default:
					;
			endcase
			TMP_8_btint_a = output_btint_a_6;
			TMP_8_btint_b = output_btint_b_6;
			TMP_8_overflow = output_overflow_6;
			state_btint_a = TMP_8_btint_a;
			state_btint_b = TMP_8_btint_b;
			state_overflow = TMP_8_overflow;
			shift_register_state_btint_a_next = state_btint_a;
			shift_register_state_btint_b_next = state_btint_b;
			shift_register_state_overflow_next = state_overflow;
			input_index_1 = 1;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			output_btint_a_7 = input_btint_a;
			output_btint_b_7 = input_btint_b;
			output_overflow_7 = input_overflow;
			begin : sv2v_autoblock_2
				integer i_3;
				for (i_3 = 0; i_3 < input_index_1; i_3 = i_3 + 1)
					begin
						output_btint_a_7 = output_btint_a_7 >>> 1;
						output_btint_b_7 = output_btint_b_7 >>> 1;
						output_index_3 = 8;
						output_value_3 = 0;
						output_btint_a_8 = 0;
						output_btint_b_8 = 0;
						output_overflow_8 = 0;
						output_btint_a_8 = output_btint_a_7;
						output_btint_b_8 = output_btint_b_7;
						output_overflow_8 = output_overflow_7;
						case (0)
							-1: begin
								output_btint_a_8[output_index_3] = 0;
								output_btint_b_8[output_index_3] = 0;
							end
							0: begin
								output_btint_a_8[output_index_3] = 0;
								output_btint_b_8[output_index_3] = 1;
							end
							1: begin
								output_btint_a_8[output_index_3] = 1;
								output_btint_b_8[output_index_3] = 1;
							end
							default:
								;
						endcase
						TMP_11_btint_a = output_btint_a_8;
						TMP_11_btint_b = output_btint_b_8;
						TMP_11_overflow = output_overflow_8;
						output_btint_a_7 = TMP_11_btint_a;
						output_btint_b_7 = TMP_11_btint_b;
						output_overflow_7 = TMP_11_overflow;
					end
			end
			TMP_10_btint_a = output_btint_a_7;
			TMP_10_btint_b = output_btint_b_7;
			TMP_10_overflow = output_overflow_7;
			input_btint_a = TMP_10_btint_a;
			input_btint_b = TMP_10_btint_b;
			input_overflow = TMP_10_overflow;
			output_btint_a_9 = 0;
			output_btint_b_9 = 0;
			output_overflow_9 = 0;
			output_btint_a_9 = input_btint_a;
			output_btint_b_9 = input_btint_b;
			output_overflow_9 = input_overflow;
			output_index_4 = 8;
			TMP_14 = (output_btint_a_9[output_index_4] + output_btint_b_9[output_index_4]) - 1;
			input_msd = TMP_14;
			output_index_4 = 7;
			TMP_16 = (output_btint_a_9[output_index_4] + output_btint_b_9[output_index_4]) - 1;
			input_msd_1_1 = TMP_16;
			output_index_4 = 6;
			TMP_18 = (output_btint_a_9[output_index_4] + output_btint_b_9[output_index_4]) - 1;
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
			output_index_5 = 8;
			output_value_4 = input_msd;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			output_btint_a_10 = output_btint_a_9;
			output_btint_b_10 = output_btint_b_9;
			output_overflow_10 = output_overflow_9;
			case (output_value_4)
				-1: begin
					output_btint_a_10[output_index_5] = 0;
					output_btint_b_10[output_index_5] = 0;
				end
				0: begin
					output_btint_a_10[output_index_5] = 0;
					output_btint_b_10[output_index_5] = 1;
				end
				1: begin
					output_btint_a_10[output_index_5] = 1;
					output_btint_b_10[output_index_5] = 1;
				end
				default:
					;
			endcase
			TMP_20_btint_a = output_btint_a_10;
			TMP_20_btint_b = output_btint_b_10;
			TMP_20_overflow = output_overflow_10;
			output_btint_a_9 = TMP_20_btint_a;
			output_btint_b_9 = TMP_20_btint_b;
			output_overflow_9 = TMP_20_overflow;
			output_index_5 = 7;
			output_value_4 = input_msd_1_1;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			output_btint_a_10 = output_btint_a_9;
			output_btint_b_10 = output_btint_b_9;
			output_overflow_10 = output_overflow_9;
			case (output_value_4)
				-1: begin
					output_btint_a_10[output_index_5] = 0;
					output_btint_b_10[output_index_5] = 0;
				end
				0: begin
					output_btint_a_10[output_index_5] = 0;
					output_btint_b_10[output_index_5] = 1;
				end
				1: begin
					output_btint_a_10[output_index_5] = 1;
					output_btint_b_10[output_index_5] = 1;
				end
				default:
					;
			endcase
			TMP_21_btint_a = output_btint_a_10;
			TMP_21_btint_b = output_btint_b_10;
			TMP_21_overflow = output_overflow_10;
			output_btint_a_9 = TMP_21_btint_a;
			output_btint_b_9 = TMP_21_btint_b;
			output_overflow_9 = TMP_21_overflow;
			output_index_5 = 6;
			output_value_4 = input_msd_2_1;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			output_btint_a_10 = output_btint_a_9;
			output_btint_b_10 = output_btint_b_9;
			output_overflow_10 = output_overflow_9;
			case (output_value_4)
				-1: begin
					output_btint_a_10[output_index_5] = 0;
					output_btint_b_10[output_index_5] = 0;
				end
				0: begin
					output_btint_a_10[output_index_5] = 0;
					output_btint_b_10[output_index_5] = 1;
				end
				1: begin
					output_btint_a_10[output_index_5] = 1;
					output_btint_b_10[output_index_5] = 1;
				end
				default:
					;
			endcase
			TMP_22_btint_a = output_btint_a_10;
			TMP_22_btint_b = output_btint_b_10;
			TMP_22_overflow = output_overflow_10;
			output_btint_a_9 = TMP_22_btint_a;
			output_btint_b_9 = TMP_22_btint_b;
			output_overflow_9 = TMP_22_overflow;
			TMP_13_btint_a = output_btint_a_9;
			TMP_13_btint_b = output_btint_b_9;
			TMP_13_overflow = output_overflow_9;
			TMP_13_from = 8;
			TMP_13_to = 0;
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
			output_btint_a_11 = TMP_13_btint_a[TMP_13_to+:8];
			output_btint_b_11 = TMP_13_btint_b[TMP_13_to+:8];
			output_overflow_11 = TMP_13_overflow;
			TMP_23_btint_a = output_btint_a_11;
			TMP_23_btint_b = output_btint_b_11;
			TMP_23_overflow = output_overflow_11;
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
			reg [8:0] input_btint_a;
			reg [8:0] input_btint_b;
			reg [1:0] input_overflow;
			reg [7:0] state_btint_a;
			reg [7:0] state_btint_b;
			reg [1:0] state_overflow;
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
			integer TMP_3_value;
			reg [7:0] output_btint_a_2;
			reg [7:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [7:0] output_btint_a_3;
			reg [7:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg TMP_3_isNegative;
			integer TMP_3_i;
			reg [7:0] TMP_4_btint_a;
			reg [7:0] TMP_4_btint_b;
			reg [1:0] TMP_4_overflow;
			input_btint_a = 0;
			input_btint_b = 0;
			input_overflow = 0;
			state_btint_a = 0;
			state_btint_b = 0;
			state_overflow = 0;
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
			shift_register_state_btint_a <= TMP_1_btint_a;
			shift_register_state_btint_b <= TMP_1_btint_b;
			shift_register_state_overflow <= TMP_1_overflow;
			TMP_3_value = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			begin : sv2v_autoblock_5
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
						TMP_2_btint_a = output_btint_a_3;
						TMP_2_btint_b = output_btint_b_3;
						TMP_2_overflow = output_overflow_3;
						output_btint_a_2 = TMP_2_btint_a;
						output_btint_b_2 = TMP_2_btint_b;
						output_overflow_2 = TMP_2_overflow;
					end
			end
			TMP_3_isNegative = TMP_3_value < 0;
			TMP_3_i = 0;
			TMP_4_btint_a = output_btint_a_2;
			TMP_4_btint_b = output_btint_b_2;
			TMP_4_overflow = output_overflow_2;
			shift_register_output_btint_a <= TMP_4_btint_a;
			shift_register_output_btint_b <= TMP_4_btint_b;
			shift_register_output_overflow <= TMP_4_overflow;
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
	controller_m_a_btint_a,
	controller_m_a_btint_b,
	controller_m_a_overflow,
	controller_m_b_btint_a,
	controller_m_b_btint_b,
	controller_m_b_overflow,
	controller_v_btint_a,
	controller_v_btint_b,
	controller_v_overflow,
	controller_op,
	controller_a_out_btint_a,
	controller_a_out_btint_b,
	controller_a_out_overflow,
	controller_c_out_u_btint_a,
	controller_c_out_u_btint_b,
	controller_c_out_u_overflow,
	controller_c_out_d_btint_a,
	controller_c_out_d_btint_b,
	controller_c_out_d_overflow,
	controller_s_out,
	controller_a_in_btint_a,
	controller_a_in_btint_b,
	controller_a_in_overflow,
	controller_c_in_u_btint_a,
	controller_c_in_u_btint_b,
	controller_c_in_u_overflow,
	controller_c_in_d_btint_a,
	controller_c_in_d_btint_b,
	controller_c_in_d_overflow,
	controller_s_in,
	controller_s_mm,
	controller_done,
	controller_result_u_btint_a,
	controller_result_u_btint_b,
	controller_result_u_overflow,
	controller_result_d_btint_a,
	controller_result_d_btint_b,
	controller_result_d_overflow
);
	reg _sv2v_0;
	input wire controller_clock;
	input wire controller_reset;
	input wire [95:0] controller_m_a_btint_a;
	input wire [95:0] controller_m_a_btint_b;
	input wire [23:0] controller_m_a_overflow;
	input wire [95:0] controller_m_b_btint_a;
	input wire [95:0] controller_m_b_btint_b;
	input wire [23:0] controller_m_b_overflow;
	input wire [23:0] controller_v_btint_a;
	input wire [23:0] controller_v_btint_b;
	input wire [5:0] controller_v_overflow;
	input wire [1:0] controller_op;
	input wire [95:0] controller_a_out_btint_a;
	input wire [95:0] controller_a_out_btint_b;
	input wire [23:0] controller_a_out_overflow;
	input wire [95:0] controller_c_out_u_btint_a;
	input wire [95:0] controller_c_out_u_btint_b;
	input wire [23:0] controller_c_out_u_overflow;
	input wire [95:0] controller_c_out_d_btint_a;
	input wire [95:0] controller_c_out_d_btint_b;
	input wire [23:0] controller_c_out_d_overflow;
	input wire [11:0] controller_s_out;
	output reg [95:0] controller_a_in_btint_a;
	output reg [95:0] controller_a_in_btint_b;
	output reg [23:0] controller_a_in_overflow;
	output reg [95:0] controller_c_in_u_btint_a;
	output reg [95:0] controller_c_in_u_btint_b;
	output reg [23:0] controller_c_in_u_overflow;
	output reg [95:0] controller_c_in_d_btint_a;
	output reg [95:0] controller_c_in_d_btint_b;
	output reg [23:0] controller_c_in_d_overflow;
	output reg [11:0] controller_s_in;
	output reg [0:3] controller_s_mm;
	output reg controller_done;
	output reg [127:0] controller_result_u_btint_a;
	output reg [127:0] controller_result_u_btint_b;
	output reg [31:0] controller_result_u_overflow;
	output reg [127:0] controller_result_d_btint_a;
	output reg [127:0] controller_result_d_btint_b;
	output reg [31:0] controller_result_d_overflow;
	reg [5:0] control_WAIT_N_COUNTER;
	reg [5:0] control_WAIT_N_COUNTER_next;
	reg [95:0] controller_a_in_btint_a_next;
	wire [95:0] controller_a_in_btint_b_next;
	wire [23:0] controller_a_in_overflow_next;
	reg [95:0] controller_c_in_u_btint_a_next;
	wire [95:0] controller_c_in_u_btint_b_next;
	wire [23:0] controller_c_in_u_overflow_next;
	reg [95:0] controller_c_in_d_btint_a_next;
	wire [95:0] controller_c_in_d_btint_b_next;
	wire [23:0] controller_c_in_d_overflow_next;
	reg [11:0] controller_s_in_next;
	reg [0:3] controller_s_mm_next;
	reg controller_done_next;
	reg [127:0] controller_result_u_btint_a_next;
	wire [127:0] controller_result_u_btint_b_next;
	wire [31:0] controller_result_u_overflow_next;
	reg [127:0] controller_result_d_btint_a_next;
	wire [127:0] controller_result_d_btint_b_next;
	wire [31:0] controller_result_d_overflow_next;
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
	reg [15:0] state;
	reg [15:0] state_next;
	reg signed [95:0] index_a;
	reg signed [95:0] index_a_next;
	reg load_done;
	reg load_done_next;
	reg signed [31:0] index_b;
	reg signed [31:0] index_b_next;
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
		integer TMP_3_value;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg TMP_3_isNegative;
		integer TMP_3_i;
		reg [7:0] TMP_4_btint_a;
		reg [7:0] TMP_4_btint_b;
		reg [1:0] TMP_4_overflow;
		integer TMP_5_value;
		reg [7:0] output_btint_a_4;
		reg [7:0] output_btint_b_4;
		reg [1:0] output_overflow_4;
		integer output_index_2;
		integer output_value_2;
		reg [7:0] output_btint_a_5;
		reg [7:0] output_btint_b_5;
		reg [1:0] output_overflow_5;
		reg TMP_5_isNegative;
		integer TMP_5_i;
		reg [7:0] TMP_6_btint_a;
		reg [7:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		integer TMP_7_value;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		integer output_index_3;
		integer output_value_3;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg TMP_7_isNegative;
		integer TMP_7_i;
		reg [7:0] TMP_8_btint_a;
		reg [7:0] TMP_8_btint_b;
		reg [1:0] TMP_8_overflow;
		integer TMP_9_value;
		reg [7:0] output_btint_a_8;
		reg [7:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		integer output_index_4;
		integer output_value_4;
		reg [7:0] output_btint_a_9;
		reg [7:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg TMP_9_isNegative;
		integer TMP_9_i;
		reg [7:0] TMP_10_btint_a;
		reg [7:0] TMP_10_btint_b;
		reg [1:0] TMP_10_overflow;
		integer TMP_11_value;
		reg [7:0] output_btint_a_10;
		reg [7:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
		integer output_index_5;
		integer output_value_5;
		reg [7:0] output_btint_a_11;
		reg [7:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg TMP_11_isNegative;
		integer TMP_11_i;
		reg [7:0] TMP_12_btint_a;
		reg [7:0] TMP_12_btint_b;
		reg [1:0] TMP_12_overflow;
		integer TMP_13_value;
		reg [7:0] output_btint_a_12;
		reg [7:0] output_btint_b_12;
		reg [1:0] output_overflow_12;
		integer output_index_6;
		integer output_value_6;
		reg [7:0] output_btint_a_13;
		reg [7:0] output_btint_b_13;
		reg [1:0] output_overflow_13;
		reg TMP_13_isNegative;
		integer TMP_13_i;
		reg [7:0] TMP_14_btint_a;
		reg [7:0] TMP_14_btint_b;
		reg [1:0] TMP_14_overflow;
		integer TMP_15_value;
		reg [7:0] output_btint_a_14;
		reg [7:0] output_btint_b_14;
		reg [1:0] output_overflow_14;
		integer output_index_7;
		integer output_value_7;
		reg [7:0] output_btint_a_15;
		reg [7:0] output_btint_b_15;
		reg [1:0] output_overflow_15;
		reg TMP_15_isNegative;
		integer TMP_15_i;
		reg [7:0] TMP_16_btint_a;
		reg [7:0] TMP_16_btint_b;
		reg [1:0] TMP_16_overflow;
		integer TMP_17_value;
		reg [7:0] output_btint_a_16;
		reg [7:0] output_btint_b_16;
		reg [1:0] output_overflow_16;
		integer output_index_8;
		integer output_value_8;
		reg [7:0] output_btint_a_17;
		reg [7:0] output_btint_b_17;
		reg [1:0] output_overflow_17;
		reg TMP_17_isNegative;
		integer TMP_17_i;
		reg [7:0] TMP_18_btint_a;
		reg [7:0] TMP_18_btint_b;
		reg [1:0] TMP_18_overflow;
		integer TMP_19_value;
		reg [7:0] output_btint_a_18;
		reg [7:0] output_btint_b_18;
		reg [1:0] output_overflow_18;
		integer output_index_9;
		integer output_value_9;
		reg [7:0] output_btint_a_19;
		reg [7:0] output_btint_b_19;
		reg [1:0] output_overflow_19;
		reg TMP_19_isNegative;
		integer TMP_19_i;
		reg [7:0] TMP_21_btint_a;
		reg [7:0] TMP_21_btint_b;
		reg [1:0] TMP_21_overflow;
		reg [7:0] TMP_20_btint_a;
		reg [7:0] TMP_20_btint_b;
		reg [1:0] TMP_20_overflow;
		integer TMP_22_value;
		reg [7:0] output_btint_a_20;
		reg [7:0] output_btint_b_20;
		reg [1:0] output_overflow_20;
		integer output_index_10;
		integer output_value_10;
		reg [7:0] output_btint_a_21;
		reg [7:0] output_btint_b_21;
		reg [1:0] output_overflow_21;
		reg TMP_22_isNegative;
		integer TMP_22_i;
		reg [7:0] TMP_23_btint_a;
		reg [7:0] TMP_23_btint_b;
		reg [1:0] TMP_23_overflow;
		integer k;
		integer TMP_24_value;
		reg [7:0] output_btint_a_22;
		reg [7:0] output_btint_b_22;
		reg [1:0] output_overflow_22;
		integer output_index_11;
		integer output_value_11;
		reg [7:0] output_btint_a_23;
		reg [7:0] output_btint_b_23;
		reg [1:0] output_overflow_23;
		reg TMP_24_isNegative;
		integer TMP_24_i;
		reg [7:0] TMP_25_btint_a;
		reg [7:0] TMP_25_btint_b;
		reg [1:0] TMP_25_overflow;
		integer TMP_26_value;
		reg [7:0] output_btint_a_24;
		reg [7:0] output_btint_b_24;
		reg [1:0] output_overflow_24;
		integer output_index_12;
		integer output_value_12;
		reg [7:0] output_btint_a_25;
		reg [7:0] output_btint_b_25;
		reg [1:0] output_overflow_25;
		reg TMP_26_isNegative;
		integer TMP_26_i;
		reg [7:0] TMP_27_btint_a;
		reg [7:0] TMP_27_btint_b;
		reg [1:0] TMP_27_overflow;
		integer TMP_28_value;
		reg [7:0] output_btint_a_26;
		reg [7:0] output_btint_b_26;
		reg [1:0] output_overflow_26;
		integer output_index_13;
		integer output_value_13;
		reg [7:0] output_btint_a_27;
		reg [7:0] output_btint_b_27;
		reg [1:0] output_overflow_27;
		reg TMP_28_isNegative;
		integer TMP_28_i;
		reg [7:0] TMP_29_btint_a;
		reg [7:0] TMP_29_btint_b;
		reg [1:0] TMP_29_overflow;
		integer TMP_30_value;
		reg [7:0] output_btint_a_28;
		reg [7:0] output_btint_b_28;
		reg [1:0] output_overflow_28;
		integer output_index_14;
		integer output_value_14;
		reg [7:0] output_btint_a_29;
		reg [7:0] output_btint_b_29;
		reg [1:0] output_overflow_29;
		reg TMP_30_isNegative;
		integer TMP_30_i;
		reg [7:0] TMP_31_btint_a;
		reg [7:0] TMP_31_btint_b;
		reg [1:0] TMP_31_overflow;
		integer TMP_32_value;
		reg [7:0] output_btint_a_30;
		reg [7:0] output_btint_b_30;
		reg [1:0] output_overflow_30;
		integer output_index_15;
		integer output_value_15;
		reg [7:0] output_btint_a_31;
		reg [7:0] output_btint_b_31;
		reg [1:0] output_overflow_31;
		reg TMP_32_isNegative;
		integer TMP_32_i;
		reg [7:0] TMP_33_btint_a;
		reg [7:0] TMP_33_btint_b;
		reg [1:0] TMP_33_overflow;
		integer TMP_34_value;
		reg [7:0] output_btint_a_32;
		reg [7:0] output_btint_b_32;
		reg [1:0] output_overflow_32;
		integer output_index_16;
		integer output_value_16;
		reg [7:0] output_btint_a_33;
		reg [7:0] output_btint_b_33;
		reg [1:0] output_overflow_33;
		reg TMP_34_isNegative;
		integer TMP_34_i;
		integer TMP_35_value;
		reg [7:0] output_btint_a_34;
		reg [7:0] output_btint_b_34;
		reg [1:0] output_overflow_34;
		integer output_index_17;
		integer output_value_17;
		reg [7:0] output_btint_a_35;
		reg [7:0] output_btint_b_35;
		reg [1:0] output_overflow_35;
		reg TMP_35_isNegative;
		integer TMP_35_i;
		integer TMP_36_value;
		reg [7:0] output_btint_a_36;
		reg [7:0] output_btint_b_36;
		reg [1:0] output_overflow_36;
		integer output_index_18;
		integer output_value_18;
		reg [7:0] output_btint_a_37;
		reg [7:0] output_btint_b_37;
		reg [1:0] output_overflow_37;
		reg TMP_36_isNegative;
		integer TMP_36_i;
		integer TMP_37_value;
		reg [7:0] output_btint_a_38;
		reg [7:0] output_btint_b_38;
		reg [1:0] output_overflow_38;
		integer output_index_19;
		integer output_value_19;
		reg [7:0] output_btint_a_39;
		reg [7:0] output_btint_b_39;
		reg [1:0] output_overflow_39;
		reg TMP_37_isNegative;
		integer TMP_37_i;
		integer TMP_38_value;
		reg [7:0] output_btint_a_40;
		reg [7:0] output_btint_b_40;
		reg [1:0] output_overflow_40;
		integer output_index_20;
		integer output_value_20;
		reg [7:0] output_btint_a_41;
		reg [7:0] output_btint_b_41;
		reg [1:0] output_overflow_41;
		reg TMP_38_isNegative;
		integer TMP_38_i;
		integer TMP_39_value;
		reg [7:0] output_btint_a_42;
		reg [7:0] output_btint_b_42;
		reg [1:0] output_overflow_42;
		integer output_index_21;
		integer output_value_21;
		reg [7:0] output_btint_a_43;
		reg [7:0] output_btint_b_43;
		reg [1:0] output_overflow_43;
		reg TMP_39_isNegative;
		integer TMP_39_i;
		integer TMP_40_value;
		reg [7:0] output_btint_a_44;
		reg [7:0] output_btint_b_44;
		reg [1:0] output_overflow_44;
		integer output_index_22;
		integer output_value_22;
		reg [7:0] output_btint_a_45;
		reg [7:0] output_btint_b_45;
		reg [1:0] output_overflow_45;
		reg TMP_40_isNegative;
		integer TMP_40_i;
		integer TMP_41_value;
		reg [7:0] output_btint_a_46;
		reg [7:0] output_btint_b_46;
		reg [1:0] output_overflow_46;
		integer output_index_23;
		integer output_value_23;
		reg [7:0] output_btint_a_47;
		reg [7:0] output_btint_b_47;
		reg [1:0] output_overflow_47;
		reg TMP_41_isNegative;
		integer TMP_41_i;
		integer TMP_42_value;
		reg [7:0] output_btint_a_48;
		reg [7:0] output_btint_b_48;
		reg [1:0] output_overflow_48;
		integer output_index_24;
		integer output_value_24;
		reg [7:0] output_btint_a_49;
		reg [7:0] output_btint_b_49;
		reg [1:0] output_overflow_49;
		reg TMP_42_isNegative;
		integer TMP_42_i;
		reg [1:0] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			TMP_15_value = 0;
			output_btint_a_14 = 0;
			output_btint_b_14 = 0;
			output_overflow_14 = 0;
			output_index_7 = 0;
			output_value_7 = 0;
			output_btint_a_15 = 0;
			output_btint_b_15 = 0;
			output_overflow_15 = 0;
			TMP_15_isNegative = 0;
			TMP_15_i = 0;
			TMP_16_btint_a = 0;
			TMP_16_btint_b = 0;
			TMP_16_overflow = 0;
			TMP_17_value = 0;
			output_btint_a_16 = 0;
			output_btint_b_16 = 0;
			output_overflow_16 = 0;
			output_index_8 = 0;
			output_value_8 = 0;
			output_btint_a_17 = 0;
			output_btint_b_17 = 0;
			output_overflow_17 = 0;
			TMP_17_isNegative = 0;
			TMP_17_i = 0;
			TMP_18_btint_a = 0;
			TMP_18_btint_b = 0;
			TMP_18_overflow = 0;
			TMP_19_value = 0;
			output_btint_a_18 = 0;
			output_btint_b_18 = 0;
			output_overflow_18 = 0;
			output_index_9 = 0;
			output_value_9 = 0;
			output_btint_a_19 = 0;
			output_btint_b_19 = 0;
			output_overflow_19 = 0;
			TMP_19_isNegative = 0;
			TMP_19_i = 0;
			TMP_21_btint_a = 0;
			TMP_21_btint_b = 0;
			TMP_21_overflow = 0;
			TMP_20_btint_a = 0;
			TMP_20_btint_b = 0;
			TMP_20_overflow = 0;
			TMP_22_value = 0;
			output_btint_a_20 = 0;
			output_btint_b_20 = 0;
			output_overflow_20 = 0;
			output_index_10 = 0;
			output_value_10 = 0;
			output_btint_a_21 = 0;
			output_btint_b_21 = 0;
			output_overflow_21 = 0;
			TMP_22_isNegative = 0;
			TMP_22_i = 0;
			TMP_23_btint_a = 0;
			TMP_23_btint_b = 0;
			TMP_23_overflow = 0;
			k = 0;
			TMP_24_value = 0;
			output_btint_a_22 = 0;
			output_btint_b_22 = 0;
			output_overflow_22 = 0;
			output_index_11 = 0;
			output_value_11 = 0;
			output_btint_a_23 = 0;
			output_btint_b_23 = 0;
			output_overflow_23 = 0;
			TMP_24_isNegative = 0;
			TMP_24_i = 0;
			TMP_25_btint_a = 0;
			TMP_25_btint_b = 0;
			TMP_25_overflow = 0;
			TMP_26_value = 0;
			output_btint_a_24 = 0;
			output_btint_b_24 = 0;
			output_overflow_24 = 0;
			output_index_12 = 0;
			output_value_12 = 0;
			output_btint_a_25 = 0;
			output_btint_b_25 = 0;
			output_overflow_25 = 0;
			TMP_26_isNegative = 0;
			TMP_26_i = 0;
			TMP_27_btint_a = 0;
			TMP_27_btint_b = 0;
			TMP_27_overflow = 0;
			TMP_28_value = 0;
			output_btint_a_26 = 0;
			output_btint_b_26 = 0;
			output_overflow_26 = 0;
			output_index_13 = 0;
			output_value_13 = 0;
			output_btint_a_27 = 0;
			output_btint_b_27 = 0;
			output_overflow_27 = 0;
			TMP_28_isNegative = 0;
			TMP_28_i = 0;
			TMP_29_btint_a = 0;
			TMP_29_btint_b = 0;
			TMP_29_overflow = 0;
			TMP_30_value = 0;
			output_btint_a_28 = 0;
			output_btint_b_28 = 0;
			output_overflow_28 = 0;
			output_index_14 = 0;
			output_value_14 = 0;
			output_btint_a_29 = 0;
			output_btint_b_29 = 0;
			output_overflow_29 = 0;
			TMP_30_isNegative = 0;
			TMP_30_i = 0;
			TMP_31_btint_a = 0;
			TMP_31_btint_b = 0;
			TMP_31_overflow = 0;
			TMP_32_value = 0;
			output_btint_a_30 = 0;
			output_btint_b_30 = 0;
			output_overflow_30 = 0;
			output_index_15 = 0;
			output_value_15 = 0;
			output_btint_a_31 = 0;
			output_btint_b_31 = 0;
			output_overflow_31 = 0;
			TMP_32_isNegative = 0;
			TMP_32_i = 0;
			TMP_33_btint_a = 0;
			TMP_33_btint_b = 0;
			TMP_33_overflow = 0;
			TMP_34_value = 0;
			output_btint_a_32 = 0;
			output_btint_b_32 = 0;
			output_overflow_32 = 0;
			output_index_16 = 0;
			output_value_16 = 0;
			output_btint_a_33 = 0;
			output_btint_b_33 = 0;
			output_overflow_33 = 0;
			TMP_34_isNegative = 0;
			TMP_34_i = 0;
			TMP_35_value = 0;
			output_btint_a_34 = 0;
			output_btint_b_34 = 0;
			output_overflow_34 = 0;
			output_index_17 = 0;
			output_value_17 = 0;
			output_btint_a_35 = 0;
			output_btint_b_35 = 0;
			output_overflow_35 = 0;
			TMP_35_isNegative = 0;
			TMP_35_i = 0;
			TMP_36_value = 0;
			output_btint_a_36 = 0;
			output_btint_b_36 = 0;
			output_overflow_36 = 0;
			output_index_18 = 0;
			output_value_18 = 0;
			output_btint_a_37 = 0;
			output_btint_b_37 = 0;
			output_overflow_37 = 0;
			TMP_36_isNegative = 0;
			TMP_36_i = 0;
			TMP_37_value = 0;
			output_btint_a_38 = 0;
			output_btint_b_38 = 0;
			output_overflow_38 = 0;
			output_index_19 = 0;
			output_value_19 = 0;
			output_btint_a_39 = 0;
			output_btint_b_39 = 0;
			output_overflow_39 = 0;
			TMP_37_isNegative = 0;
			TMP_37_i = 0;
			TMP_38_value = 0;
			output_btint_a_40 = 0;
			output_btint_b_40 = 0;
			output_overflow_40 = 0;
			output_index_20 = 0;
			output_value_20 = 0;
			output_btint_a_41 = 0;
			output_btint_b_41 = 0;
			output_overflow_41 = 0;
			TMP_38_isNegative = 0;
			TMP_38_i = 0;
			TMP_39_value = 0;
			output_btint_a_42 = 0;
			output_btint_b_42 = 0;
			output_overflow_42 = 0;
			output_index_21 = 0;
			output_value_21 = 0;
			output_btint_a_43 = 0;
			output_btint_b_43 = 0;
			output_overflow_43 = 0;
			TMP_39_isNegative = 0;
			TMP_39_i = 0;
			TMP_40_value = 0;
			output_btint_a_44 = 0;
			output_btint_b_44 = 0;
			output_overflow_44 = 0;
			output_index_22 = 0;
			output_value_22 = 0;
			output_btint_a_45 = 0;
			output_btint_b_45 = 0;
			output_overflow_45 = 0;
			TMP_40_isNegative = 0;
			TMP_40_i = 0;
			TMP_41_value = 0;
			output_btint_a_46 = 0;
			output_btint_b_46 = 0;
			output_overflow_46 = 0;
			output_index_23 = 0;
			output_value_23 = 0;
			output_btint_a_47 = 0;
			output_btint_b_47 = 0;
			output_overflow_47 = 0;
			TMP_41_isNegative = 0;
			TMP_41_i = 0;
			TMP_42_value = 0;
			output_btint_a_48 = 0;
			output_btint_b_48 = 0;
			output_overflow_48 = 0;
			output_index_24 = 0;
			output_value_24 = 0;
			output_btint_a_49 = 0;
			output_btint_b_49 = 0;
			output_overflow_49 = 0;
			TMP_42_isNegative = 0;
			TMP_42_i = 0;
			controller_a_in_btint_a_next = controller_a_in_btint_a;
			controller_c_in_d_btint_a_next = controller_c_in_d_btint_a;
			controller_c_in_u_btint_a_next = controller_c_in_u_btint_a;
			controller_done_next = controller_done;
			controller_result_d_btint_a_next = controller_result_d_btint_a;
			controller_result_u_btint_a_next = controller_result_u_btint_a;
			controller_s_in_next = controller_s_in;
			controller_s_mm_next = controller_s_mm;
			index_a_next = index_a;
			index_b_next = index_b;
			load_done_next = load_done;
			result_d_btint_a_next = result_d_btint_a;
			result_d_btint_b_next = result_d_btint_b;
			result_d_overflow_next = result_d_overflow;
			result_u_btint_a_next = result_u_btint_a;
			result_u_btint_b_next = result_u_btint_b;
			result_u_overflow_next = result_u_overflow;
			state_next = state;
			steps_next = steps;
			control_WAIT_N_COUNTER_next = control_WAIT_N_COUNTER;
			control_PROC_STATE_next = control_PROC_STATE;
			case (control_PROC_STATE)
				0: begin
					begin : sv2v_autoblock_1
						integer i_12;
						for (i_12 = 0; i_12 < 4; i_12 = i_12 + 1)
							begin : sv2v_autoblock_2
								integer j_3;
								for (j_3 = 0; j_3 < 4; j_3 = j_3 + 1)
									begin
										controller_result_u_btint_a[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_u_btint_a_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
										controller_result_u_btint_b[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_u_btint_b_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
										controller_result_u_overflow[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2] = result_u_overflow_next[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2];
										controller_result_d_btint_a[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_d_btint_a_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
										controller_result_d_btint_b[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_d_btint_b_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
										controller_result_d_overflow[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2] = result_d_overflow_next[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2];
									end
							end
					end
					begin : sv2v_autoblock_3
						integer i_13;
						for (i_13 = 0; i_13 < 3; i_13 = i_13 + 1)
							begin : sv2v_autoblock_4
								integer j_4;
								for (j_4 = 0; j_4 < 3; j_4 = j_4 + 1)
									begin
										controller_a_in_btint_a[(((3 - (j_4 + 1)) * 3) + (2 - i_13)) * 8+:8] = controller_a_out_btint_a[(((3 - j_4) * 3) + (2 - i_13)) * 8+:8];
										controller_a_in_btint_b[(((3 - (j_4 + 1)) * 3) + (2 - i_13)) * 8+:8] = controller_a_out_btint_b[(((3 - j_4) * 3) + (2 - i_13)) * 8+:8];
										controller_a_in_overflow[(((3 - (j_4 + 1)) * 3) + (2 - i_13)) * 2+:2] = controller_a_out_overflow[(((3 - j_4) * 3) + (2 - i_13)) * 2+:2];
									end
							end
					end
					begin : sv2v_autoblock_5
						integer i_14;
						for (i_14 = 0; i_14 < 4; i_14 = i_14 + 1)
							begin : sv2v_autoblock_6
								integer j_5;
								for (j_5 = 0; j_5 < 2; j_5 = j_5 + 1)
									begin
										controller_c_in_u_btint_a[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_u_btint_a[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
										controller_c_in_u_btint_b[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_u_btint_b[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
										controller_c_in_u_overflow[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 2+:2] = controller_c_out_u_overflow[(((3 - i_14) * 3) + (2 - j_5)) * 2+:2];
										controller_c_in_d_btint_a[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_d_btint_a[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
										controller_c_in_d_btint_b[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_d_btint_b[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
										controller_c_in_d_overflow[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 2+:2] = controller_c_out_d_overflow[(((3 - i_14) * 3) + (2 - j_5)) * 2+:2];
									end
							end
					end
					if (controller_op == 0) begin
						begin : sv2v_autoblock_7
							integer i_15;
							for (i_15 = 0; i_15 < 3; i_15 = i_15 + 1)
								if (steps_next >= (4 - i_15))
									controller_s_mm_next[i_15] = 1;
								else
									controller_s_mm_next[i_15] = 0;
						end
						if (steps_next >= 8)
							controller_done_next = 1;
						else
							controller_done_next = 0;
						begin : sv2v_autoblock_8
							integer i_16;
							for (i_16 = 0; i_16 < 3; i_16 = i_16 + 1)
								if (steps_next != 2) begin
									controller_s_in_next[((3 - i_16) * 3) + 2] = 0;
									TMP_15_value = 0;
									output_btint_a_14 = 0;
									output_btint_b_14 = 0;
									output_overflow_14 = 0;
									begin : sv2v_autoblock_9
										integer i_17;
										for (i_17 = 0; i_17 < 8; i_17 = i_17 + 1)
											begin
												output_index_7 = i_17;
												output_value_7 = 0;
												output_btint_a_15 = 0;
												output_btint_b_15 = 0;
												output_overflow_15 = 0;
												output_btint_a_15 = output_btint_a_14;
												output_btint_b_15 = output_btint_b_14;
												output_overflow_15 = output_overflow_14;
												case (0)
													0: begin
														output_btint_a_15[output_index_7] = 0;
														output_btint_b_15[output_index_7] = 1;
													end
													1: begin
														output_btint_a_15[output_index_7] = 1;
														output_btint_b_15[output_index_7] = 1;
													end
												endcase
												TMP_2_btint_a = output_btint_a_15;
												TMP_2_btint_b = output_btint_b_15;
												TMP_2_overflow = output_overflow_15;
												output_btint_a_14 = TMP_2_btint_a;
												output_btint_b_14 = TMP_2_btint_b;
												output_overflow_14 = TMP_2_overflow;
											end
									end
									TMP_15_isNegative = TMP_15_value < 0;
									TMP_15_i = 0;
									TMP_16_btint_a = output_btint_a_14;
									TMP_16_btint_b = output_btint_b_14;
									TMP_16_overflow = output_overflow_14;
									controller_c_in_u_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_16_btint_a;
									controller_c_in_u_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_16_btint_b;
									controller_c_in_u_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_16_overflow;
									TMP_17_value = 0;
									output_btint_a_16 = 0;
									output_btint_b_16 = 0;
									output_overflow_16 = 0;
									begin : sv2v_autoblock_10
										integer i_18;
										for (i_18 = 0; i_18 < 8; i_18 = i_18 + 1)
											begin
												output_index_8 = i_18;
												output_value_8 = 0;
												output_btint_a_17 = 0;
												output_btint_b_17 = 0;
												output_overflow_17 = 0;
												output_btint_a_17 = output_btint_a_16;
												output_btint_b_17 = output_btint_b_16;
												output_overflow_17 = output_overflow_16;
												case (0)
													0: begin
														output_btint_a_17[output_index_8] = 0;
														output_btint_b_17[output_index_8] = 1;
													end
													1: begin
														output_btint_a_17[output_index_8] = 1;
														output_btint_b_17[output_index_8] = 1;
													end
												endcase
												TMP_2_btint_a = output_btint_a_17;
												TMP_2_btint_b = output_btint_b_17;
												TMP_2_overflow = output_overflow_17;
												output_btint_a_16 = TMP_2_btint_a;
												output_btint_b_16 = TMP_2_btint_b;
												output_overflow_16 = TMP_2_overflow;
											end
									end
									TMP_17_isNegative = TMP_17_value < 0;
									TMP_17_i = 0;
									TMP_18_btint_a = output_btint_a_16;
									TMP_18_btint_b = output_btint_b_16;
									TMP_18_overflow = output_overflow_16;
									controller_c_in_d_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_18_btint_a;
									controller_c_in_d_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_18_btint_b;
									controller_c_in_d_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_18_overflow;
								end
								else begin
									controller_s_in_next[((3 - i_16) * 3) + 2] = 1;
									TMP_19_value = 1;
									output_btint_a_18 = 0;
									output_btint_b_18 = 0;
									output_overflow_18 = 0;
									begin : sv2v_autoblock_11
										integer i_19;
										for (i_19 = 0; i_19 < 8; i_19 = i_19 + 1)
											begin
												output_index_9 = i_19;
												output_value_9 = 0;
												output_btint_a_19 = 0;
												output_btint_b_19 = 0;
												output_overflow_19 = 0;
												output_btint_a_19 = output_btint_a_18;
												output_btint_b_19 = output_btint_b_18;
												output_overflow_19 = output_overflow_18;
												case (0)
													0: begin
														output_btint_a_19[output_index_9] = 0;
														output_btint_b_19[output_index_9] = 1;
													end
													1: begin
														output_btint_a_19[output_index_9] = 1;
														output_btint_b_19[output_index_9] = 1;
													end
												endcase
												TMP_2_btint_a = output_btint_a_19;
												TMP_2_btint_b = output_btint_b_19;
												TMP_2_overflow = output_overflow_19;
												output_btint_a_18 = TMP_2_btint_a;
												output_btint_b_18 = TMP_2_btint_b;
												output_overflow_18 = TMP_2_overflow;
											end
									end
									TMP_19_isNegative = TMP_19_value < 0;
									TMP_19_i = 0;
									while (|TMP_19_value) begin
										TMP_19_i = TMP_19_i + 1;
										output_index_9 = TMP_19_i + 1'sd1;
										output_value_9 = 1;
										output_btint_a_19 = 0;
										output_btint_b_19 = 0;
										output_overflow_19 = 0;
										output_btint_a_19 = output_btint_a_18;
										output_btint_b_19 = output_btint_b_18;
										output_overflow_19 = output_overflow_18;
										case (1)
											0: begin
												output_btint_a_19[output_index_9] = 0;
												output_btint_b_19[output_index_9] = 1;
											end
											1: begin
												output_btint_a_19[output_index_9] = 1;
												output_btint_b_19[output_index_9] = 1;
											end
										endcase
										TMP_21_btint_a = output_btint_a_19;
										TMP_21_btint_b = output_btint_b_19;
										TMP_21_overflow = output_overflow_19;
										output_btint_a_18 = TMP_21_btint_a;
										output_btint_b_18 = TMP_21_btint_b;
										output_overflow_18 = TMP_21_overflow;
										TMP_19_value = TMP_19_value - 1;
										TMP_19_value = TMP_19_value / 2;
									end
									TMP_20_btint_a = output_btint_a_18;
									TMP_20_btint_b = output_btint_b_18;
									TMP_20_overflow = output_overflow_18;
									controller_c_in_u_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_20_btint_a;
									controller_c_in_u_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_20_btint_b;
									controller_c_in_u_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_20_overflow;
									TMP_22_value = 1;
									output_btint_a_20 = 0;
									output_btint_b_20 = 0;
									output_overflow_20 = 0;
									begin : sv2v_autoblock_12
										integer i_20;
										for (i_20 = 0; i_20 < 8; i_20 = i_20 + 1)
											begin
												output_index_10 = i_20;
												output_value_10 = 0;
												output_btint_a_21 = 0;
												output_btint_b_21 = 0;
												output_overflow_21 = 0;
												output_btint_a_21 = output_btint_a_20;
												output_btint_b_21 = output_btint_b_20;
												output_overflow_21 = output_overflow_20;
												case (0)
													0: begin
														output_btint_a_21[output_index_10] = 0;
														output_btint_b_21[output_index_10] = 1;
													end
													1: begin
														output_btint_a_21[output_index_10] = 1;
														output_btint_b_21[output_index_10] = 1;
													end
												endcase
												TMP_2_btint_a = output_btint_a_21;
												TMP_2_btint_b = output_btint_b_21;
												TMP_2_overflow = output_overflow_21;
												output_btint_a_20 = TMP_2_btint_a;
												output_btint_b_20 = TMP_2_btint_b;
												output_overflow_20 = TMP_2_overflow;
											end
									end
									TMP_22_isNegative = TMP_22_value < 0;
									TMP_22_i = 0;
									while (|TMP_22_value) begin
										TMP_22_i = TMP_22_i + 1;
										output_index_10 = TMP_22_i + 1'sd1;
										output_value_10 = 1;
										output_btint_a_21 = 0;
										output_btint_b_21 = 0;
										output_overflow_21 = 0;
										output_btint_a_21 = output_btint_a_20;
										output_btint_b_21 = output_btint_b_20;
										output_overflow_21 = output_overflow_20;
										case (1)
											0: begin
												output_btint_a_21[output_index_10] = 0;
												output_btint_b_21[output_index_10] = 1;
											end
											1: begin
												output_btint_a_21[output_index_10] = 1;
												output_btint_b_21[output_index_10] = 1;
											end
										endcase
										TMP_21_btint_a = output_btint_a_21;
										TMP_21_btint_b = output_btint_b_21;
										TMP_21_overflow = output_overflow_21;
										output_btint_a_20 = TMP_21_btint_a;
										output_btint_b_20 = TMP_21_btint_b;
										output_overflow_20 = TMP_21_overflow;
										TMP_22_value = TMP_22_value - 1;
										TMP_22_value = TMP_22_value / 2;
									end
									TMP_23_btint_a = output_btint_a_20;
									TMP_23_btint_b = output_btint_b_20;
									TMP_23_overflow = output_overflow_20;
									controller_c_in_d_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_23_btint_a;
									controller_c_in_d_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_23_btint_b;
									controller_c_in_d_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_23_overflow;
								end
						end
						k = 0;
						begin : sv2v_autoblock_13
							integer i_21;
							for (i_21 = 0; i_21 < 3; i_21 = i_21 + 1)
								begin
									if ((steps_next >= (0 + k)) && (steps_next < (3 + i_21))) begin
										controller_a_in_btint_a[(9 + (2 - i_21)) * 8+:8] = controller_m_a_btint_a[(((3 - ((2 - steps_next) + i_21)) * 3) + (0 + i_21)) * 8+:8];
										controller_a_in_btint_b[(9 + (2 - i_21)) * 8+:8] = controller_m_a_btint_b[(((3 - ((2 - steps_next) + i_21)) * 3) + (0 + i_21)) * 8+:8];
										controller_a_in_overflow[(9 + (2 - i_21)) * 2+:2] = controller_m_a_overflow[(((3 - ((2 - steps_next) + i_21)) * 3) + (0 + i_21)) * 2+:2];
									end
									else begin
										TMP_24_value = 0;
										output_btint_a_22 = 0;
										output_btint_b_22 = 0;
										output_overflow_22 = 0;
										begin : sv2v_autoblock_14
											integer i_22;
											for (i_22 = 0; i_22 < 8; i_22 = i_22 + 1)
												begin
													output_index_11 = i_22;
													output_value_11 = 0;
													output_btint_a_23 = 0;
													output_btint_b_23 = 0;
													output_overflow_23 = 0;
													output_btint_a_23 = output_btint_a_22;
													output_btint_b_23 = output_btint_b_22;
													output_overflow_23 = output_overflow_22;
													case (0)
														0: begin
															output_btint_a_23[output_index_11] = 0;
															output_btint_b_23[output_index_11] = 1;
														end
														1: begin
															output_btint_a_23[output_index_11] = 1;
															output_btint_b_23[output_index_11] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_23;
													TMP_2_btint_b = output_btint_b_23;
													TMP_2_overflow = output_overflow_23;
													output_btint_a_22 = TMP_2_btint_a;
													output_btint_b_22 = TMP_2_btint_b;
													output_overflow_22 = TMP_2_overflow;
												end
										end
										TMP_24_isNegative = TMP_24_value < 0;
										TMP_24_i = 0;
										TMP_25_btint_a = output_btint_a_22;
										TMP_25_btint_b = output_btint_b_22;
										TMP_25_overflow = output_overflow_22;
										controller_a_in_btint_a[(9 + (2 - i_21)) * 8+:8] = TMP_25_btint_a;
										controller_a_in_btint_b[(9 + (2 - i_21)) * 8+:8] = TMP_25_btint_b;
										controller_a_in_overflow[(9 + (2 - i_21)) * 2+:2] = TMP_25_overflow;
									end
									k = k + 2;
								end
						end
						begin : sv2v_autoblock_15
							integer i_23;
							for (i_23 = 0; i_23 < 3; i_23 = i_23 + 1)
								if ((steps_next >= 5) && (steps_next < (6 + i_23))) begin
									result_u_btint_a_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_u_btint_a[((3 - i_23) * 3) * 8+:8];
									result_u_btint_b_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_u_btint_b[((3 - i_23) * 3) * 8+:8];
									result_u_overflow_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 2+:2] = controller_c_out_u_overflow[((3 - i_23) * 3) * 2+:2];
									result_d_btint_a_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_d_btint_a[((3 - i_23) * 3) * 8+:8];
									result_d_btint_b_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_d_btint_b[((3 - i_23) * 3) * 8+:8];
									result_d_overflow_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 2+:2] = controller_c_out_d_overflow[((3 - i_23) * 3) * 2+:2];
								end
						end
						begin : sv2v_autoblock_16
							integer i_24;
							for (i_24 = 1; i_24 < 3; i_24 = i_24 + 1)
								begin : sv2v_autoblock_17
									integer j_6;
									for (j_6 = 2 - i_24; j_6 < 2; j_6 = j_6 + 1)
										begin
											controller_s_in_next[((3 - i_24) * 3) + (2 - (j_6 + 1))] = state_next[((3 - i_24) * 4) + (3 - (j_6 + 1))];
											state_next[((3 - i_24) * 4) + (3 - (j_6 + 1))] = controller_s_out[((3 - i_24) * 3) + (2 - j_6)];
										end
								end
						end
						begin : sv2v_autoblock_18
							integer i_25;
							for (i_25 = 0; i_25 < 2; i_25 = i_25 + 1)
								begin : sv2v_autoblock_19
									integer j_7;
									for (j_7 = 0; j_7 < (2 - i_25); j_7 = j_7 + 1)
										controller_s_in_next[((3 - i_25) * 3) + (2 - (j_7 + 1))] = controller_s_out[((3 - i_25) * 3) + (2 - j_7)];
								end
						end
						steps_next = steps_next + 1;
					end
					else if (controller_op == 1) begin
						if (index_a_next[64+:32] >= 10)
							controller_done_next = 1;
						else
							controller_done_next = 0;
						begin : sv2v_autoblock_20
							integer i_26;
							for (i_26 = 0; i_26 < 4; i_26 = i_26 + 1)
								begin
									TMP_26_value = 0;
									output_btint_a_24 = 0;
									output_btint_b_24 = 0;
									output_overflow_24 = 0;
									begin : sv2v_autoblock_21
										integer i_27;
										for (i_27 = 0; i_27 < 8; i_27 = i_27 + 1)
											begin
												output_index_12 = i_27;
												output_value_12 = 0;
												output_btint_a_25 = 0;
												output_btint_b_25 = 0;
												output_overflow_25 = 0;
												output_btint_a_25 = output_btint_a_24;
												output_btint_b_25 = output_btint_b_24;
												output_overflow_25 = output_overflow_24;
												case (0)
													0: begin
														output_btint_a_25[output_index_12] = 0;
														output_btint_b_25[output_index_12] = 1;
													end
													1: begin
														output_btint_a_25[output_index_12] = 1;
														output_btint_b_25[output_index_12] = 1;
													end
												endcase
												TMP_2_btint_a = output_btint_a_25;
												TMP_2_btint_b = output_btint_b_25;
												TMP_2_overflow = output_overflow_25;
												output_btint_a_24 = TMP_2_btint_a;
												output_btint_b_24 = TMP_2_btint_b;
												output_overflow_24 = TMP_2_overflow;
											end
									end
									TMP_26_isNegative = TMP_26_value < 0;
									TMP_26_i = 0;
									TMP_27_btint_a = output_btint_a_24;
									TMP_27_btint_b = output_btint_b_24;
									TMP_27_overflow = output_overflow_24;
									controller_c_in_u_btint_a[(((3 - i_26) * 3) + 2) * 8+:8] = TMP_27_btint_a;
									controller_c_in_u_btint_b[(((3 - i_26) * 3) + 2) * 8+:8] = TMP_27_btint_b;
									controller_c_in_u_overflow[(((3 - i_26) * 3) + 2) * 2+:2] = TMP_27_overflow;
								end
						end
						begin : sv2v_autoblock_22
							integer i_28;
							for (i_28 = 0; i_28 < 4; i_28 = i_28 + 1)
								if ((index_a_next[64+:32] >= (3 + i_28)) && (index_a_next[64+:32] < (7 + i_28))) begin
									result_u_btint_a_next[(((3 - ((index_a_next[64+:32] - 3) - i_28)) * 4) + (3 - i_28)) * 8+:8] = controller_c_out_u_btint_a[((3 - i_28) * 3) * 8+:8];
									result_u_btint_b_next[(((3 - ((index_a_next[64+:32] - 3) - i_28)) * 4) + (3 - i_28)) * 8+:8] = controller_c_out_u_btint_b[((3 - i_28) * 3) * 8+:8];
									result_u_overflow_next[(((3 - ((index_a_next[64+:32] - 3) - i_28)) * 4) + (3 - i_28)) * 2+:2] = controller_c_out_u_overflow[((3 - i_28) * 3) * 2+:2];
								end
						end
						if (!load_done_next) begin
							begin : sv2v_autoblock_23
								integer i_29;
								for (i_29 = 0; i_29 < 4; i_29 = i_29 + 1)
									controller_s_mm_next[i_29] = 0;
							end
							begin : sv2v_autoblock_24
								integer i_30;
								for (i_30 = 0; i_30 < 3; i_30 = i_30 + 1)
									begin
										controller_a_in_btint_a[(9 + (2 - i_30)) * 8+:8] = controller_m_b_btint_a[(((2 - i_30) * 4) + (0 + index_b_next)) * 8+:8];
										controller_a_in_btint_b[(9 + (2 - i_30)) * 8+:8] = controller_m_b_btint_b[(((2 - i_30) * 4) + (0 + index_b_next)) * 8+:8];
										controller_a_in_overflow[(9 + (2 - i_30)) * 2+:2] = controller_m_b_overflow[(((2 - i_30) * 4) + (0 + index_b_next)) * 2+:2];
									end
							end
							if (index_b_next >= 3) begin
								load_done_next = 1;
								begin : sv2v_autoblock_25
									integer i_31;
									for (i_31 = 0; i_31 < 4; i_31 = i_31 + 1)
										controller_s_mm_next[i_31] = 1;
								end
							end
							else
								index_b_next = index_b_next + 1;
						end
						else begin
							begin : sv2v_autoblock_26
								integer i_32;
								for (i_32 = 0; i_32 < 4; i_32 = i_32 + 1)
									controller_s_mm_next[i_32] = 0;
							end
							begin : sv2v_autoblock_27
								integer i_33;
								for (i_33 = 0; i_33 < 3; i_33 = i_33 + 1)
									if ((index_a_next[(2 - i_33) * 32+:32] < 0) || (index_a_next[(2 - i_33) * 32+:32] > 3)) begin
										TMP_28_value = 0;
										output_btint_a_26 = 0;
										output_btint_b_26 = 0;
										output_overflow_26 = 0;
										begin : sv2v_autoblock_28
											integer i_34;
											for (i_34 = 0; i_34 < 8; i_34 = i_34 + 1)
												begin
													output_index_13 = i_34;
													output_value_13 = 0;
													output_btint_a_27 = 0;
													output_btint_b_27 = 0;
													output_overflow_27 = 0;
													output_btint_a_27 = output_btint_a_26;
													output_btint_b_27 = output_btint_b_26;
													output_overflow_27 = output_overflow_26;
													case (0)
														0: begin
															output_btint_a_27[output_index_13] = 0;
															output_btint_b_27[output_index_13] = 1;
														end
														1: begin
															output_btint_a_27[output_index_13] = 1;
															output_btint_b_27[output_index_13] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_27;
													TMP_2_btint_b = output_btint_b_27;
													TMP_2_overflow = output_overflow_27;
													output_btint_a_26 = TMP_2_btint_a;
													output_btint_b_26 = TMP_2_btint_b;
													output_overflow_26 = TMP_2_overflow;
												end
										end
										TMP_28_isNegative = TMP_28_value < 0;
										TMP_28_i = 0;
										TMP_29_btint_a = output_btint_a_26;
										TMP_29_btint_b = output_btint_b_26;
										TMP_29_overflow = output_overflow_26;
										controller_a_in_btint_a[(9 + (2 - i_33)) * 8+:8] = TMP_29_btint_a;
										controller_a_in_btint_b[(9 + (2 - i_33)) * 8+:8] = TMP_29_btint_b;
										controller_a_in_overflow[(9 + (2 - i_33)) * 2+:2] = TMP_29_overflow;
									end
									else begin
										controller_a_in_btint_a[(9 + (2 - i_33)) * 8+:8] = controller_m_a_btint_a[(((3 - index_a_next[(2 - i_33) * 32+:32]) * 3) + (2 - i_33)) * 8+:8];
										controller_a_in_btint_b[(9 + (2 - i_33)) * 8+:8] = controller_m_a_btint_b[(((3 - index_a_next[(2 - i_33) * 32+:32]) * 3) + (2 - i_33)) * 8+:8];
										controller_a_in_overflow[(9 + (2 - i_33)) * 2+:2] = controller_m_a_overflow[(((3 - index_a_next[(2 - i_33) * 32+:32]) * 3) + (2 - i_33)) * 2+:2];
									end
							end
							begin : sv2v_autoblock_29
								integer i_35;
								for (i_35 = 0; i_35 < 3; i_35 = i_35 + 1)
									index_a_next[(2 - i_35) * 32+:32] = index_a_next[(2 - i_35) * 32+:32] + 1;
							end
						end
					end
					else begin
						if (index_a_next[0+:32] >= 5)
							controller_done_next = 1;
						else
							controller_done_next = 0;
						if (!load_done_next) begin
							begin : sv2v_autoblock_30
								integer i_36;
								for (i_36 = 0; i_36 < 3; i_36 = i_36 + 1)
									begin
										controller_a_in_btint_a[(9 + (2 - i_36)) * 8+:8] = controller_v_btint_a[(2 - i_36) * 8+:8];
										controller_a_in_btint_b[(9 + (2 - i_36)) * 8+:8] = controller_v_btint_b[(2 - i_36) * 8+:8];
										controller_a_in_overflow[(9 + (2 - i_36)) * 2+:2] = controller_v_overflow[(2 - i_36) * 2+:2];
									end
							end
							begin : sv2v_autoblock_31
								integer i_37;
								for (i_37 = 0; i_37 < 4; i_37 = i_37 + 1)
									controller_s_mm_next[i_37] = 1;
							end
							load_done_next = 1;
						end
						else begin
							begin : sv2v_autoblock_32
								integer i_38;
								for (i_38 = 0; i_38 < 4; i_38 = i_38 + 1)
									controller_s_mm_next[i_38] = 0;
							end
							begin : sv2v_autoblock_33
								integer i_39;
								for (i_39 = 0; i_39 < 3; i_39 = i_39 + 1)
									if ((index_a_next[(2 - i_39) * 32+:32] < 0) || (index_a_next[(2 - i_39) * 32+:32] > 3)) begin
										TMP_30_value = 0;
										output_btint_a_28 = 0;
										output_btint_b_28 = 0;
										output_overflow_28 = 0;
										begin : sv2v_autoblock_34
											integer i_40;
											for (i_40 = 0; i_40 < 8; i_40 = i_40 + 1)
												begin
													output_index_14 = i_40;
													output_value_14 = 0;
													output_btint_a_29 = 0;
													output_btint_b_29 = 0;
													output_overflow_29 = 0;
													output_btint_a_29 = output_btint_a_28;
													output_btint_b_29 = output_btint_b_28;
													output_overflow_29 = output_overflow_28;
													case (0)
														0: begin
															output_btint_a_29[output_index_14] = 0;
															output_btint_b_29[output_index_14] = 1;
														end
														1: begin
															output_btint_a_29[output_index_14] = 1;
															output_btint_b_29[output_index_14] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_29;
													TMP_2_btint_b = output_btint_b_29;
													TMP_2_overflow = output_overflow_29;
													output_btint_a_28 = TMP_2_btint_a;
													output_btint_b_28 = TMP_2_btint_b;
													output_overflow_28 = TMP_2_overflow;
												end
										end
										TMP_30_isNegative = TMP_30_value < 0;
										TMP_30_i = 0;
										TMP_31_btint_a = output_btint_a_28;
										TMP_31_btint_b = output_btint_b_28;
										TMP_31_overflow = output_overflow_28;
										controller_a_in_btint_a[(9 + (2 - i_39)) * 8+:8] = TMP_31_btint_a;
										controller_a_in_btint_b[(9 + (2 - i_39)) * 8+:8] = TMP_31_btint_b;
										controller_a_in_overflow[(9 + (2 - i_39)) * 2+:2] = TMP_31_overflow;
									end
									else begin
										controller_a_in_btint_a[(9 + (2 - i_39)) * 8+:8] = controller_m_a_btint_a[(((3 - index_a_next[(2 - i_39) * 32+:32]) * 3) + (2 - i_39)) * 8+:8];
										controller_a_in_btint_b[(9 + (2 - i_39)) * 8+:8] = controller_m_a_btint_b[(((3 - index_a_next[(2 - i_39) * 32+:32]) * 3) + (2 - i_39)) * 8+:8];
										controller_a_in_overflow[(9 + (2 - i_39)) * 2+:2] = controller_m_a_overflow[(((3 - index_a_next[(2 - i_39) * 32+:32]) * 3) + (2 - i_39)) * 2+:2];
									end
							end
							begin : sv2v_autoblock_35
								integer i_41;
								for (i_41 = 0; i_41 < 4; i_41 = i_41 + 1)
									begin
										TMP_32_value = 0;
										output_btint_a_30 = 0;
										output_btint_b_30 = 0;
										output_overflow_30 = 0;
										begin : sv2v_autoblock_36
											integer i_42;
											for (i_42 = 0; i_42 < 8; i_42 = i_42 + 1)
												begin
													output_index_15 = i_42;
													output_value_15 = 0;
													output_btint_a_31 = 0;
													output_btint_b_31 = 0;
													output_overflow_31 = 0;
													output_btint_a_31 = output_btint_a_30;
													output_btint_b_31 = output_btint_b_30;
													output_overflow_31 = output_overflow_30;
													case (0)
														0: begin
															output_btint_a_31[output_index_15] = 0;
															output_btint_b_31[output_index_15] = 1;
														end
														1: begin
															output_btint_a_31[output_index_15] = 1;
															output_btint_b_31[output_index_15] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_31;
													TMP_2_btint_b = output_btint_b_31;
													TMP_2_overflow = output_overflow_31;
													output_btint_a_30 = TMP_2_btint_a;
													output_btint_b_30 = TMP_2_btint_b;
													output_overflow_30 = TMP_2_overflow;
												end
										end
										TMP_32_isNegative = TMP_32_value < 0;
										TMP_32_i = 0;
										TMP_33_btint_a = output_btint_a_30;
										TMP_33_btint_b = output_btint_b_30;
										TMP_33_overflow = output_overflow_30;
										controller_c_in_u_btint_a[(((3 - i_41) * 3) + 2) * 8+:8] = TMP_33_btint_a;
										controller_c_in_u_btint_b[(((3 - i_41) * 3) + 2) * 8+:8] = TMP_33_btint_b;
										controller_c_in_u_overflow[(((3 - i_41) * 3) + 2) * 2+:2] = TMP_33_overflow;
									end
							end
							if ((index_a_next[0+:32] >= 1) && (index_a_next[0+:32] <= 4)) begin
								result_u_btint_a_next[(((4 - index_a_next[0+:32]) * 4) + 3) * 8+:8] = controller_c_out_u_btint_a[72+:8];
								result_u_btint_b_next[(((4 - index_a_next[0+:32]) * 4) + 3) * 8+:8] = controller_c_out_u_btint_b[72+:8];
								result_u_overflow_next[(((4 - index_a_next[0+:32]) * 4) + 3) * 2+:2] = controller_c_out_u_overflow[18+:2];
							end
							begin : sv2v_autoblock_37
								integer i_43;
								for (i_43 = 0; i_43 < 3; i_43 = i_43 + 1)
									index_a_next[(2 - i_43) * 32+:32] = index_a_next[(2 - i_43) * 32+:32] + 1;
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
						begin : sv2v_autoblock_38
							integer i_12;
							for (i_12 = 0; i_12 < 4; i_12 = i_12 + 1)
								begin : sv2v_autoblock_39
									integer j_3;
									for (j_3 = 0; j_3 < 4; j_3 = j_3 + 1)
										begin
											controller_result_u_btint_a[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_u_btint_a_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
											controller_result_u_btint_b[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_u_btint_b_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
											controller_result_u_overflow[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2] = result_u_overflow_next[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2];
											controller_result_d_btint_a[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_d_btint_a_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
											controller_result_d_btint_b[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8] = result_d_btint_b_next[(((3 - i_12) * 4) + (3 - j_3)) * 8+:8];
											controller_result_d_overflow[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2] = result_d_overflow_next[(((3 - i_12) * 4) + (3 - j_3)) * 2+:2];
										end
								end
						end
						begin : sv2v_autoblock_40
							integer i_13;
							for (i_13 = 0; i_13 < 3; i_13 = i_13 + 1)
								begin : sv2v_autoblock_41
									integer j_4;
									for (j_4 = 0; j_4 < 3; j_4 = j_4 + 1)
										begin
											controller_a_in_btint_a[(((3 - (j_4 + 1)) * 3) + (2 - i_13)) * 8+:8] = controller_a_out_btint_a[(((3 - j_4) * 3) + (2 - i_13)) * 8+:8];
											controller_a_in_btint_b[(((3 - (j_4 + 1)) * 3) + (2 - i_13)) * 8+:8] = controller_a_out_btint_b[(((3 - j_4) * 3) + (2 - i_13)) * 8+:8];
											controller_a_in_overflow[(((3 - (j_4 + 1)) * 3) + (2 - i_13)) * 2+:2] = controller_a_out_overflow[(((3 - j_4) * 3) + (2 - i_13)) * 2+:2];
										end
								end
						end
						begin : sv2v_autoblock_42
							integer i_14;
							for (i_14 = 0; i_14 < 4; i_14 = i_14 + 1)
								begin : sv2v_autoblock_43
									integer j_5;
									for (j_5 = 0; j_5 < 2; j_5 = j_5 + 1)
										begin
											controller_c_in_u_btint_a[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_u_btint_a[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
											controller_c_in_u_btint_b[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_u_btint_b[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
											controller_c_in_u_overflow[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 2+:2] = controller_c_out_u_overflow[(((3 - i_14) * 3) + (2 - j_5)) * 2+:2];
											controller_c_in_d_btint_a[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_d_btint_a[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
											controller_c_in_d_btint_b[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 8+:8] = controller_c_out_d_btint_b[(((3 - i_14) * 3) + (2 - j_5)) * 8+:8];
											controller_c_in_d_overflow[(((3 - i_14) * 3) + (2 - (j_5 + 1))) * 2+:2] = controller_c_out_d_overflow[(((3 - i_14) * 3) + (2 - j_5)) * 2+:2];
										end
								end
						end
						if (controller_op == 0) begin
							begin : sv2v_autoblock_44
								integer i_15;
								for (i_15 = 0; i_15 < 3; i_15 = i_15 + 1)
									if (steps_next >= (4 - i_15))
										controller_s_mm_next[i_15] = 1;
									else
										controller_s_mm_next[i_15] = 0;
							end
							if (steps_next >= 8)
								controller_done_next = 1;
							else
								controller_done_next = 0;
							begin : sv2v_autoblock_45
								integer i_16;
								for (i_16 = 0; i_16 < 3; i_16 = i_16 + 1)
									if (steps_next != 2) begin
										controller_s_in_next[((3 - i_16) * 3) + 2] = 0;
										TMP_34_value = 0;
										output_btint_a_32 = 0;
										output_btint_b_32 = 0;
										output_overflow_32 = 0;
										begin : sv2v_autoblock_46
											integer i_44;
											for (i_44 = 0; i_44 < 8; i_44 = i_44 + 1)
												begin
													output_index_16 = i_44;
													output_value_16 = 0;
													output_btint_a_33 = 0;
													output_btint_b_33 = 0;
													output_overflow_33 = 0;
													output_btint_a_33 = output_btint_a_32;
													output_btint_b_33 = output_btint_b_32;
													output_overflow_33 = output_overflow_32;
													case (0)
														0: begin
															output_btint_a_33[output_index_16] = 0;
															output_btint_b_33[output_index_16] = 1;
														end
														1: begin
															output_btint_a_33[output_index_16] = 1;
															output_btint_b_33[output_index_16] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_33;
													TMP_2_btint_b = output_btint_b_33;
													TMP_2_overflow = output_overflow_33;
													output_btint_a_32 = TMP_2_btint_a;
													output_btint_b_32 = TMP_2_btint_b;
													output_overflow_32 = TMP_2_overflow;
												end
										end
										TMP_34_isNegative = TMP_34_value < 0;
										TMP_34_i = 0;
										TMP_16_btint_a = output_btint_a_32;
										TMP_16_btint_b = output_btint_b_32;
										TMP_16_overflow = output_overflow_32;
										controller_c_in_u_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_16_btint_a;
										controller_c_in_u_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_16_btint_b;
										controller_c_in_u_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_16_overflow;
										TMP_35_value = 0;
										output_btint_a_34 = 0;
										output_btint_b_34 = 0;
										output_overflow_34 = 0;
										begin : sv2v_autoblock_47
											integer i_45;
											for (i_45 = 0; i_45 < 8; i_45 = i_45 + 1)
												begin
													output_index_17 = i_45;
													output_value_17 = 0;
													output_btint_a_35 = 0;
													output_btint_b_35 = 0;
													output_overflow_35 = 0;
													output_btint_a_35 = output_btint_a_34;
													output_btint_b_35 = output_btint_b_34;
													output_overflow_35 = output_overflow_34;
													case (0)
														0: begin
															output_btint_a_35[output_index_17] = 0;
															output_btint_b_35[output_index_17] = 1;
														end
														1: begin
															output_btint_a_35[output_index_17] = 1;
															output_btint_b_35[output_index_17] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_35;
													TMP_2_btint_b = output_btint_b_35;
													TMP_2_overflow = output_overflow_35;
													output_btint_a_34 = TMP_2_btint_a;
													output_btint_b_34 = TMP_2_btint_b;
													output_overflow_34 = TMP_2_overflow;
												end
										end
										TMP_35_isNegative = TMP_35_value < 0;
										TMP_35_i = 0;
										TMP_18_btint_a = output_btint_a_34;
										TMP_18_btint_b = output_btint_b_34;
										TMP_18_overflow = output_overflow_34;
										controller_c_in_d_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_18_btint_a;
										controller_c_in_d_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_18_btint_b;
										controller_c_in_d_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_18_overflow;
									end
									else begin
										controller_s_in_next[((3 - i_16) * 3) + 2] = 1;
										TMP_36_value = 1;
										output_btint_a_36 = 0;
										output_btint_b_36 = 0;
										output_overflow_36 = 0;
										begin : sv2v_autoblock_48
											integer i_46;
											for (i_46 = 0; i_46 < 8; i_46 = i_46 + 1)
												begin
													output_index_18 = i_46;
													output_value_18 = 0;
													output_btint_a_37 = 0;
													output_btint_b_37 = 0;
													output_overflow_37 = 0;
													output_btint_a_37 = output_btint_a_36;
													output_btint_b_37 = output_btint_b_36;
													output_overflow_37 = output_overflow_36;
													case (0)
														0: begin
															output_btint_a_37[output_index_18] = 0;
															output_btint_b_37[output_index_18] = 1;
														end
														1: begin
															output_btint_a_37[output_index_18] = 1;
															output_btint_b_37[output_index_18] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_37;
													TMP_2_btint_b = output_btint_b_37;
													TMP_2_overflow = output_overflow_37;
													output_btint_a_36 = TMP_2_btint_a;
													output_btint_b_36 = TMP_2_btint_b;
													output_overflow_36 = TMP_2_overflow;
												end
										end
										TMP_36_isNegative = TMP_36_value < 0;
										TMP_36_i = 0;
										while (|TMP_36_value) begin
											TMP_36_i = TMP_36_i + 1;
											output_index_18 = TMP_36_i + 1'sd1;
											output_value_18 = 1;
											output_btint_a_37 = 0;
											output_btint_b_37 = 0;
											output_overflow_37 = 0;
											output_btint_a_37 = output_btint_a_36;
											output_btint_b_37 = output_btint_b_36;
											output_overflow_37 = output_overflow_36;
											case (1)
												0: begin
													output_btint_a_37[output_index_18] = 0;
													output_btint_b_37[output_index_18] = 1;
												end
												1: begin
													output_btint_a_37[output_index_18] = 1;
													output_btint_b_37[output_index_18] = 1;
												end
											endcase
											TMP_21_btint_a = output_btint_a_37;
											TMP_21_btint_b = output_btint_b_37;
											TMP_21_overflow = output_overflow_37;
											output_btint_a_36 = TMP_21_btint_a;
											output_btint_b_36 = TMP_21_btint_b;
											output_overflow_36 = TMP_21_overflow;
											TMP_36_value = TMP_36_value - 1;
											TMP_36_value = TMP_36_value / 2;
										end
										TMP_20_btint_a = output_btint_a_36;
										TMP_20_btint_b = output_btint_b_36;
										TMP_20_overflow = output_overflow_36;
										controller_c_in_u_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_20_btint_a;
										controller_c_in_u_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_20_btint_b;
										controller_c_in_u_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_20_overflow;
										TMP_37_value = 1;
										output_btint_a_38 = 0;
										output_btint_b_38 = 0;
										output_overflow_38 = 0;
										begin : sv2v_autoblock_49
											integer i_47;
											for (i_47 = 0; i_47 < 8; i_47 = i_47 + 1)
												begin
													output_index_19 = i_47;
													output_value_19 = 0;
													output_btint_a_39 = 0;
													output_btint_b_39 = 0;
													output_overflow_39 = 0;
													output_btint_a_39 = output_btint_a_38;
													output_btint_b_39 = output_btint_b_38;
													output_overflow_39 = output_overflow_38;
													case (0)
														0: begin
															output_btint_a_39[output_index_19] = 0;
															output_btint_b_39[output_index_19] = 1;
														end
														1: begin
															output_btint_a_39[output_index_19] = 1;
															output_btint_b_39[output_index_19] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_39;
													TMP_2_btint_b = output_btint_b_39;
													TMP_2_overflow = output_overflow_39;
													output_btint_a_38 = TMP_2_btint_a;
													output_btint_b_38 = TMP_2_btint_b;
													output_overflow_38 = TMP_2_overflow;
												end
										end
										TMP_37_isNegative = TMP_37_value < 0;
										TMP_37_i = 0;
										while (|TMP_37_value) begin
											TMP_37_i = TMP_37_i + 1;
											output_index_19 = TMP_37_i + 1'sd1;
											output_value_19 = 1;
											output_btint_a_39 = 0;
											output_btint_b_39 = 0;
											output_overflow_39 = 0;
											output_btint_a_39 = output_btint_a_38;
											output_btint_b_39 = output_btint_b_38;
											output_overflow_39 = output_overflow_38;
											case (1)
												0: begin
													output_btint_a_39[output_index_19] = 0;
													output_btint_b_39[output_index_19] = 1;
												end
												1: begin
													output_btint_a_39[output_index_19] = 1;
													output_btint_b_39[output_index_19] = 1;
												end
											endcase
											TMP_21_btint_a = output_btint_a_39;
											TMP_21_btint_b = output_btint_b_39;
											TMP_21_overflow = output_overflow_39;
											output_btint_a_38 = TMP_21_btint_a;
											output_btint_b_38 = TMP_21_btint_b;
											output_overflow_38 = TMP_21_overflow;
											TMP_37_value = TMP_37_value - 1;
											TMP_37_value = TMP_37_value / 2;
										end
										TMP_23_btint_a = output_btint_a_38;
										TMP_23_btint_b = output_btint_b_38;
										TMP_23_overflow = output_overflow_38;
										controller_c_in_d_btint_a[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_23_btint_a;
										controller_c_in_d_btint_b[(((3 - i_16) * 3) + 2) * 8+:8] = TMP_23_btint_b;
										controller_c_in_d_overflow[(((3 - i_16) * 3) + 2) * 2+:2] = TMP_23_overflow;
									end
							end
							k = 0;
							begin : sv2v_autoblock_50
								integer i_21;
								for (i_21 = 0; i_21 < 3; i_21 = i_21 + 1)
									begin
										if ((steps_next >= (0 + k)) && (steps_next < (3 + i_21))) begin
											controller_a_in_btint_a[(9 + (2 - i_21)) * 8+:8] = controller_m_a_btint_a[(((3 - ((2 - steps_next) + i_21)) * 3) + (0 + i_21)) * 8+:8];
											controller_a_in_btint_b[(9 + (2 - i_21)) * 8+:8] = controller_m_a_btint_b[(((3 - ((2 - steps_next) + i_21)) * 3) + (0 + i_21)) * 8+:8];
											controller_a_in_overflow[(9 + (2 - i_21)) * 2+:2] = controller_m_a_overflow[(((3 - ((2 - steps_next) + i_21)) * 3) + (0 + i_21)) * 2+:2];
										end
										else begin
											TMP_38_value = 0;
											output_btint_a_40 = 0;
											output_btint_b_40 = 0;
											output_overflow_40 = 0;
											begin : sv2v_autoblock_51
												integer i_48;
												for (i_48 = 0; i_48 < 8; i_48 = i_48 + 1)
													begin
														output_index_20 = i_48;
														output_value_20 = 0;
														output_btint_a_41 = 0;
														output_btint_b_41 = 0;
														output_overflow_41 = 0;
														output_btint_a_41 = output_btint_a_40;
														output_btint_b_41 = output_btint_b_40;
														output_overflow_41 = output_overflow_40;
														case (0)
															0: begin
																output_btint_a_41[output_index_20] = 0;
																output_btint_b_41[output_index_20] = 1;
															end
															1: begin
																output_btint_a_41[output_index_20] = 1;
																output_btint_b_41[output_index_20] = 1;
															end
														endcase
														TMP_2_btint_a = output_btint_a_41;
														TMP_2_btint_b = output_btint_b_41;
														TMP_2_overflow = output_overflow_41;
														output_btint_a_40 = TMP_2_btint_a;
														output_btint_b_40 = TMP_2_btint_b;
														output_overflow_40 = TMP_2_overflow;
													end
											end
											TMP_38_isNegative = TMP_38_value < 0;
											TMP_38_i = 0;
											TMP_25_btint_a = output_btint_a_40;
											TMP_25_btint_b = output_btint_b_40;
											TMP_25_overflow = output_overflow_40;
											controller_a_in_btint_a[(9 + (2 - i_21)) * 8+:8] = TMP_25_btint_a;
											controller_a_in_btint_b[(9 + (2 - i_21)) * 8+:8] = TMP_25_btint_b;
											controller_a_in_overflow[(9 + (2 - i_21)) * 2+:2] = TMP_25_overflow;
										end
										k = k + 2;
									end
							end
							begin : sv2v_autoblock_52
								integer i_23;
								for (i_23 = 0; i_23 < 3; i_23 = i_23 + 1)
									if ((steps_next >= 5) && (steps_next < (6 + i_23))) begin
										result_u_btint_a_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_u_btint_a[((3 - i_23) * 3) * 8+:8];
										result_u_btint_b_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_u_btint_b[((3 - i_23) * 3) * 8+:8];
										result_u_overflow_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 2+:2] = controller_c_out_u_overflow[((3 - i_23) * 3) * 2+:2];
										result_d_btint_a_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_d_btint_a[((3 - i_23) * 3) * 8+:8];
										result_d_btint_b_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 8+:8] = controller_c_out_d_btint_b[((3 - i_23) * 3) * 8+:8];
										result_d_overflow_next[(((3 - ((5 - steps_next) + i_23)) * 4) + (3 - i_23)) * 2+:2] = controller_c_out_d_overflow[((3 - i_23) * 3) * 2+:2];
									end
							end
							begin : sv2v_autoblock_53
								integer i_24;
								for (i_24 = 1; i_24 < 3; i_24 = i_24 + 1)
									begin : sv2v_autoblock_54
										integer j_6;
										for (j_6 = 2 - i_24; j_6 < 2; j_6 = j_6 + 1)
											begin
												controller_s_in_next[((3 - i_24) * 3) + (2 - (j_6 + 1))] = state_next[((3 - i_24) * 4) + (3 - (j_6 + 1))];
												state_next[((3 - i_24) * 4) + (3 - (j_6 + 1))] = controller_s_out[((3 - i_24) * 3) + (2 - j_6)];
											end
									end
							end
							begin : sv2v_autoblock_55
								integer i_25;
								for (i_25 = 0; i_25 < 2; i_25 = i_25 + 1)
									begin : sv2v_autoblock_56
										integer j_7;
										for (j_7 = 0; j_7 < (2 - i_25); j_7 = j_7 + 1)
											controller_s_in_next[((3 - i_25) * 3) + (2 - (j_7 + 1))] = controller_s_out[((3 - i_25) * 3) + (2 - j_7)];
									end
							end
							steps_next = steps_next + 1;
						end
						else if (controller_op == 1) begin
							if (index_a_next[64+:32] >= 10)
								controller_done_next = 1;
							else
								controller_done_next = 0;
							begin : sv2v_autoblock_57
								integer i_26;
								for (i_26 = 0; i_26 < 4; i_26 = i_26 + 1)
									begin
										TMP_39_value = 0;
										output_btint_a_42 = 0;
										output_btint_b_42 = 0;
										output_overflow_42 = 0;
										begin : sv2v_autoblock_58
											integer i_49;
											for (i_49 = 0; i_49 < 8; i_49 = i_49 + 1)
												begin
													output_index_21 = i_49;
													output_value_21 = 0;
													output_btint_a_43 = 0;
													output_btint_b_43 = 0;
													output_overflow_43 = 0;
													output_btint_a_43 = output_btint_a_42;
													output_btint_b_43 = output_btint_b_42;
													output_overflow_43 = output_overflow_42;
													case (0)
														0: begin
															output_btint_a_43[output_index_21] = 0;
															output_btint_b_43[output_index_21] = 1;
														end
														1: begin
															output_btint_a_43[output_index_21] = 1;
															output_btint_b_43[output_index_21] = 1;
														end
													endcase
													TMP_2_btint_a = output_btint_a_43;
													TMP_2_btint_b = output_btint_b_43;
													TMP_2_overflow = output_overflow_43;
													output_btint_a_42 = TMP_2_btint_a;
													output_btint_b_42 = TMP_2_btint_b;
													output_overflow_42 = TMP_2_overflow;
												end
										end
										TMP_39_isNegative = TMP_39_value < 0;
										TMP_39_i = 0;
										TMP_27_btint_a = output_btint_a_42;
										TMP_27_btint_b = output_btint_b_42;
										TMP_27_overflow = output_overflow_42;
										controller_c_in_u_btint_a[(((3 - i_26) * 3) + 2) * 8+:8] = TMP_27_btint_a;
										controller_c_in_u_btint_b[(((3 - i_26) * 3) + 2) * 8+:8] = TMP_27_btint_b;
										controller_c_in_u_overflow[(((3 - i_26) * 3) + 2) * 2+:2] = TMP_27_overflow;
									end
							end
							begin : sv2v_autoblock_59
								integer i_28;
								for (i_28 = 0; i_28 < 4; i_28 = i_28 + 1)
									if ((index_a_next[64+:32] >= (3 + i_28)) && (index_a_next[64+:32] < (7 + i_28))) begin
										result_u_btint_a_next[(((3 - ((index_a_next[64+:32] - 3) - i_28)) * 4) + (3 - i_28)) * 8+:8] = controller_c_out_u_btint_a[((3 - i_28) * 3) * 8+:8];
										result_u_btint_b_next[(((3 - ((index_a_next[64+:32] - 3) - i_28)) * 4) + (3 - i_28)) * 8+:8] = controller_c_out_u_btint_b[((3 - i_28) * 3) * 8+:8];
										result_u_overflow_next[(((3 - ((index_a_next[64+:32] - 3) - i_28)) * 4) + (3 - i_28)) * 2+:2] = controller_c_out_u_overflow[((3 - i_28) * 3) * 2+:2];
									end
							end
							if (!load_done_next) begin
								begin : sv2v_autoblock_60
									integer i_29;
									for (i_29 = 0; i_29 < 4; i_29 = i_29 + 1)
										controller_s_mm_next[i_29] = 0;
								end
								begin : sv2v_autoblock_61
									integer i_30;
									for (i_30 = 0; i_30 < 3; i_30 = i_30 + 1)
										begin
											controller_a_in_btint_a[(9 + (2 - i_30)) * 8+:8] = controller_m_b_btint_a[(((2 - i_30) * 4) + (0 + index_b_next)) * 8+:8];
											controller_a_in_btint_b[(9 + (2 - i_30)) * 8+:8] = controller_m_b_btint_b[(((2 - i_30) * 4) + (0 + index_b_next)) * 8+:8];
											controller_a_in_overflow[(9 + (2 - i_30)) * 2+:2] = controller_m_b_overflow[(((2 - i_30) * 4) + (0 + index_b_next)) * 2+:2];
										end
								end
								if (index_b_next >= 3) begin
									load_done_next = 1;
									begin : sv2v_autoblock_62
										integer i_31;
										for (i_31 = 0; i_31 < 4; i_31 = i_31 + 1)
											controller_s_mm_next[i_31] = 1;
									end
								end
								else
									index_b_next = index_b_next + 1;
							end
							else begin
								begin : sv2v_autoblock_63
									integer i_32;
									for (i_32 = 0; i_32 < 4; i_32 = i_32 + 1)
										controller_s_mm_next[i_32] = 0;
								end
								begin : sv2v_autoblock_64
									integer i_33;
									for (i_33 = 0; i_33 < 3; i_33 = i_33 + 1)
										if ((index_a_next[(2 - i_33) * 32+:32] < 0) || (index_a_next[(2 - i_33) * 32+:32] > 3)) begin
											TMP_40_value = 0;
											output_btint_a_44 = 0;
											output_btint_b_44 = 0;
											output_overflow_44 = 0;
											begin : sv2v_autoblock_65
												integer i_50;
												for (i_50 = 0; i_50 < 8; i_50 = i_50 + 1)
													begin
														output_index_22 = i_50;
														output_value_22 = 0;
														output_btint_a_45 = 0;
														output_btint_b_45 = 0;
														output_overflow_45 = 0;
														output_btint_a_45 = output_btint_a_44;
														output_btint_b_45 = output_btint_b_44;
														output_overflow_45 = output_overflow_44;
														case (0)
															0: begin
																output_btint_a_45[output_index_22] = 0;
																output_btint_b_45[output_index_22] = 1;
															end
															1: begin
																output_btint_a_45[output_index_22] = 1;
																output_btint_b_45[output_index_22] = 1;
															end
														endcase
														TMP_2_btint_a = output_btint_a_45;
														TMP_2_btint_b = output_btint_b_45;
														TMP_2_overflow = output_overflow_45;
														output_btint_a_44 = TMP_2_btint_a;
														output_btint_b_44 = TMP_2_btint_b;
														output_overflow_44 = TMP_2_overflow;
													end
											end
											TMP_40_isNegative = TMP_40_value < 0;
											TMP_40_i = 0;
											TMP_29_btint_a = output_btint_a_44;
											TMP_29_btint_b = output_btint_b_44;
											TMP_29_overflow = output_overflow_44;
											controller_a_in_btint_a[(9 + (2 - i_33)) * 8+:8] = TMP_29_btint_a;
											controller_a_in_btint_b[(9 + (2 - i_33)) * 8+:8] = TMP_29_btint_b;
											controller_a_in_overflow[(9 + (2 - i_33)) * 2+:2] = TMP_29_overflow;
										end
										else begin
											controller_a_in_btint_a[(9 + (2 - i_33)) * 8+:8] = controller_m_a_btint_a[(((3 - index_a_next[(2 - i_33) * 32+:32]) * 3) + (2 - i_33)) * 8+:8];
											controller_a_in_btint_b[(9 + (2 - i_33)) * 8+:8] = controller_m_a_btint_b[(((3 - index_a_next[(2 - i_33) * 32+:32]) * 3) + (2 - i_33)) * 8+:8];
											controller_a_in_overflow[(9 + (2 - i_33)) * 2+:2] = controller_m_a_overflow[(((3 - index_a_next[(2 - i_33) * 32+:32]) * 3) + (2 - i_33)) * 2+:2];
										end
								end
								begin : sv2v_autoblock_66
									integer i_35;
									for (i_35 = 0; i_35 < 3; i_35 = i_35 + 1)
										index_a_next[(2 - i_35) * 32+:32] = index_a_next[(2 - i_35) * 32+:32] + 1;
								end
							end
						end
						else begin
							if (index_a_next[0+:32] >= 5)
								controller_done_next = 1;
							else
								controller_done_next = 0;
							if (!load_done_next) begin
								begin : sv2v_autoblock_67
									integer i_36;
									for (i_36 = 0; i_36 < 3; i_36 = i_36 + 1)
										begin
											controller_a_in_btint_a[(9 + (2 - i_36)) * 8+:8] = controller_v_btint_a[(2 - i_36) * 8+:8];
											controller_a_in_btint_b[(9 + (2 - i_36)) * 8+:8] = controller_v_btint_b[(2 - i_36) * 8+:8];
											controller_a_in_overflow[(9 + (2 - i_36)) * 2+:2] = controller_v_overflow[(2 - i_36) * 2+:2];
										end
								end
								begin : sv2v_autoblock_68
									integer i_37;
									for (i_37 = 0; i_37 < 4; i_37 = i_37 + 1)
										controller_s_mm_next[i_37] = 1;
								end
								load_done_next = 1;
							end
							else begin
								begin : sv2v_autoblock_69
									integer i_38;
									for (i_38 = 0; i_38 < 4; i_38 = i_38 + 1)
										controller_s_mm_next[i_38] = 0;
								end
								begin : sv2v_autoblock_70
									integer i_39;
									for (i_39 = 0; i_39 < 3; i_39 = i_39 + 1)
										if ((index_a_next[(2 - i_39) * 32+:32] < 0) || (index_a_next[(2 - i_39) * 32+:32] > 3)) begin
											TMP_41_value = 0;
											output_btint_a_46 = 0;
											output_btint_b_46 = 0;
											output_overflow_46 = 0;
											begin : sv2v_autoblock_71
												integer i_51;
												for (i_51 = 0; i_51 < 8; i_51 = i_51 + 1)
													begin
														output_index_23 = i_51;
														output_value_23 = 0;
														output_btint_a_47 = 0;
														output_btint_b_47 = 0;
														output_overflow_47 = 0;
														output_btint_a_47 = output_btint_a_46;
														output_btint_b_47 = output_btint_b_46;
														output_overflow_47 = output_overflow_46;
														case (0)
															0: begin
																output_btint_a_47[output_index_23] = 0;
																output_btint_b_47[output_index_23] = 1;
															end
															1: begin
																output_btint_a_47[output_index_23] = 1;
																output_btint_b_47[output_index_23] = 1;
															end
														endcase
														TMP_2_btint_a = output_btint_a_47;
														TMP_2_btint_b = output_btint_b_47;
														TMP_2_overflow = output_overflow_47;
														output_btint_a_46 = TMP_2_btint_a;
														output_btint_b_46 = TMP_2_btint_b;
														output_overflow_46 = TMP_2_overflow;
													end
											end
											TMP_41_isNegative = TMP_41_value < 0;
											TMP_41_i = 0;
											TMP_31_btint_a = output_btint_a_46;
											TMP_31_btint_b = output_btint_b_46;
											TMP_31_overflow = output_overflow_46;
											controller_a_in_btint_a[(9 + (2 - i_39)) * 8+:8] = TMP_31_btint_a;
											controller_a_in_btint_b[(9 + (2 - i_39)) * 8+:8] = TMP_31_btint_b;
											controller_a_in_overflow[(9 + (2 - i_39)) * 2+:2] = TMP_31_overflow;
										end
										else begin
											controller_a_in_btint_a[(9 + (2 - i_39)) * 8+:8] = controller_m_a_btint_a[(((3 - index_a_next[(2 - i_39) * 32+:32]) * 3) + (2 - i_39)) * 8+:8];
											controller_a_in_btint_b[(9 + (2 - i_39)) * 8+:8] = controller_m_a_btint_b[(((3 - index_a_next[(2 - i_39) * 32+:32]) * 3) + (2 - i_39)) * 8+:8];
											controller_a_in_overflow[(9 + (2 - i_39)) * 2+:2] = controller_m_a_overflow[(((3 - index_a_next[(2 - i_39) * 32+:32]) * 3) + (2 - i_39)) * 2+:2];
										end
								end
								begin : sv2v_autoblock_72
									integer i_41;
									for (i_41 = 0; i_41 < 4; i_41 = i_41 + 1)
										begin
											TMP_42_value = 0;
											output_btint_a_48 = 0;
											output_btint_b_48 = 0;
											output_overflow_48 = 0;
											begin : sv2v_autoblock_73
												integer i_52;
												for (i_52 = 0; i_52 < 8; i_52 = i_52 + 1)
													begin
														output_index_24 = i_52;
														output_value_24 = 0;
														output_btint_a_49 = 0;
														output_btint_b_49 = 0;
														output_overflow_49 = 0;
														output_btint_a_49 = output_btint_a_48;
														output_btint_b_49 = output_btint_b_48;
														output_overflow_49 = output_overflow_48;
														case (0)
															0: begin
																output_btint_a_49[output_index_24] = 0;
																output_btint_b_49[output_index_24] = 1;
															end
															1: begin
																output_btint_a_49[output_index_24] = 1;
																output_btint_b_49[output_index_24] = 1;
															end
														endcase
														TMP_2_btint_a = output_btint_a_49;
														TMP_2_btint_b = output_btint_b_49;
														TMP_2_overflow = output_overflow_49;
														output_btint_a_48 = TMP_2_btint_a;
														output_btint_b_48 = TMP_2_btint_b;
														output_overflow_48 = TMP_2_overflow;
													end
											end
											TMP_42_isNegative = TMP_42_value < 0;
											TMP_42_i = 0;
											TMP_33_btint_a = output_btint_a_48;
											TMP_33_btint_b = output_btint_b_48;
											TMP_33_overflow = output_overflow_48;
											controller_c_in_u_btint_a[(((3 - i_41) * 3) + 2) * 8+:8] = TMP_33_btint_a;
											controller_c_in_u_btint_b[(((3 - i_41) * 3) + 2) * 8+:8] = TMP_33_btint_b;
											controller_c_in_u_overflow[(((3 - i_41) * 3) + 2) * 2+:2] = TMP_33_overflow;
										end
								end
								if ((index_a_next[0+:32] >= 1) && (index_a_next[0+:32] <= 4)) begin
									result_u_btint_a_next[(((4 - index_a_next[0+:32]) * 4) + 3) * 8+:8] = controller_c_out_u_btint_a[72+:8];
									result_u_btint_b_next[(((4 - index_a_next[0+:32]) * 4) + 3) * 8+:8] = controller_c_out_u_btint_b[72+:8];
									result_u_overflow_next[(((4 - index_a_next[0+:32]) * 4) + 3) * 2+:2] = controller_c_out_u_overflow[18+:2];
								end
								begin : sv2v_autoblock_74
									integer i_43;
									for (i_43 = 0; i_43 < 3; i_43 = i_43 + 1)
										index_a_next[(2 - i_43) * 32+:32] = index_a_next[(2 - i_43) * 32+:32] + 1;
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
	always @(controller_c_out_u_overflow[18+:2] or index_a_next[0+:32] or controller_c_out_u_btint_b[72+:8] or index_a_next[0+:32] or controller_c_out_u_btint_a[72+:8] or index_a_next[0+:32] or index_a_next[0+:32] or index_a_next[0+:32] or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or index_a_next or index_a_next or controller_v_overflow or controller_v_btint_b or controller_v_btint_a or load_done_next or index_a_next[0+:32] or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or index_a_next or index_a_next or index_b_next or index_b_next or controller_m_b_overflow or index_b_next or controller_m_b_btint_b or index_b_next or controller_m_b_btint_a or load_done_next or controller_c_out_u_overflow or index_a_next[64+:32] or controller_c_out_u_btint_b or index_a_next[64+:32] or controller_c_out_u_btint_a or index_a_next[64+:32] or index_a_next[64+:32] or index_a_next[64+:32] or index_a_next[64+:32] or controller_op or controller_s_out or controller_s_out or state_next or controller_c_out_d_overflow or steps_next or controller_c_out_d_btint_b or steps_next or controller_c_out_d_btint_a or steps_next or controller_c_out_u_overflow or steps_next or controller_c_out_u_btint_b or steps_next or controller_c_out_u_btint_a or steps_next or steps_next or steps_next or steps_next or controller_m_a_overflow or steps_next or controller_m_a_btint_b or steps_next or controller_m_a_btint_a or steps_next or steps_next or steps_next or steps_next or steps_next or controller_op or controller_c_out_d_overflow or controller_c_out_d_btint_b or controller_c_out_d_btint_a or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or result_d_overflow_next or result_d_btint_b_next or result_d_btint_a_next or result_u_overflow_next or result_u_btint_b_next or result_u_btint_a_next or control_WAIT_N_COUNTER or control_WAIT_N_COUNTER or controller_c_out_u_overflow[18+:2] or index_a_next[0+:32] or controller_c_out_u_btint_b[72+:8] or index_a_next[0+:32] or controller_c_out_u_btint_a[72+:8] or index_a_next[0+:32] or index_a_next[0+:32] or index_a_next[0+:32] or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or index_a_next or index_a_next or controller_v_overflow or controller_v_btint_b or controller_v_btint_a or load_done_next or index_a_next[0+:32] or index_a_next or controller_m_a_overflow or index_a_next or controller_m_a_btint_b or index_a_next or controller_m_a_btint_a or index_a_next or index_a_next or index_b_next or index_b_next or controller_m_b_overflow or index_b_next or controller_m_b_btint_b or index_b_next or controller_m_b_btint_a or load_done_next or controller_c_out_u_overflow or index_a_next[64+:32] or controller_c_out_u_btint_b or index_a_next[64+:32] or controller_c_out_u_btint_a or index_a_next[64+:32] or index_a_next[64+:32] or index_a_next[64+:32] or index_a_next[64+:32] or controller_op or controller_s_out or controller_s_out or state_next or controller_c_out_d_overflow or steps_next or controller_c_out_d_btint_b or steps_next or controller_c_out_d_btint_a or steps_next or controller_c_out_u_overflow or steps_next or controller_c_out_u_btint_b or steps_next or controller_c_out_u_btint_a or steps_next or steps_next or steps_next or steps_next or controller_m_a_overflow or steps_next or controller_m_a_btint_b or steps_next or controller_m_a_btint_a or steps_next or steps_next or steps_next or steps_next or steps_next or controller_op or controller_c_out_d_overflow or controller_c_out_d_btint_b or controller_c_out_d_btint_a or controller_c_out_u_overflow or controller_c_out_u_btint_b or controller_c_out_u_btint_a or controller_a_out_overflow or controller_a_out_btint_b or controller_a_out_btint_a or result_d_overflow_next or result_d_btint_b_next or result_d_btint_a_next or result_u_overflow_next or result_u_btint_b_next or result_u_btint_a_next or control_PROC_STATE or control_PROC_STATE or control_WAIT_N_COUNTER or steps or state or result_u_overflow or result_u_btint_b or result_u_btint_a or result_d_overflow or result_d_btint_b or result_d_btint_a or load_done or index_b or index_a or controller_s_mm or controller_s_in or controller_result_u_btint_a or controller_result_d_btint_a or controller_done or controller_c_in_u_btint_a or controller_c_in_d_btint_a or controller_a_in_btint_a or _sv2v_0) begin : control_comb
		if (_sv2v_0)
			;
		control_func;
	end
	always @(posedge controller_clock) begin : control_ff
		if (controller_reset) begin : sv2v_autoblock_75
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
			integer TMP_3_value;
			reg [7:0] output_btint_a_2;
			reg [7:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [7:0] output_btint_a_3;
			reg [7:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg TMP_3_isNegative;
			integer TMP_3_i;
			reg [7:0] TMP_4_btint_a;
			reg [7:0] TMP_4_btint_b;
			reg [1:0] TMP_4_overflow;
			integer TMP_5_value;
			reg [7:0] output_btint_a_4;
			reg [7:0] output_btint_b_4;
			reg [1:0] output_overflow_4;
			integer output_index_2;
			integer output_value_2;
			reg [7:0] output_btint_a_5;
			reg [7:0] output_btint_b_5;
			reg [1:0] output_overflow_5;
			reg TMP_5_isNegative;
			integer TMP_5_i;
			reg [7:0] TMP_6_btint_a;
			reg [7:0] TMP_6_btint_b;
			reg [1:0] TMP_6_overflow;
			integer TMP_7_value;
			reg [7:0] output_btint_a_6;
			reg [7:0] output_btint_b_6;
			reg [1:0] output_overflow_6;
			integer output_index_3;
			integer output_value_3;
			reg [7:0] output_btint_a_7;
			reg [7:0] output_btint_b_7;
			reg [1:0] output_overflow_7;
			reg TMP_7_isNegative;
			integer TMP_7_i;
			reg [7:0] TMP_8_btint_a;
			reg [7:0] TMP_8_btint_b;
			reg [1:0] TMP_8_overflow;
			integer TMP_9_value;
			reg [7:0] output_btint_a_8;
			reg [7:0] output_btint_b_8;
			reg [1:0] output_overflow_8;
			integer output_index_4;
			integer output_value_4;
			reg [7:0] output_btint_a_9;
			reg [7:0] output_btint_b_9;
			reg [1:0] output_overflow_9;
			reg TMP_9_isNegative;
			integer TMP_9_i;
			reg [7:0] TMP_10_btint_a;
			reg [7:0] TMP_10_btint_b;
			reg [1:0] TMP_10_overflow;
			integer TMP_11_value;
			reg [7:0] output_btint_a_10;
			reg [7:0] output_btint_b_10;
			reg [1:0] output_overflow_10;
			integer output_index_5;
			integer output_value_5;
			reg [7:0] output_btint_a_11;
			reg [7:0] output_btint_b_11;
			reg [1:0] output_overflow_11;
			reg TMP_11_isNegative;
			integer TMP_11_i;
			reg [7:0] TMP_12_btint_a;
			reg [7:0] TMP_12_btint_b;
			reg [1:0] TMP_12_overflow;
			integer TMP_13_value;
			reg [7:0] output_btint_a_12;
			reg [7:0] output_btint_b_12;
			reg [1:0] output_overflow_12;
			integer output_index_6;
			integer output_value_6;
			reg [7:0] output_btint_a_13;
			reg [7:0] output_btint_b_13;
			reg [1:0] output_overflow_13;
			reg TMP_13_isNegative;
			integer TMP_13_i;
			reg [7:0] TMP_14_btint_a;
			reg [7:0] TMP_14_btint_b;
			reg [1:0] TMP_14_overflow;
			begin : sv2v_autoblock_76
				integer i;
				for (i = 0; i < 4; i = i + 1)
					begin : sv2v_autoblock_77
						integer j;
						for (j = 0; j < 3; j = j + 1)
							begin
								TMP_0_value = 0;
								output_btint_a = 0;
								output_btint_b = 0;
								output_overflow = 0;
								begin : sv2v_autoblock_78
									integer i_1;
									for (i_1 = 0; i_1 < 8; i_1 = i_1 + 1)
										begin
											output_index = i_1;
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
								controller_a_in_btint_a[(((3 - i) * 3) + (2 - j)) * 8+:8] <= TMP_1_btint_a;
								controller_a_in_btint_b[(((3 - i) * 3) + (2 - j)) * 8+:8] <= TMP_1_btint_b;
								controller_a_in_overflow[(((3 - i) * 3) + (2 - j)) * 2+:2] <= TMP_1_overflow;
								TMP_3_value = 0;
								output_btint_a_2 = 0;
								output_btint_b_2 = 0;
								output_overflow_2 = 0;
								begin : sv2v_autoblock_79
									integer i_2;
									for (i_2 = 0; i_2 < 8; i_2 = i_2 + 1)
										begin
											output_index_1 = i_2;
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
								TMP_3_isNegative = TMP_3_value < 0;
								TMP_3_i = 0;
								TMP_4_btint_a = output_btint_a_2;
								TMP_4_btint_b = output_btint_b_2;
								TMP_4_overflow = output_overflow_2;
								controller_c_in_u_btint_a[(((3 - i) * 3) + (2 - j)) * 8+:8] <= TMP_4_btint_a;
								controller_c_in_u_btint_b[(((3 - i) * 3) + (2 - j)) * 8+:8] <= TMP_4_btint_b;
								controller_c_in_u_overflow[(((3 - i) * 3) + (2 - j)) * 2+:2] <= TMP_4_overflow;
								TMP_5_value = 0;
								output_btint_a_4 = 0;
								output_btint_b_4 = 0;
								output_overflow_4 = 0;
								begin : sv2v_autoblock_80
									integer i_3;
									for (i_3 = 0; i_3 < 8; i_3 = i_3 + 1)
										begin
											output_index_2 = i_3;
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
												1: begin
													output_btint_a_5[output_index_2] = 1;
													output_btint_b_5[output_index_2] = 1;
												end
											endcase
											TMP_2_btint_a = output_btint_a_5;
											TMP_2_btint_b = output_btint_b_5;
											TMP_2_overflow = output_overflow_5;
											output_btint_a_4 = TMP_2_btint_a;
											output_btint_b_4 = TMP_2_btint_b;
											output_overflow_4 = TMP_2_overflow;
										end
								end
								TMP_5_isNegative = TMP_5_value < 0;
								TMP_5_i = 0;
								TMP_6_btint_a = output_btint_a_4;
								TMP_6_btint_b = output_btint_b_4;
								TMP_6_overflow = output_overflow_4;
								controller_c_in_d_btint_a[(((3 - i) * 3) + (2 - j)) * 8+:8] <= TMP_6_btint_a;
								controller_c_in_d_btint_b[(((3 - i) * 3) + (2 - j)) * 8+:8] <= TMP_6_btint_b;
								controller_c_in_d_overflow[(((3 - i) * 3) + (2 - j)) * 2+:2] <= TMP_6_overflow;
								controller_s_in[((3 - i) * 3) + (2 - j)] <= 0;
							end
					end
			end
			begin : sv2v_autoblock_81
				integer i_4;
				for (i_4 = 0; i_4 < 4; i_4 = i_4 + 1)
					controller_s_mm[i_4] <= 0;
			end
			controller_done <= 0;
			begin : sv2v_autoblock_82
				integer i_5;
				for (i_5 = 0; i_5 < 4; i_5 = i_5 + 1)
					begin : sv2v_autoblock_83
						integer j_1;
						for (j_1 = 0; j_1 < 4; j_1 = j_1 + 1)
							begin
								TMP_7_value = 0;
								output_btint_a_6 = 0;
								output_btint_b_6 = 0;
								output_overflow_6 = 0;
								begin : sv2v_autoblock_84
									integer i_6;
									for (i_6 = 0; i_6 < 8; i_6 = i_6 + 1)
										begin
											output_index_3 = i_6;
											output_value_3 = 0;
											output_btint_a_7 = 0;
											output_btint_b_7 = 0;
											output_overflow_7 = 0;
											output_btint_a_7 = output_btint_a_6;
											output_btint_b_7 = output_btint_b_6;
											output_overflow_7 = output_overflow_6;
											case (0)
												0: begin
													output_btint_a_7[output_index_3] = 0;
													output_btint_b_7[output_index_3] = 1;
												end
												1: begin
													output_btint_a_7[output_index_3] = 1;
													output_btint_b_7[output_index_3] = 1;
												end
											endcase
											TMP_2_btint_a = output_btint_a_7;
											TMP_2_btint_b = output_btint_b_7;
											TMP_2_overflow = output_overflow_7;
											output_btint_a_6 = TMP_2_btint_a;
											output_btint_b_6 = TMP_2_btint_b;
											output_overflow_6 = TMP_2_overflow;
										end
								end
								TMP_7_isNegative = TMP_7_value < 0;
								TMP_7_i = 0;
								TMP_8_btint_a = output_btint_a_6;
								TMP_8_btint_b = output_btint_b_6;
								TMP_8_overflow = output_overflow_6;
								controller_result_u_btint_a[(((3 - i_5) * 4) + (3 - j_1)) * 8+:8] <= TMP_8_btint_a;
								controller_result_u_btint_b[(((3 - i_5) * 4) + (3 - j_1)) * 8+:8] <= TMP_8_btint_b;
								controller_result_u_overflow[(((3 - i_5) * 4) + (3 - j_1)) * 2+:2] <= TMP_8_overflow;
								TMP_9_value = 0;
								output_btint_a_8 = 0;
								output_btint_b_8 = 0;
								output_overflow_8 = 0;
								begin : sv2v_autoblock_85
									integer i_7;
									for (i_7 = 0; i_7 < 8; i_7 = i_7 + 1)
										begin
											output_index_4 = i_7;
											output_value_4 = 0;
											output_btint_a_9 = 0;
											output_btint_b_9 = 0;
											output_overflow_9 = 0;
											output_btint_a_9 = output_btint_a_8;
											output_btint_b_9 = output_btint_b_8;
											output_overflow_9 = output_overflow_8;
											case (0)
												0: begin
													output_btint_a_9[output_index_4] = 0;
													output_btint_b_9[output_index_4] = 1;
												end
												1: begin
													output_btint_a_9[output_index_4] = 1;
													output_btint_b_9[output_index_4] = 1;
												end
											endcase
											TMP_2_btint_a = output_btint_a_9;
											TMP_2_btint_b = output_btint_b_9;
											TMP_2_overflow = output_overflow_9;
											output_btint_a_8 = TMP_2_btint_a;
											output_btint_b_8 = TMP_2_btint_b;
											output_overflow_8 = TMP_2_overflow;
										end
								end
								TMP_9_isNegative = TMP_9_value < 0;
								TMP_9_i = 0;
								TMP_10_btint_a = output_btint_a_8;
								TMP_10_btint_b = output_btint_b_8;
								TMP_10_overflow = output_overflow_8;
								controller_result_d_btint_a[(((3 - i_5) * 4) + (3 - j_1)) * 8+:8] <= TMP_10_btint_a;
								controller_result_d_btint_b[(((3 - i_5) * 4) + (3 - j_1)) * 8+:8] <= TMP_10_btint_b;
								controller_result_d_overflow[(((3 - i_5) * 4) + (3 - j_1)) * 2+:2] <= TMP_10_overflow;
							end
					end
			end
			begin : sv2v_autoblock_86
				integer i_8;
				for (i_8 = 0; i_8 < 4; i_8 = i_8 + 1)
					begin : sv2v_autoblock_87
						integer j_2;
						for (j_2 = 0; j_2 < 4; j_2 = j_2 + 1)
							begin
								TMP_11_value = 0;
								output_btint_a_10 = 0;
								output_btint_b_10 = 0;
								output_overflow_10 = 0;
								begin : sv2v_autoblock_88
									integer i_9;
									for (i_9 = 0; i_9 < 8; i_9 = i_9 + 1)
										begin
											output_index_5 = i_9;
											output_value_5 = 0;
											output_btint_a_11 = 0;
											output_btint_b_11 = 0;
											output_overflow_11 = 0;
											output_btint_a_11 = output_btint_a_10;
											output_btint_b_11 = output_btint_b_10;
											output_overflow_11 = output_overflow_10;
											case (0)
												0: begin
													output_btint_a_11[output_index_5] = 0;
													output_btint_b_11[output_index_5] = 1;
												end
												1: begin
													output_btint_a_11[output_index_5] = 1;
													output_btint_b_11[output_index_5] = 1;
												end
											endcase
											TMP_2_btint_a = output_btint_a_11;
											TMP_2_btint_b = output_btint_b_11;
											TMP_2_overflow = output_overflow_11;
											output_btint_a_10 = TMP_2_btint_a;
											output_btint_b_10 = TMP_2_btint_b;
											output_overflow_10 = TMP_2_overflow;
										end
								end
								TMP_11_isNegative = TMP_11_value < 0;
								TMP_11_i = 0;
								TMP_12_btint_a = output_btint_a_10;
								TMP_12_btint_b = output_btint_b_10;
								TMP_12_overflow = output_overflow_10;
								result_u_btint_a[(((3 - i_8) * 4) + (3 - j_2)) * 8+:8] <= TMP_12_btint_a;
								result_u_btint_b[(((3 - i_8) * 4) + (3 - j_2)) * 8+:8] <= TMP_12_btint_b;
								result_u_overflow[(((3 - i_8) * 4) + (3 - j_2)) * 2+:2] <= TMP_12_overflow;
								TMP_13_value = 0;
								output_btint_a_12 = 0;
								output_btint_b_12 = 0;
								output_overflow_12 = 0;
								begin : sv2v_autoblock_89
									integer i_10;
									for (i_10 = 0; i_10 < 8; i_10 = i_10 + 1)
										begin
											output_index_6 = i_10;
											output_value_6 = 0;
											output_btint_a_13 = 0;
											output_btint_b_13 = 0;
											output_overflow_13 = 0;
											output_btint_a_13 = output_btint_a_12;
											output_btint_b_13 = output_btint_b_12;
											output_overflow_13 = output_overflow_12;
											case (0)
												0: begin
													output_btint_a_13[output_index_6] = 0;
													output_btint_b_13[output_index_6] = 1;
												end
												1: begin
													output_btint_a_13[output_index_6] = 1;
													output_btint_b_13[output_index_6] = 1;
												end
											endcase
											TMP_2_btint_a = output_btint_a_13;
											TMP_2_btint_b = output_btint_b_13;
											TMP_2_overflow = output_overflow_13;
											output_btint_a_12 = TMP_2_btint_a;
											output_btint_b_12 = TMP_2_btint_b;
											output_overflow_12 = TMP_2_overflow;
										end
								end
								TMP_13_isNegative = TMP_13_value < 0;
								TMP_13_i = 0;
								TMP_14_btint_a = output_btint_a_12;
								TMP_14_btint_b = output_btint_b_12;
								TMP_14_overflow = output_overflow_12;
								result_d_btint_a[(((3 - i_8) * 4) + (3 - j_2)) * 8+:8] <= TMP_14_btint_a;
								result_d_btint_b[(((3 - i_8) * 4) + (3 - j_2)) * 8+:8] <= TMP_14_btint_b;
								result_d_overflow[(((3 - i_8) * 4) + (3 - j_2)) * 2+:2] <= TMP_14_overflow;
							end
					end
			end
			steps <= 0;
			begin : sv2v_autoblock_90
				integer i_11;
				for (i_11 = 0; i_11 < 3; i_11 = i_11 + 1)
					index_a[(2 - i_11) * 32+:32] <= -(i_11 + 1);
			end
			index_b <= 0;
			load_done <= 0;
			control_PROC_STATE <= 0;
			control_WAIT_N_COUNTER <= 0;
		end
		else begin
			control_WAIT_N_COUNTER <= control_WAIT_N_COUNTER_next;
			controller_a_in_btint_a <= controller_a_in_btint_a_next;
			controller_a_in_btint_b <= controller_a_in_btint_b_next;
			controller_a_in_overflow <= controller_a_in_overflow_next;
			controller_c_in_u_btint_a <= controller_c_in_u_btint_a_next;
			controller_c_in_u_btint_b <= controller_c_in_u_btint_b_next;
			controller_c_in_u_overflow <= controller_c_in_u_overflow_next;
			controller_c_in_d_btint_a <= controller_c_in_d_btint_a_next;
			controller_c_in_d_btint_b <= controller_c_in_d_btint_b_next;
			controller_c_in_d_overflow <= controller_c_in_d_overflow_next;
			controller_s_in <= controller_s_in_next;
			controller_s_mm <= controller_s_mm_next;
			controller_done <= controller_done_next;
			controller_result_u_btint_a <= controller_result_u_btint_a_next;
			controller_result_u_btint_b <= controller_result_u_btint_b_next;
			controller_result_u_overflow <= controller_result_u_overflow_next;
			controller_result_d_btint_a <= controller_result_d_btint_a_next;
			controller_result_d_btint_b <= controller_result_d_btint_b_next;
			controller_result_d_overflow <= controller_result_d_overflow_next;
			result_u_btint_a <= result_u_btint_a_next;
			result_u_btint_b <= result_u_btint_b_next;
			result_u_overflow <= result_u_overflow_next;
			result_d_btint_a <= result_d_btint_a_next;
			result_d_btint_b <= result_d_btint_b_next;
			result_d_overflow <= result_d_overflow_next;
			steps <= steps_next;
			state <= state_next;
			index_a <= index_a_next;
			load_done <= load_done_next;
			index_b <= index_b_next;
			control_PROC_STATE <= control_PROC_STATE_next;
		end
	end
	initial _sv2v_0 = 0;
endmodule
