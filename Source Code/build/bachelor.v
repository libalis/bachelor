module MATRIX_VECTOR (
	matrix_vector_clock,
	matrix_vector_reset,
	matrix_vector_valid,
	matrix_vector_done,
	uart_transmitter_output
);
	input wire matrix_vector_clock;
	input wire matrix_vector_reset;
	input wire matrix_vector_valid;
	output wire matrix_vector_done;
	output wire [0:2] uart_transmitter_output;
	wire [95:0] matrix_vector_matrix_btint_a;
	wire [95:0] matrix_vector_matrix_btint_b;
	wire [23:0] matrix_vector_matrix_overflow;
	wire [31:0] matrix_vector_vector_btint_a;
	wire [31:0] matrix_vector_vector_btint_b;
	wire [7:0] matrix_vector_vector_overflow;
	wire [23:0] matrix_vector_result_btint_a;
	wire [23:0] matrix_vector_result_btint_b;
	wire [5:0] matrix_vector_result_overflow;
	wire cell_reset;
	wire [31:0] cell_b_in_btint_a;
	wire [31:0] cell_b_in_btint_b;
	wire [7:0] cell_b_in_overflow;
	wire [31:0] cell_c_in_btint_a;
	wire [31:0] cell_c_in_btint_b;
	wire [7:0] cell_c_in_overflow;
	wire [7:0] cell_b_out_btint_a [0:3];
	wire [7:0] cell_b_out_btint_b [0:3];
	wire [1:0] cell_b_out_overflow [0:3];
	wire [31:0] cell_c_out_btint_a;
	wire [31:0] cell_c_out_btint_b;
	wire [7:0] cell_c_out_overflow;
	CELL cell_0(
		.cell_clock(matrix_vector_clock),
		.cell_reset(cell_reset),
		.cell_b_in_btint_a(cell_b_in_btint_a[24+:8]),
		.cell_b_in_btint_b(cell_b_in_btint_b[24+:8]),
		.cell_b_in_overflow(cell_b_in_overflow[6+:2]),
		.cell_c_in_btint_a(cell_c_in_btint_a[24+:8]),
		.cell_c_in_btint_b(cell_c_in_btint_b[24+:8]),
		.cell_c_in_overflow(cell_c_in_overflow[6+:2]),
		.cell_b_out_btint_a(cell_b_out_btint_a[0]),
		.cell_b_out_btint_b(cell_b_out_btint_b[0]),
		.cell_b_out_overflow(cell_b_out_overflow[0]),
		.cell_c_out_btint_a(cell_c_out_btint_a[24+:8]),
		.cell_c_out_btint_b(cell_c_out_btint_b[24+:8]),
		.cell_c_out_overflow(cell_c_out_overflow[6+:2])
	);
	CELL cell_1(
		.cell_clock(matrix_vector_clock),
		.cell_reset(cell_reset),
		.cell_b_in_btint_a(cell_b_in_btint_a[16+:8]),
		.cell_b_in_btint_b(cell_b_in_btint_b[16+:8]),
		.cell_b_in_overflow(cell_b_in_overflow[4+:2]),
		.cell_c_in_btint_a(cell_c_in_btint_a[16+:8]),
		.cell_c_in_btint_b(cell_c_in_btint_b[16+:8]),
		.cell_c_in_overflow(cell_c_in_overflow[4+:2]),
		.cell_b_out_btint_a(cell_b_out_btint_a[1]),
		.cell_b_out_btint_b(cell_b_out_btint_b[1]),
		.cell_b_out_overflow(cell_b_out_overflow[1]),
		.cell_c_out_btint_a(cell_c_out_btint_a[16+:8]),
		.cell_c_out_btint_b(cell_c_out_btint_b[16+:8]),
		.cell_c_out_overflow(cell_c_out_overflow[4+:2])
	);
	CELL cell_2(
		.cell_clock(matrix_vector_clock),
		.cell_reset(cell_reset),
		.cell_b_in_btint_a(cell_b_in_btint_a[8+:8]),
		.cell_b_in_btint_b(cell_b_in_btint_b[8+:8]),
		.cell_b_in_overflow(cell_b_in_overflow[2+:2]),
		.cell_c_in_btint_a(cell_c_in_btint_a[8+:8]),
		.cell_c_in_btint_b(cell_c_in_btint_b[8+:8]),
		.cell_c_in_overflow(cell_c_in_overflow[2+:2]),
		.cell_b_out_btint_a(cell_b_out_btint_a[2]),
		.cell_b_out_btint_b(cell_b_out_btint_b[2]),
		.cell_b_out_overflow(cell_b_out_overflow[2]),
		.cell_c_out_btint_a(cell_c_out_btint_a[8+:8]),
		.cell_c_out_btint_b(cell_c_out_btint_b[8+:8]),
		.cell_c_out_overflow(cell_c_out_overflow[2+:2])
	);
	CELL cell_3(
		.cell_clock(matrix_vector_clock),
		.cell_reset(cell_reset),
		.cell_b_in_btint_a(cell_b_in_btint_a[0+:8]),
		.cell_b_in_btint_b(cell_b_in_btint_b[0+:8]),
		.cell_b_in_overflow(cell_b_in_overflow[0+:2]),
		.cell_c_in_btint_a(cell_c_in_btint_a[0+:8]),
		.cell_c_in_btint_b(cell_c_in_btint_b[0+:8]),
		.cell_c_in_overflow(cell_c_in_overflow[0+:2]),
		.cell_b_out_btint_a(cell_b_out_btint_a[3]),
		.cell_b_out_btint_b(cell_b_out_btint_b[3]),
		.cell_b_out_overflow(cell_b_out_overflow[3]),
		.cell_c_out_btint_a(cell_c_out_btint_a[0+:8]),
		.cell_c_out_btint_b(cell_c_out_btint_b[0+:8]),
		.cell_c_out_overflow(cell_c_out_overflow[0+:2])
	);
	MATRIX_VECTOR_CONTROL matrix_vector_control(
		.matrix_vector_control_clock(matrix_vector_clock),
		.matrix_vector_control_reset(matrix_vector_reset),
		.matrix_vector_control_valid(matrix_vector_valid),
		.matrix_vector_control_matrix_btint_a(matrix_vector_matrix_btint_a),
		.matrix_vector_control_matrix_btint_b(matrix_vector_matrix_btint_b),
		.matrix_vector_control_matrix_overflow(matrix_vector_matrix_overflow),
		.matrix_vector_control_vector_btint_a(matrix_vector_vector_btint_a),
		.matrix_vector_control_vector_btint_b(matrix_vector_vector_btint_b),
		.matrix_vector_control_vector_overflow(matrix_vector_vector_overflow),
		.matrix_vector_control_c_out_btint_a(cell_c_out_btint_a),
		.matrix_vector_control_c_out_btint_b(cell_c_out_btint_b),
		.matrix_vector_control_c_out_overflow(cell_c_out_overflow),
		.matrix_vector_control_result_btint_a(matrix_vector_result_btint_a),
		.matrix_vector_control_result_btint_b(matrix_vector_result_btint_b),
		.matrix_vector_control_result_overflow(matrix_vector_result_overflow),
		.matrix_vector_control_b_in_btint_a(cell_b_in_btint_a),
		.matrix_vector_control_b_in_btint_b(cell_b_in_btint_b),
		.matrix_vector_control_b_in_overflow(cell_b_in_overflow),
		.matrix_vector_control_c_in_btint_a(cell_c_in_btint_a),
		.matrix_vector_control_c_in_btint_b(cell_c_in_btint_b),
		.matrix_vector_control_c_in_overflow(cell_c_in_overflow),
		.matrix_vector_control_reset_out(cell_reset),
		.matrix_vector_control_done(matrix_vector_done)
	);
	UART_TRANSMITTER uart_transmitter(
		.uart_transmitter_clock(matrix_vector_clock),
		.uart_transmitter_reset(matrix_vector_done),
		.uart_transmitter_input_btint_a(matrix_vector_result_btint_a),
		.uart_transmitter_input_btint_b(matrix_vector_result_btint_b),
		.uart_transmitter_input_overflow(matrix_vector_result_overflow),
		.uart_transmitter_output(uart_transmitter_output)
	);
endmodule
module CELL (
	cell_clock,
	cell_reset,
	cell_b_in_btint_a,
	cell_b_in_btint_b,
	cell_b_in_overflow,
	cell_c_in_btint_a,
	cell_c_in_btint_b,
	cell_c_in_overflow,
	cell_b_out_btint_a,
	cell_b_out_btint_b,
	cell_b_out_overflow,
	cell_c_out_btint_a,
	cell_c_out_btint_b,
	cell_c_out_overflow
);
	reg _sv2v_0;
	input wire cell_clock;
	input wire cell_reset;
	input wire [7:0] cell_b_in_btint_a;
	input wire [7:0] cell_b_in_btint_b;
	input wire [1:0] cell_b_in_overflow;
	input wire [7:0] cell_c_in_btint_a;
	input wire [7:0] cell_c_in_btint_b;
	input wire [1:0] cell_c_in_overflow;
	output reg [7:0] cell_b_out_btint_a;
	output reg [7:0] cell_b_out_btint_b;
	output reg [1:0] cell_b_out_overflow;
	output reg [7:0] cell_c_out_btint_a;
	output reg [7:0] cell_c_out_btint_b;
	output reg [1:0] cell_c_out_overflow;
	wire zero;
	reg [7:0] adder_subtractor_a_btint_a;
	reg [7:0] adder_subtractor_a_btint_b;
	reg [1:0] adder_subtractor_a_overflow;
	reg [7:0] adder_subtractor_b_btint_a;
	reg [7:0] adder_subtractor_b_btint_b;
	reg [1:0] adder_subtractor_b_overflow;
	wire [8:0] adder_subtractor_sum_btint_a;
	wire [8:0] adder_subtractor_sum_btint_b;
	wire [1:0] adder_subtractor_sum_overflow;
	reg [7:0] multiplier_a_btint_a;
	reg [7:0] multiplier_a_btint_b;
	reg [1:0] multiplier_a_overflow;
	reg [7:0] multiplier_b_btint_a;
	reg [7:0] multiplier_b_btint_b;
	reg [1:0] multiplier_b_overflow;
	wire [15:0] multiplier_product_btint_a;
	wire [15:0] multiplier_product_btint_b;
	wire [1:0] multiplier_product_overflow;
	reg [7:0] cell_b_out_btint_a_next;
	reg [7:0] cell_b_out_btint_b_next;
	reg [1:0] cell_b_out_overflow_next;
	reg [7:0] cell_c_out_btint_a_next;
	reg [7:0] cell_c_out_btint_b_next;
	reg [1:0] cell_c_out_overflow_next;
	reg [7:0] state_btint_a;
	reg [7:0] state_btint_a_next;
	reg [7:0] state_btint_b;
	reg [7:0] state_btint_b_next;
	reg [1:0] state_overflow;
	reg [1:0] state_overflow_next;
	reg [7:0] multiplier_a_btint_a_next;
	reg [7:0] multiplier_a_btint_b_next;
	reg [1:0] multiplier_a_overflow_next;
	reg [7:0] multiplier_b_btint_a_next;
	reg [7:0] multiplier_b_btint_b_next;
	reg [1:0] multiplier_b_overflow_next;
	reg [7:0] adder_subtractor_a_btint_a_next;
	reg [7:0] adder_subtractor_a_btint_b_next;
	reg [1:0] adder_subtractor_a_overflow_next;
	reg [7:0] adder_subtractor_b_btint_a_next;
	reg [7:0] adder_subtractor_b_btint_b_next;
	reg [1:0] adder_subtractor_b_overflow_next;
	task compute_func;
		reg [8:0] sum_btint_a;
		reg [8:0] sum_btint_b;
		reg [1:0] sum_overflow;
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
		integer product_from;
		integer product_to;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		reg [7:0] TMP_3_btint_a;
		reg [7:0] TMP_3_btint_b;
		reg [1:0] TMP_3_overflow;
		integer sum_from;
		integer sum_to;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg [7:0] TMP_4_btint_a;
		reg [7:0] TMP_4_btint_b;
		reg [1:0] TMP_4_overflow;
		begin
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			TMP_3_btint_a = 0;
			TMP_3_btint_b = 0;
			TMP_3_overflow = 0;
			output_btint_a_3 = 0;
			output_btint_b_3 = 0;
			output_overflow_3 = 0;
			TMP_4_btint_a = 0;
			TMP_4_btint_b = 0;
			TMP_4_overflow = 0;
			adder_subtractor_a_btint_a_next = adder_subtractor_a_btint_a;
			adder_subtractor_a_btint_b_next = adder_subtractor_a_btint_b;
			adder_subtractor_a_overflow_next = adder_subtractor_a_overflow;
			adder_subtractor_b_btint_a_next = adder_subtractor_b_btint_a;
			adder_subtractor_b_btint_b_next = adder_subtractor_b_btint_b;
			adder_subtractor_b_overflow_next = adder_subtractor_b_overflow;
			cell_b_out_btint_a_next = cell_b_out_btint_a;
			cell_b_out_btint_b_next = cell_b_out_btint_b;
			cell_b_out_overflow_next = cell_b_out_overflow;
			cell_c_out_btint_a_next = cell_c_out_btint_a;
			cell_c_out_btint_b_next = cell_c_out_btint_b;
			cell_c_out_overflow_next = cell_c_out_overflow;
			multiplier_a_btint_a_next = multiplier_a_btint_a;
			multiplier_a_btint_b_next = multiplier_a_btint_b;
			multiplier_a_overflow_next = multiplier_a_overflow;
			multiplier_b_btint_a_next = multiplier_b_btint_a;
			multiplier_b_btint_b_next = multiplier_b_btint_b;
			multiplier_b_overflow_next = multiplier_b_overflow;
			state_btint_a_next = state_btint_a;
			state_btint_b_next = state_btint_b;
			state_overflow_next = state_overflow;
			sum_btint_a = adder_subtractor_sum_btint_a;
			sum_btint_b = adder_subtractor_sum_btint_b;
			sum_overflow = adder_subtractor_sum_overflow;
			product_btint_a = multiplier_product_btint_a;
			product_btint_b = multiplier_product_btint_b;
			product_overflow = multiplier_product_overflow;
			cell_b_out_btint_a_next = cell_b_in_btint_a;
			cell_b_out_btint_b_next = cell_b_in_btint_b;
			cell_b_out_overflow_next = cell_b_in_overflow;
			multiplier_a_btint_a_next = state_btint_a_next;
			multiplier_a_btint_b_next = state_btint_b_next;
			multiplier_a_overflow_next = state_overflow_next;
			multiplier_b_btint_a_next = cell_b_in_btint_a;
			multiplier_b_btint_b_next = cell_b_in_btint_b;
			multiplier_b_overflow_next = cell_b_in_overflow;
			product_from = 7;
			product_to = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			output_btint_a_2 = product_btint_a[product_to+:8];
			output_btint_b_2 = product_btint_b[product_to+:8];
			output_overflow_2 = product_overflow;
			TMP_3_btint_a = output_btint_a_2;
			TMP_3_btint_b = output_btint_b_2;
			TMP_3_overflow = output_overflow_2;
			adder_subtractor_a_btint_a_next = TMP_3_btint_a;
			adder_subtractor_a_btint_b_next = TMP_3_btint_b;
			adder_subtractor_a_overflow_next = TMP_3_overflow;
			adder_subtractor_b_btint_a_next = cell_c_in_btint_a;
			adder_subtractor_b_btint_b_next = cell_c_in_btint_b;
			adder_subtractor_b_overflow_next = cell_c_in_overflow;
			sum_from = 7;
			sum_to = 0;
			output_btint_a_3 = 0;
			output_btint_b_3 = 0;
			output_overflow_3 = 0;
			output_btint_a_3 = sum_btint_a[sum_to+:8];
			output_btint_b_3 = sum_btint_b[sum_to+:8];
			output_overflow_3 = sum_overflow;
			TMP_4_btint_a = output_btint_a_3;
			TMP_4_btint_b = output_btint_b_3;
			TMP_4_overflow = output_overflow_3;
			cell_c_out_btint_a_next = TMP_4_btint_a;
			cell_c_out_btint_b_next = TMP_4_btint_b;
			cell_c_out_overflow_next = TMP_4_overflow;
		end
	endtask
	always @(cell_c_in_overflow or cell_c_in_btint_b or cell_c_in_btint_a or cell_b_in_overflow or cell_b_in_btint_b or cell_b_in_btint_a or state_overflow_next or state_btint_b_next or state_btint_a_next or cell_b_in_overflow or cell_b_in_btint_b or cell_b_in_btint_a or multiplier_product_overflow or multiplier_product_btint_b or multiplier_product_btint_a or adder_subtractor_sum_overflow or adder_subtractor_sum_btint_b or adder_subtractor_sum_btint_a or state_overflow or state_btint_b or state_btint_a or multiplier_b_overflow or multiplier_b_btint_b or multiplier_b_btint_a or multiplier_a_overflow or multiplier_a_btint_b or multiplier_a_btint_a or cell_c_out_overflow or cell_c_out_btint_b or cell_c_out_btint_a or cell_b_out_overflow or cell_b_out_btint_b or cell_b_out_btint_a or adder_subtractor_b_overflow or adder_subtractor_b_btint_b or adder_subtractor_b_btint_a or adder_subtractor_a_overflow or adder_subtractor_a_btint_b or adder_subtractor_a_btint_a or _sv2v_0) begin : compute_comb
		if (_sv2v_0)
			;
		compute_func;
	end
	always @(posedge cell_clock) begin : compute_ff
		if (cell_reset) begin : sv2v_autoblock_1
			reg [8:0] sum_btint_a;
			reg [8:0] sum_btint_b;
			reg [1:0] sum_overflow;
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
			sum_btint_a = 0;
			sum_btint_b = 0;
			sum_overflow = 0;
			product_btint_a = 0;
			product_btint_b = 0;
			product_overflow = 0;
			cell_b_out_btint_a <= cell_b_in_btint_a;
			cell_b_out_btint_b <= cell_b_in_btint_b;
			cell_b_out_overflow <= cell_b_in_overflow;
			TMP_0_value = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			begin : sv2v_autoblock_2
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
			cell_c_out_btint_a <= TMP_1_btint_a;
			cell_c_out_btint_b <= TMP_1_btint_b;
			cell_c_out_overflow <= TMP_1_overflow;
			state_btint_a <= cell_b_in_btint_a;
			state_btint_b <= cell_b_in_btint_b;
			state_overflow <= cell_b_in_overflow;
		end
		else begin
			cell_b_out_btint_a <= cell_b_out_btint_a_next;
			cell_b_out_btint_b <= cell_b_out_btint_b_next;
			cell_b_out_overflow <= cell_b_out_overflow_next;
			cell_c_out_btint_a <= cell_c_out_btint_a_next;
			cell_c_out_btint_b <= cell_c_out_btint_b_next;
			cell_c_out_overflow <= cell_c_out_overflow_next;
			state_btint_a <= state_btint_a_next;
			state_btint_b <= state_btint_b_next;
			state_overflow <= state_overflow_next;
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
		end
	end
	ADDER_SUBTRACTOR adder_subtractor(
		.adder_subtractor_a_btint_a(adder_subtractor_a_btint_a),
		.adder_subtractor_a_btint_b(adder_subtractor_a_btint_b),
		.adder_subtractor_a_overflow(adder_subtractor_a_overflow),
		.adder_subtractor_b_btint_a(adder_subtractor_b_btint_a),
		.adder_subtractor_b_btint_b(adder_subtractor_b_btint_b),
		.adder_subtractor_b_overflow(adder_subtractor_b_overflow),
		.adder_subtractor_subtract(zero),
		.adder_subtractor_sum_btint_a(adder_subtractor_sum_btint_a),
		.adder_subtractor_sum_btint_b(adder_subtractor_sum_btint_b),
		.adder_subtractor_sum_overflow(adder_subtractor_sum_overflow)
	);
	MULTIPLIER multiplier(
		.multiplier_clock(cell_clock),
		.multiplier_reset(zero),
		.multiplier_a_btint_a(multiplier_a_btint_a),
		.multiplier_a_btint_b(multiplier_a_btint_b),
		.multiplier_a_overflow(multiplier_a_overflow),
		.multiplier_b_btint_a(multiplier_b_btint_a),
		.multiplier_b_btint_b(multiplier_b_btint_b),
		.multiplier_b_overflow(multiplier_b_overflow),
		.multiplier_product_btint_a(multiplier_product_btint_a),
		.multiplier_product_btint_b(multiplier_product_btint_b),
		.multiplier_product_overflow(multiplier_product_overflow)
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
		fulladder_sum = (fulladder_a ^ fulladder_b) ^ fulladder_carry_in;
		fulladder_carry_out = (fulladder_a & fulladder_b) | (fulladder_carry_in & (fulladder_a ^ fulladder_b));
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
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		integer output_index_1;
		integer output_value_1;
		reg [7:0] output_btint_a_3;
		reg [7:0] output_btint_b_3;
		reg [1:0] output_overflow_3;
		reg [7:0] TMP_5_btint_a;
		reg [7:0] TMP_5_btint_b;
		reg [1:0] TMP_5_overflow;
		reg TMP_3_isNegative;
		integer TMP_3_i;
		reg [7:0] TMP_4_btint_a;
		reg [7:0] TMP_4_btint_b;
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
		reg [7:0] TMP_8_btint_a;
		reg [7:0] TMP_8_btint_b;
		reg [1:0] TMP_8_overflow;
		reg TMP_6_isNegative;
		integer TMP_6_i;
		reg [7:0] TMP_7_btint_a;
		reg [7:0] TMP_7_btint_b;
		reg [1:0] TMP_7_overflow;
		integer TMP_9_value;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		integer output_index_3;
		integer output_value_3;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg [7:0] TMP_11_btint_a;
		reg [7:0] TMP_11_btint_b;
		reg [1:0] TMP_11_overflow;
		reg TMP_9_isNegative;
		integer TMP_9_i;
		reg [7:0] TMP_10_btint_a;
		reg [7:0] TMP_10_btint_b;
		reg [1:0] TMP_10_overflow;
		integer TMP_12_value;
		reg [15:0] output_btint_a_8;
		reg [15:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		integer output_index_4;
		integer output_value_4;
		reg [15:0] output_btint_a_9;
		reg [15:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg [15:0] TMP_14_btint_a;
		reg [15:0] TMP_14_btint_b;
		reg [1:0] TMP_14_overflow;
		reg TMP_12_isNegative;
		integer TMP_12_i;
		reg [15:0] TMP_13_btint_a;
		reg [15:0] TMP_13_btint_b;
		reg [1:0] TMP_13_overflow;
		integer TMP_15;
		integer output_v;
		integer TMP_16;
		integer index;
		integer TMP_17;
		integer input_a_output_v;
		integer TMP_18;
		integer input_a_index;
		integer TMP_19;
		integer output_v_1;
		integer TMP_20;
		integer index_1;
		integer TMP_21;
		integer input_b_output_v;
		integer TMP_22;
		integer input_b_index;
		integer TMP_23_value;
		reg [7:0] output_btint_a_10;
		reg [7:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
		integer output_index_5;
		integer output_value_5;
		reg [7:0] output_btint_a_11;
		reg [7:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg [7:0] TMP_25_btint_a;
		reg [7:0] TMP_25_btint_b;
		reg [1:0] TMP_25_overflow;
		reg TMP_23_isNegative;
		integer TMP_23_i;
		reg [7:0] TMP_24_btint_a;
		reg [7:0] TMP_24_btint_b;
		reg [1:0] TMP_24_overflow;
		integer TMP_26_value;
		reg [15:0] output_btint_a_12;
		reg [15:0] output_btint_b_12;
		reg [1:0] output_overflow_12;
		integer output_index_6;
		integer output_value_6;
		reg [15:0] output_btint_a_13;
		reg [15:0] output_btint_b_13;
		reg [1:0] output_overflow_13;
		reg [15:0] TMP_28_btint_a;
		reg [15:0] TMP_28_btint_b;
		reg [1:0] TMP_28_overflow;
		reg TMP_26_isNegative;
		integer TMP_26_i;
		reg [15:0] TMP_27_btint_a;
		reg [15:0] TMP_27_btint_b;
		reg [1:0] TMP_27_overflow;
		integer TMP_29;
		integer index_2;
		integer TMP_30_value;
		reg [7:0] output_btint_a_14;
		reg [7:0] output_btint_b_14;
		reg [1:0] output_overflow_14;
		integer output_index_7;
		integer output_value_7;
		reg [7:0] output_btint_a_15;
		reg [7:0] output_btint_b_15;
		reg [1:0] output_overflow_15;
		reg [7:0] TMP_32_btint_a;
		reg [7:0] TMP_32_btint_b;
		reg [1:0] TMP_32_overflow;
		reg TMP_30_isNegative;
		integer TMP_30_i;
		reg [7:0] TMP_31_btint_a;
		reg [7:0] TMP_31_btint_b;
		reg [1:0] TMP_31_overflow;
		integer TMP_33;
		integer index_3;
		reg [7:0] output_btint_a_16;
		reg [7:0] output_btint_b_16;
		reg [1:0] output_overflow_16;
		integer output_index_8;
		integer output_value_8;
		reg [7:0] output_btint_a_17;
		reg [7:0] output_btint_b_17;
		reg [1:0] output_overflow_17;
		reg [7:0] TMP_35_btint_a;
		reg [7:0] TMP_35_btint_b;
		reg [1:0] TMP_35_overflow;
		reg [7:0] TMP_34_btint_a;
		reg [7:0] TMP_34_btint_b;
		reg [1:0] TMP_34_overflow;
		reg [7:0] low_btint_a;
		reg [7:0] low_btint_b;
		reg [1:0] low_overflow;
		reg [15:0] output_btint_a_18;
		reg [15:0] output_btint_b_18;
		reg [1:0] output_overflow_18;
		reg [15:0] TMP_36_btint_a;
		reg [15:0] TMP_36_btint_b;
		reg [1:0] TMP_36_overflow;
		integer TMP_37;
		integer product_index;
		integer TMP_38;
		integer product_value;
		reg [15:0] output_btint_a_19;
		reg [15:0] output_btint_b_19;
		reg [1:0] output_overflow_19;
		reg [15:0] TMP_39_btint_a;
		reg [15:0] TMP_39_btint_b;
		reg [1:0] TMP_39_overflow;
		begin
			TMP_15 = 0;
			output_v = 0;
			TMP_16 = 0;
			index = 0;
			TMP_17 = 0;
			input_a_output_v = 0;
			TMP_18 = 0;
			input_a_index = 0;
			TMP_19 = 0;
			output_v_1 = 0;
			TMP_20 = 0;
			index_1 = 0;
			TMP_21 = 0;
			input_b_output_v = 0;
			TMP_22 = 0;
			input_b_index = 0;
			TMP_23_value = 0;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			output_index_5 = 0;
			output_value_5 = 0;
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
			TMP_25_btint_a = 0;
			TMP_25_btint_b = 0;
			TMP_25_overflow = 0;
			TMP_23_isNegative = 0;
			TMP_23_i = 0;
			TMP_24_btint_a = 0;
			TMP_24_btint_b = 0;
			TMP_24_overflow = 0;
			TMP_26_value = 0;
			output_btint_a_12 = 0;
			output_btint_b_12 = 0;
			output_overflow_12 = 0;
			output_index_6 = 0;
			output_value_6 = 0;
			output_btint_a_13 = 0;
			output_btint_b_13 = 0;
			output_overflow_13 = 0;
			TMP_28_btint_a = 0;
			TMP_28_btint_b = 0;
			TMP_28_overflow = 0;
			TMP_26_isNegative = 0;
			TMP_26_i = 0;
			TMP_27_btint_a = 0;
			TMP_27_btint_b = 0;
			TMP_27_overflow = 0;
			TMP_29 = 0;
			index_2 = 0;
			TMP_30_value = 0;
			output_btint_a_14 = 0;
			output_btint_b_14 = 0;
			output_overflow_14 = 0;
			output_index_7 = 0;
			output_value_7 = 0;
			output_btint_a_15 = 0;
			output_btint_b_15 = 0;
			output_overflow_15 = 0;
			TMP_32_btint_a = 0;
			TMP_32_btint_b = 0;
			TMP_32_overflow = 0;
			TMP_30_isNegative = 0;
			TMP_30_i = 0;
			TMP_31_btint_a = 0;
			TMP_31_btint_b = 0;
			TMP_31_overflow = 0;
			TMP_33 = 0;
			index_3 = 0;
			output_btint_a_16 = 0;
			output_btint_b_16 = 0;
			output_overflow_16 = 0;
			output_index_8 = 0;
			output_value_8 = 0;
			output_btint_a_17 = 0;
			output_btint_b_17 = 0;
			output_overflow_17 = 0;
			TMP_35_btint_a = 0;
			TMP_35_btint_b = 0;
			TMP_35_overflow = 0;
			TMP_34_btint_a = 0;
			TMP_34_btint_b = 0;
			TMP_34_overflow = 0;
			low_btint_a = 0;
			low_btint_b = 0;
			low_overflow = 0;
			output_btint_a_18 = 0;
			output_btint_b_18 = 0;
			output_overflow_18 = 0;
			TMP_36_btint_a = 0;
			TMP_36_btint_b = 0;
			TMP_36_overflow = 0;
			TMP_37 = 0;
			product_index = 0;
			TMP_38 = 0;
			product_value = 0;
			output_btint_a_19 = 0;
			output_btint_b_19 = 0;
			output_overflow_19 = 0;
			TMP_39_btint_a = 0;
			TMP_39_btint_b = 0;
			TMP_39_overflow = 0;
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
			output_v = 0;
			begin : sv2v_autoblock_1
				integer i_5;
				for (i_5 = 7; i_5 >= 0; i_5 = i_5 - 1)
					begin
						index = i_5;
						TMP_16 = (a_old_btint_a_next[index] + a_old_btint_b_next[index]) - 1;
						output_v = (2 * output_v) + TMP_16;
					end
			end
			TMP_15 = output_v;
			input_a_output_v = 0;
			begin : sv2v_autoblock_2
				integer i_6;
				for (i_6 = 7; i_6 >= 0; i_6 = i_6 - 1)
					begin
						input_a_index = i_6;
						TMP_18 = (input_a_btint_a[input_a_index] + input_a_btint_b[input_a_index]) - 1;
						input_a_output_v = (2 * input_a_output_v) + TMP_18;
					end
			end
			TMP_17 = input_a_output_v;
			output_v_1 = 0;
			begin : sv2v_autoblock_3
				integer i_7;
				for (i_7 = 7; i_7 >= 0; i_7 = i_7 - 1)
					begin
						index_1 = i_7;
						TMP_20 = (b_old_btint_a_next[index_1] + b_old_btint_b_next[index_1]) - 1;
						output_v_1 = (2 * output_v_1) + TMP_20;
					end
			end
			TMP_19 = output_v_1;
			input_b_output_v = 0;
			begin : sv2v_autoblock_4
				integer i_8;
				for (i_8 = 7; i_8 >= 0; i_8 = i_8 - 1)
					begin
						input_b_index = i_8;
						TMP_22 = (input_b_btint_a[input_b_index] + input_b_btint_b[input_b_index]) - 1;
						input_b_output_v = (2 * input_b_output_v) + TMP_22;
					end
			end
			TMP_21 = input_b_output_v;
			if ((TMP_15 != TMP_17) || (TMP_19 != TMP_21)) begin
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
				TMP_23_value = 0;
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
							TMP_25_btint_a = output_btint_a_11;
							TMP_25_btint_b = output_btint_b_11;
							TMP_25_overflow = output_overflow_11;
							output_btint_a_10 = TMP_25_btint_a;
							output_btint_b_10 = TMP_25_btint_b;
							output_overflow_10 = TMP_25_overflow;
						end
				end
				TMP_23_isNegative = TMP_23_value < 0;
				TMP_23_i = 0;
				TMP_24_btint_a = output_btint_a_10;
				TMP_24_btint_b = output_btint_b_10;
				TMP_24_overflow = output_overflow_10;
				adder_subtractor_b_btint_a_next = TMP_24_btint_a;
				adder_subtractor_b_btint_b_next = TMP_24_btint_b;
				adder_subtractor_b_overflow_next = TMP_24_overflow;
				shift_register_reset_next = 1;
				TMP_26_value = 0;
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
							TMP_28_btint_a = output_btint_a_13;
							TMP_28_btint_b = output_btint_b_13;
							TMP_28_overflow = output_overflow_13;
							output_btint_a_12 = TMP_28_btint_a;
							output_btint_b_12 = TMP_28_btint_b;
							output_overflow_12 = TMP_28_overflow;
						end
				end
				TMP_26_isNegative = TMP_26_value < 0;
				TMP_26_i = 0;
				TMP_27_btint_a = output_btint_a_12;
				TMP_27_btint_b = output_btint_b_12;
				TMP_27_overflow = output_overflow_12;
				multiplier_product_btint_a_next = TMP_27_btint_a;
				multiplier_product_btint_b_next = TMP_27_btint_b;
				multiplier_product_overflow_next = TMP_27_overflow;
			end
			else if (lock_next > 0) begin
				index_2 = 0;
				TMP_29 = (b_btint_a_next[index_2] + b_btint_b_next[index_2]) - 1;
				if (|TMP_29) begin
					adder_subtractor_b_btint_a_next = multiplier_a_btint_a;
					adder_subtractor_b_btint_b_next = multiplier_a_btint_b;
					adder_subtractor_b_overflow_next = multiplier_a_overflow;
				end
				else begin
					TMP_30_value = 0;
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
								TMP_32_btint_a = output_btint_a_15;
								TMP_32_btint_b = output_btint_b_15;
								TMP_32_overflow = output_overflow_15;
								output_btint_a_14 = TMP_32_btint_a;
								output_btint_b_14 = TMP_32_btint_b;
								output_overflow_14 = TMP_32_overflow;
							end
					end
					TMP_30_isNegative = TMP_30_value < 0;
					TMP_30_i = 0;
					TMP_31_btint_a = output_btint_a_14;
					TMP_31_btint_b = output_btint_b_14;
					TMP_31_overflow = output_overflow_14;
					adder_subtractor_b_btint_a_next = TMP_31_btint_a;
					adder_subtractor_b_btint_b_next = TMP_31_btint_b;
					adder_subtractor_b_overflow_next = TMP_31_overflow;
				end
				index_2 = 0;
				TMP_33 = (b_btint_a_next[index_2] + b_btint_b_next[index_2]) - 1;
				adder_subtractor_subtract_next = TMP_33 == -2'sd1;
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
							TMP_35_btint_a = output_btint_a_17;
							TMP_35_btint_b = output_btint_b_17;
							TMP_35_overflow = output_overflow_17;
							output_btint_a_16 = TMP_35_btint_a;
							output_btint_b_16 = TMP_35_btint_b;
							output_overflow_16 = TMP_35_overflow;
						end
				end
				TMP_34_btint_a = output_btint_a_16;
				TMP_34_btint_b = output_btint_b_16;
				TMP_34_overflow = output_overflow_16;
				b_btint_a_next = TMP_34_btint_a;
				b_btint_b_next = TMP_34_btint_b;
				b_overflow_next = TMP_34_overflow;
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
				TMP_36_btint_a = output_btint_a_18;
				TMP_36_btint_b = output_btint_b_18;
				TMP_36_overflow = output_overflow_18;
				product_btint_a = TMP_36_btint_a;
				product_btint_b = TMP_36_btint_b;
				product_overflow = TMP_36_overflow;
				begin : sv2v_autoblock_9
					integer i_13;
					for (i_13 = 8; i_13 < 16; i_13 = i_13 + 1)
						begin
							product_index = i_13;
							TMP_37 = (product_btint_a[product_index] + product_btint_b[product_index]) - 1;
							if (|TMP_37) begin
								product_index = i_13;
								TMP_38 = (product_btint_a[product_index] + product_btint_b[product_index]) - 1;
								product_value = TMP_38;
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
								TMP_39_btint_a = output_btint_a_19;
								TMP_39_btint_b = output_btint_b_19;
								TMP_39_overflow = output_overflow_19;
								product_btint_a = TMP_39_btint_a;
								product_btint_b = TMP_39_btint_b;
								product_overflow = TMP_39_overflow;
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
			reg [7:0] output_btint_a_2;
			reg [7:0] output_btint_b_2;
			reg [1:0] output_overflow_2;
			integer output_index_1;
			integer output_value_1;
			reg [7:0] output_btint_a_3;
			reg [7:0] output_btint_b_3;
			reg [1:0] output_overflow_3;
			reg [7:0] TMP_5_btint_a;
			reg [7:0] TMP_5_btint_b;
			reg [1:0] TMP_5_overflow;
			reg TMP_3_isNegative;
			integer TMP_3_i;
			reg [7:0] TMP_4_btint_a;
			reg [7:0] TMP_4_btint_b;
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
			reg [7:0] TMP_8_btint_a;
			reg [7:0] TMP_8_btint_b;
			reg [1:0] TMP_8_overflow;
			reg TMP_6_isNegative;
			integer TMP_6_i;
			reg [7:0] TMP_7_btint_a;
			reg [7:0] TMP_7_btint_b;
			reg [1:0] TMP_7_overflow;
			integer TMP_9_value;
			reg [7:0] output_btint_a_6;
			reg [7:0] output_btint_b_6;
			reg [1:0] output_overflow_6;
			integer output_index_3;
			integer output_value_3;
			reg [7:0] output_btint_a_7;
			reg [7:0] output_btint_b_7;
			reg [1:0] output_overflow_7;
			reg [7:0] TMP_11_btint_a;
			reg [7:0] TMP_11_btint_b;
			reg [1:0] TMP_11_overflow;
			reg TMP_9_isNegative;
			integer TMP_9_i;
			reg [7:0] TMP_10_btint_a;
			reg [7:0] TMP_10_btint_b;
			reg [1:0] TMP_10_overflow;
			integer TMP_12_value;
			reg [15:0] output_btint_a_8;
			reg [15:0] output_btint_b_8;
			reg [1:0] output_overflow_8;
			integer output_index_4;
			integer output_value_4;
			reg [15:0] output_btint_a_9;
			reg [15:0] output_btint_b_9;
			reg [1:0] output_overflow_9;
			reg [15:0] TMP_14_btint_a;
			reg [15:0] TMP_14_btint_b;
			reg [1:0] TMP_14_overflow;
			reg TMP_12_isNegative;
			integer TMP_12_i;
			reg [15:0] TMP_13_btint_a;
			reg [15:0] TMP_13_btint_b;
			reg [1:0] TMP_13_overflow;
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
			a_old_btint_a <= TMP_1_btint_a;
			a_old_btint_b <= TMP_1_btint_b;
			a_old_overflow = TMP_1_overflow;
			TMP_3_value = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			begin : sv2v_autoblock_12
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
			b_old_btint_a <= TMP_4_btint_a;
			b_old_btint_b <= TMP_4_btint_b;
			b_old_overflow = TMP_4_overflow;
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
						TMP_8_btint_a = output_btint_a_5;
						TMP_8_btint_b = output_btint_b_5;
						TMP_8_overflow = output_overflow_5;
						output_btint_a_4 = TMP_8_btint_a;
						output_btint_b_4 = TMP_8_btint_b;
						output_overflow_4 = TMP_8_overflow;
					end
			end
			TMP_6_isNegative = TMP_6_value < 0;
			TMP_6_i = 0;
			TMP_7_btint_a = output_btint_a_4;
			TMP_7_btint_b = output_btint_b_4;
			TMP_7_overflow = output_overflow_4;
			b_btint_a <= TMP_7_btint_a;
			b_btint_b <= TMP_7_btint_b;
			b_overflow <= TMP_7_overflow;
			lock <= 11;
			TMP_9_value = 0;
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
						TMP_11_btint_a = output_btint_a_7;
						TMP_11_btint_b = output_btint_b_7;
						TMP_11_overflow = output_overflow_7;
						output_btint_a_6 = TMP_11_btint_a;
						output_btint_b_6 = TMP_11_btint_b;
						output_overflow_6 = TMP_11_overflow;
					end
			end
			TMP_9_isNegative = TMP_9_value < 0;
			TMP_9_i = 0;
			TMP_10_btint_a = output_btint_a_6;
			TMP_10_btint_b = output_btint_b_6;
			TMP_10_overflow = output_overflow_6;
			adder_subtractor_b_btint_a <= TMP_10_btint_a;
			adder_subtractor_b_btint_b <= TMP_10_btint_b;
			adder_subtractor_b_overflow <= TMP_10_overflow;
			shift_register_reset <= 1;
			TMP_12_value = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			begin : sv2v_autoblock_15
				integer i_4;
				for (i_4 = 0; i_4 < 16; i_4 = i_4 + 1)
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
						TMP_14_btint_a = output_btint_a_9;
						TMP_14_btint_b = output_btint_b_9;
						TMP_14_overflow = output_overflow_9;
						output_btint_a_8 = TMP_14_btint_a;
						output_btint_b_8 = TMP_14_btint_b;
						output_overflow_8 = TMP_14_overflow;
					end
			end
			TMP_12_isNegative = TMP_12_value < 0;
			TMP_12_i = 0;
			TMP_13_btint_a = output_btint_a_8;
			TMP_13_btint_b = output_btint_b_8;
			TMP_13_overflow = output_overflow_8;
			multiplier_product_btint_a <= TMP_13_btint_a;
			multiplier_product_btint_b <= TMP_13_btint_b;
			multiplier_product_overflow <= TMP_13_overflow;
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
		reg [7:0] TMP_5_btint_a;
		reg [7:0] TMP_5_btint_b;
		reg [1:0] TMP_5_overflow;
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
		reg [7:0] TMP_7_btint_a;
		reg [7:0] TMP_7_btint_b;
		reg [1:0] TMP_7_overflow;
		reg [7:0] TMP_6_btint_a;
		reg [7:0] TMP_6_btint_b;
		reg [1:0] TMP_6_overflow;
		integer TMP_8;
		integer input_index;
		integer state_index_1;
		integer state_value;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		reg [7:0] TMP_9_btint_a;
		reg [7:0] TMP_9_btint_b;
		reg [1:0] TMP_9_overflow;
		integer input_from;
		integer input_to;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg [7:0] TMP_11_btint_a;
		reg [7:0] TMP_11_btint_b;
		reg [1:0] TMP_11_overflow;
		begin
			output_btint_a_4 = 0;
			output_btint_b_4 = 0;
			output_overflow_4 = 0;
			output_index_2 = 0;
			output_value_2 = 0;
			output_btint_a_5 = 0;
			output_btint_b_5 = 0;
			output_overflow_5 = 0;
			TMP_7_btint_a = 0;
			TMP_7_btint_b = 0;
			TMP_7_overflow = 0;
			TMP_6_btint_a = 0;
			TMP_6_btint_b = 0;
			TMP_6_overflow = 0;
			TMP_8 = 0;
			output_btint_a_6 = 0;
			output_btint_b_6 = 0;
			output_overflow_6 = 0;
			TMP_9_btint_a = 0;
			TMP_9_btint_b = 0;
			TMP_9_overflow = 0;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			TMP_11_btint_a = 0;
			TMP_11_btint_b = 0;
			TMP_11_overflow = 0;
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
						TMP_7_btint_a = output_btint_a_5;
						TMP_7_btint_b = output_btint_b_5;
						TMP_7_overflow = output_overflow_5;
						output_btint_a_4 = TMP_7_btint_a;
						output_btint_b_4 = TMP_7_btint_b;
						output_overflow_4 = TMP_7_overflow;
					end
			end
			TMP_6_btint_a = output_btint_a_4;
			TMP_6_btint_b = output_btint_b_4;
			TMP_6_overflow = output_overflow_4;
			state_btint_a = TMP_6_btint_a;
			state_btint_b = TMP_6_btint_b;
			state_overflow = TMP_6_overflow;
			input_index = 0;
			TMP_8 = (input_btint_a[input_index] + input_btint_b[input_index]) - 1;
			state_index_1 = 7;
			state_value = TMP_8;
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
			TMP_9_btint_a = output_btint_a_6;
			TMP_9_btint_b = output_btint_b_6;
			TMP_9_overflow = output_overflow_6;
			state_btint_a = TMP_9_btint_a;
			state_btint_b = TMP_9_btint_b;
			state_overflow = TMP_9_overflow;
			shift_register_state_btint_a_next = state_btint_a;
			shift_register_state_btint_b_next = state_btint_b;
			shift_register_state_overflow_next = state_overflow;
			input_from = 8;
			input_to = 1;
			output_btint_a_7 = 0;
			output_btint_b_7 = 0;
			output_overflow_7 = 0;
			output_btint_a_7 = input_btint_a[input_to+:8];
			output_btint_b_7 = input_btint_b[input_to+:8];
			output_overflow_7 = input_overflow;
			TMP_11_btint_a = output_btint_a_7;
			TMP_11_btint_b = output_btint_b_7;
			TMP_11_overflow = output_overflow_7;
			shift_register_output_btint_a_next = TMP_11_btint_a;
			shift_register_output_btint_b_next = TMP_11_btint_b;
			shift_register_output_overflow_next = TMP_11_overflow;
		end
	endtask
	always @(shift_register_state_overflow or shift_register_state_btint_b or shift_register_state_btint_a or shift_register_input_overflow or shift_register_input_btint_b or shift_register_input_btint_a or shift_register_state_overflow or shift_register_state_btint_b or shift_register_state_btint_a or shift_register_output_overflow or shift_register_output_btint_b or shift_register_output_btint_a or _sv2v_0) begin : shift_comb
		if (_sv2v_0)
			;
		shift_func;
	end
	always @(posedge shift_register_clock) begin : shift_ff
		if (shift_register_reset) begin : sv2v_autoblock_2
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
			reg [7:0] TMP_5_btint_a;
			reg [7:0] TMP_5_btint_b;
			reg [1:0] TMP_5_overflow;
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
			begin : sv2v_autoblock_3
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
			begin : sv2v_autoblock_4
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
module MATRIX_VECTOR_CONTROL (
	matrix_vector_control_clock,
	matrix_vector_control_reset,
	matrix_vector_control_valid,
	matrix_vector_control_matrix_btint_a,
	matrix_vector_control_matrix_btint_b,
	matrix_vector_control_matrix_overflow,
	matrix_vector_control_vector_btint_a,
	matrix_vector_control_vector_btint_b,
	matrix_vector_control_vector_overflow,
	matrix_vector_control_c_out_btint_a,
	matrix_vector_control_c_out_btint_b,
	matrix_vector_control_c_out_overflow,
	matrix_vector_control_result_btint_a,
	matrix_vector_control_result_btint_b,
	matrix_vector_control_result_overflow,
	matrix_vector_control_b_in_btint_a,
	matrix_vector_control_b_in_btint_b,
	matrix_vector_control_b_in_overflow,
	matrix_vector_control_c_in_btint_a,
	matrix_vector_control_c_in_btint_b,
	matrix_vector_control_c_in_overflow,
	matrix_vector_control_reset_out,
	matrix_vector_control_done
);
	reg _sv2v_0;
	input wire matrix_vector_control_clock;
	input wire matrix_vector_control_reset;
	input wire matrix_vector_control_valid;
	input wire [95:0] matrix_vector_control_matrix_btint_a;
	input wire [95:0] matrix_vector_control_matrix_btint_b;
	input wire [23:0] matrix_vector_control_matrix_overflow;
	input wire [31:0] matrix_vector_control_vector_btint_a;
	input wire [31:0] matrix_vector_control_vector_btint_b;
	input wire [7:0] matrix_vector_control_vector_overflow;
	input wire [31:0] matrix_vector_control_c_out_btint_a;
	input wire [31:0] matrix_vector_control_c_out_btint_b;
	input wire [7:0] matrix_vector_control_c_out_overflow;
	output reg [23:0] matrix_vector_control_result_btint_a;
	output reg [23:0] matrix_vector_control_result_btint_b;
	output reg [5:0] matrix_vector_control_result_overflow;
	output reg [31:0] matrix_vector_control_b_in_btint_a;
	output reg [31:0] matrix_vector_control_b_in_btint_b;
	output reg [7:0] matrix_vector_control_b_in_overflow;
	output reg [31:0] matrix_vector_control_c_in_btint_a;
	output reg [31:0] matrix_vector_control_c_in_btint_b;
	output reg [7:0] matrix_vector_control_c_in_overflow;
	output reg matrix_vector_control_reset_out;
	output reg matrix_vector_control_done;
	reg [3:0] control_WAIT_N_COUNTER;
	reg [3:0] control_WAIT_N_COUNTER_next;
	reg [23:0] matrix_vector_control_result_btint_a_next;
	reg [23:0] matrix_vector_control_result_btint_b_next;
	reg [5:0] matrix_vector_control_result_overflow_next;
	reg [31:0] matrix_vector_control_b_in_btint_a_next;
	reg [31:0] matrix_vector_control_b_in_btint_b_next;
	reg [7:0] matrix_vector_control_b_in_overflow_next;
	reg [31:0] matrix_vector_control_c_in_btint_a_next;
	reg [31:0] matrix_vector_control_c_in_btint_b_next;
	reg [7:0] matrix_vector_control_c_in_overflow_next;
	reg matrix_vector_control_reset_out_next;
	reg matrix_vector_control_done_next;
	reg [23:0] result_btint_a;
	reg [23:0] result_btint_a_next;
	reg [23:0] result_btint_b;
	reg [23:0] result_btint_b_next;
	reg [5:0] result_overflow;
	reg [5:0] result_overflow_next;
	reg signed [127:0] index;
	reg signed [127:0] index_next;
	reg vector_done;
	reg vector_done_next;
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
		reg [7:0] TMP_5_btint_a;
		reg [7:0] TMP_5_btint_b;
		reg [1:0] TMP_5_overflow;
		reg TMP_3_isNegative;
		integer TMP_3_i;
		reg [7:0] TMP_4_btint_a;
		reg [7:0] TMP_4_btint_b;
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
		reg [7:0] TMP_8_btint_a;
		reg [7:0] TMP_8_btint_b;
		reg [1:0] TMP_8_overflow;
		reg TMP_6_isNegative;
		integer TMP_6_i;
		reg [7:0] TMP_7_btint_a;
		reg [7:0] TMP_7_btint_b;
		reg [1:0] TMP_7_overflow;
		integer TMP_9_value;
		reg [7:0] output_btint_a_6;
		reg [7:0] output_btint_b_6;
		reg [1:0] output_overflow_6;
		integer output_index_3;
		integer output_value_3;
		reg [7:0] output_btint_a_7;
		reg [7:0] output_btint_b_7;
		reg [1:0] output_overflow_7;
		reg [7:0] TMP_11_btint_a;
		reg [7:0] TMP_11_btint_b;
		reg [1:0] TMP_11_overflow;
		reg TMP_9_isNegative;
		integer TMP_9_i;
		reg [7:0] TMP_10_btint_a;
		reg [7:0] TMP_10_btint_b;
		reg [1:0] TMP_10_overflow;
		reg [7:0] tmp_btint_a;
		reg [7:0] tmp_btint_b;
		reg [1:0] tmp_overflow;
		integer TMP_12_value;
		reg [7:0] output_btint_a_8;
		reg [7:0] output_btint_b_8;
		reg [1:0] output_overflow_8;
		integer output_index_4;
		integer output_value_4;
		reg [7:0] output_btint_a_9;
		reg [7:0] output_btint_b_9;
		reg [1:0] output_overflow_9;
		reg [7:0] TMP_14_btint_a;
		reg [7:0] TMP_14_btint_b;
		reg [1:0] TMP_14_overflow;
		reg TMP_12_isNegative;
		integer TMP_12_i;
		reg [7:0] TMP_13_btint_a;
		reg [7:0] TMP_13_btint_b;
		reg [1:0] TMP_13_overflow;
		reg [7:0] tmp_btint_a_1;
		reg [7:0] tmp_btint_b_1;
		reg [1:0] tmp_overflow_1;
		integer TMP_15_value;
		reg [7:0] output_btint_a_10;
		reg [7:0] output_btint_b_10;
		reg [1:0] output_overflow_10;
		integer output_index_5;
		integer output_value_5;
		reg [7:0] output_btint_a_11;
		reg [7:0] output_btint_b_11;
		reg [1:0] output_overflow_11;
		reg [7:0] TMP_17_btint_a;
		reg [7:0] TMP_17_btint_b;
		reg [1:0] TMP_17_overflow;
		reg TMP_15_isNegative;
		integer TMP_15_i;
		reg [7:0] TMP_16_btint_a;
		reg [7:0] TMP_16_btint_b;
		reg [1:0] TMP_16_overflow;
		integer TMP_18_value;
		reg [7:0] output_btint_a_12;
		reg [7:0] output_btint_b_12;
		reg [1:0] output_overflow_12;
		integer output_index_6;
		integer output_value_6;
		reg [7:0] output_btint_a_13;
		reg [7:0] output_btint_b_13;
		reg [1:0] output_overflow_13;
		reg [7:0] TMP_20_btint_a;
		reg [7:0] TMP_20_btint_b;
		reg [1:0] TMP_20_overflow;
		reg TMP_18_isNegative;
		integer TMP_18_i;
		reg [7:0] TMP_19_btint_a;
		reg [7:0] TMP_19_btint_b;
		reg [1:0] TMP_19_overflow;
		integer TMP_21_value;
		reg [7:0] output_btint_a_14;
		reg [7:0] output_btint_b_14;
		reg [1:0] output_overflow_14;
		integer output_index_7;
		integer output_value_7;
		reg [7:0] output_btint_a_15;
		reg [7:0] output_btint_b_15;
		reg [1:0] output_overflow_15;
		reg [7:0] TMP_23_btint_a;
		reg [7:0] TMP_23_btint_b;
		reg [1:0] TMP_23_overflow;
		reg TMP_21_isNegative;
		integer TMP_21_i;
		reg [7:0] TMP_22_btint_a;
		reg [7:0] TMP_22_btint_b;
		reg [1:0] TMP_22_overflow;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			tmp_btint_a = 0;
			tmp_btint_b = 0;
			tmp_overflow = 0;
			TMP_12_value = 0;
			output_btint_a_8 = 0;
			output_btint_b_8 = 0;
			output_overflow_8 = 0;
			output_index_4 = 0;
			output_value_4 = 0;
			output_btint_a_9 = 0;
			output_btint_b_9 = 0;
			output_overflow_9 = 0;
			TMP_14_btint_a = 0;
			TMP_14_btint_b = 0;
			TMP_14_overflow = 0;
			TMP_12_isNegative = 0;
			TMP_12_i = 0;
			TMP_13_btint_a = 0;
			TMP_13_btint_b = 0;
			TMP_13_overflow = 0;
			tmp_btint_a_1 = 0;
			tmp_btint_b_1 = 0;
			tmp_overflow_1 = 0;
			TMP_15_value = 0;
			output_btint_a_10 = 0;
			output_btint_b_10 = 0;
			output_overflow_10 = 0;
			output_index_5 = 0;
			output_value_5 = 0;
			output_btint_a_11 = 0;
			output_btint_b_11 = 0;
			output_overflow_11 = 0;
			TMP_17_btint_a = 0;
			TMP_17_btint_b = 0;
			TMP_17_overflow = 0;
			TMP_15_isNegative = 0;
			TMP_15_i = 0;
			TMP_16_btint_a = 0;
			TMP_16_btint_b = 0;
			TMP_16_overflow = 0;
			TMP_18_value = 0;
			output_btint_a_12 = 0;
			output_btint_b_12 = 0;
			output_overflow_12 = 0;
			output_index_6 = 0;
			output_value_6 = 0;
			output_btint_a_13 = 0;
			output_btint_b_13 = 0;
			output_overflow_13 = 0;
			TMP_20_btint_a = 0;
			TMP_20_btint_b = 0;
			TMP_20_overflow = 0;
			TMP_18_isNegative = 0;
			TMP_18_i = 0;
			TMP_19_btint_a = 0;
			TMP_19_btint_b = 0;
			TMP_19_overflow = 0;
			TMP_21_value = 0;
			output_btint_a_14 = 0;
			output_btint_b_14 = 0;
			output_overflow_14 = 0;
			output_index_7 = 0;
			output_value_7 = 0;
			output_btint_a_15 = 0;
			output_btint_b_15 = 0;
			output_overflow_15 = 0;
			TMP_23_btint_a = 0;
			TMP_23_btint_b = 0;
			TMP_23_overflow = 0;
			TMP_21_isNegative = 0;
			TMP_21_i = 0;
			TMP_22_btint_a = 0;
			TMP_22_btint_b = 0;
			TMP_22_overflow = 0;
			index_next = index;
			matrix_vector_control_b_in_btint_a_next = matrix_vector_control_b_in_btint_a;
			matrix_vector_control_b_in_btint_b_next = matrix_vector_control_b_in_btint_b;
			matrix_vector_control_b_in_overflow_next = matrix_vector_control_b_in_overflow;
			matrix_vector_control_c_in_btint_a_next = matrix_vector_control_c_in_btint_a;
			matrix_vector_control_c_in_btint_b_next = matrix_vector_control_c_in_btint_b;
			matrix_vector_control_c_in_overflow_next = matrix_vector_control_c_in_overflow;
			matrix_vector_control_done_next = matrix_vector_control_done;
			matrix_vector_control_reset_out_next = matrix_vector_control_reset_out;
			matrix_vector_control_result_btint_a_next = matrix_vector_control_result_btint_a;
			matrix_vector_control_result_btint_b_next = matrix_vector_control_result_btint_b;
			matrix_vector_control_result_overflow_next = matrix_vector_control_result_overflow;
			result_btint_a_next = result_btint_a;
			result_btint_b_next = result_btint_b;
			result_overflow_next = result_overflow;
			vector_done_next = vector_done;
			control_WAIT_N_COUNTER_next = control_WAIT_N_COUNTER;
			control_PROC_STATE_next = control_PROC_STATE;
			case (control_PROC_STATE)
				0: begin
					if (matrix_vector_control_valid) begin
						begin : sv2v_autoblock_1
							integer i_8;
							for (i_8 = 0; i_8 < 3; i_8 = i_8 + 1)
								begin
									matrix_vector_control_result_btint_a_next[(2 - i_8) * 8+:8] = result_btint_a_next[(2 - i_8) * 8+:8];
									matrix_vector_control_result_btint_b_next[(2 - i_8) * 8+:8] = result_btint_b_next[(2 - i_8) * 8+:8];
									matrix_vector_control_result_overflow_next[(2 - i_8) * 2+:2] = result_overflow_next[(2 - i_8) * 2+:2];
								end
						end
						if (index_next[0+:32] >= 4)
							matrix_vector_control_done_next = 1;
						else
							matrix_vector_control_done_next = 0;
						if (!vector_done_next) begin
							begin : sv2v_autoblock_2
								integer i_9;
								for (i_9 = 0; i_9 < 4; i_9 = i_9 + 1)
									begin
										tmp_btint_a = matrix_vector_control_vector_btint_a[(3 - i_9) * 8+:8];
										tmp_btint_b = matrix_vector_control_vector_btint_b[(3 - i_9) * 8+:8];
										tmp_overflow = matrix_vector_control_vector_overflow[(3 - i_9) * 2+:2];
										matrix_vector_control_b_in_btint_a_next[(3 - i_9) * 8+:8] = tmp_btint_a;
										matrix_vector_control_b_in_btint_b_next[(3 - i_9) * 8+:8] = tmp_btint_b;
										matrix_vector_control_b_in_overflow_next[(3 - i_9) * 2+:2] = tmp_overflow;
										matrix_vector_control_reset_out_next = 1;
									end
							end
							vector_done_next = 1;
						end
						else begin
							matrix_vector_control_reset_out_next = 0;
							begin : sv2v_autoblock_3
								integer i_10;
								for (i_10 = 0; i_10 < 4; i_10 = i_10 + 1)
									if ((index_next[(3 - i_10) * 32+:32] < 0) || (index_next[(3 - i_10) * 32+:32] > 2)) begin
										TMP_12_value = 0;
										output_btint_a_8 = 0;
										output_btint_b_8 = 0;
										output_overflow_8 = 0;
										begin : sv2v_autoblock_4
											integer i_11;
											for (i_11 = 0; i_11 < 8; i_11 = i_11 + 1)
												begin
													output_index_4 = i_11;
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
													TMP_14_btint_a = output_btint_a_9;
													TMP_14_btint_b = output_btint_b_9;
													TMP_14_overflow = output_overflow_9;
													output_btint_a_8 = TMP_14_btint_a;
													output_btint_b_8 = TMP_14_btint_b;
													output_overflow_8 = TMP_14_overflow;
												end
										end
										TMP_12_isNegative = TMP_12_value < 0;
										TMP_12_i = 0;
										TMP_13_btint_a = output_btint_a_8;
										TMP_13_btint_b = output_btint_b_8;
										TMP_13_overflow = output_overflow_8;
										matrix_vector_control_b_in_btint_a_next[(3 - i_10) * 8+:8] = TMP_13_btint_a;
										matrix_vector_control_b_in_btint_b_next[(3 - i_10) * 8+:8] = TMP_13_btint_b;
										matrix_vector_control_b_in_overflow_next[(3 - i_10) * 2+:2] = TMP_13_overflow;
									end
									else begin
										tmp_btint_a_1 = matrix_vector_control_matrix_btint_a[(((2 - index_next[(3 - i_10) * 32+:32]) * 4) + (3 - i_10)) * 8+:8];
										tmp_btint_b_1 = matrix_vector_control_matrix_btint_b[(((2 - index_next[(3 - i_10) * 32+:32]) * 4) + (3 - i_10)) * 8+:8];
										tmp_overflow_1 = matrix_vector_control_matrix_overflow[(((2 - index_next[(3 - i_10) * 32+:32]) * 4) + (3 - i_10)) * 2+:2];
										matrix_vector_control_b_in_btint_a_next[(3 - i_10) * 8+:8] = tmp_btint_a_1;
										matrix_vector_control_b_in_btint_b_next[(3 - i_10) * 8+:8] = tmp_btint_b_1;
										matrix_vector_control_b_in_overflow_next[(3 - i_10) * 2+:2] = tmp_overflow_1;
									end
							end
							TMP_15_value = 0;
							output_btint_a_10 = 0;
							output_btint_b_10 = 0;
							output_overflow_10 = 0;
							begin : sv2v_autoblock_5
								integer i_12;
								for (i_12 = 0; i_12 < 8; i_12 = i_12 + 1)
									begin
										output_index_5 = i_12;
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
										TMP_17_btint_a = output_btint_a_11;
										TMP_17_btint_b = output_btint_b_11;
										TMP_17_overflow = output_overflow_11;
										output_btint_a_10 = TMP_17_btint_a;
										output_btint_b_10 = TMP_17_btint_b;
										output_overflow_10 = TMP_17_overflow;
									end
							end
							TMP_15_isNegative = TMP_15_value < 0;
							TMP_15_i = 0;
							TMP_16_btint_a = output_btint_a_10;
							TMP_16_btint_b = output_btint_b_10;
							TMP_16_overflow = output_overflow_10;
							matrix_vector_control_c_in_btint_a_next[24+:8] = TMP_16_btint_a;
							matrix_vector_control_c_in_btint_b_next[24+:8] = TMP_16_btint_b;
							matrix_vector_control_c_in_overflow_next[6+:2] = TMP_16_overflow;
							begin : sv2v_autoblock_6
								integer i_13;
								for (i_13 = 1; i_13 < 4; i_13 = i_13 + 1)
									begin
										matrix_vector_control_c_in_btint_a_next[(3 - i_13) * 8+:8] = matrix_vector_control_c_out_btint_a[(4 - i_13) * 8+:8];
										matrix_vector_control_c_in_btint_b_next[(3 - i_13) * 8+:8] = matrix_vector_control_c_out_btint_b[(4 - i_13) * 8+:8];
										matrix_vector_control_c_in_overflow_next[(3 - i_13) * 2+:2] = matrix_vector_control_c_out_overflow[(4 - i_13) * 2+:2];
									end
							end
							if ((index_next[0+:32] >= 1) && (index_next[0+:32] <= 3)) begin
								result_btint_a_next[(3 - index_next[0+:32]) * 8+:8] = matrix_vector_control_c_out_btint_a[0+:8];
								result_btint_b_next[(3 - index_next[0+:32]) * 8+:8] = matrix_vector_control_c_out_btint_b[0+:8];
								result_overflow_next[(3 - index_next[0+:32]) * 2+:2] = matrix_vector_control_c_out_overflow[0+:2];
							end
							begin : sv2v_autoblock_7
								integer i_14;
								for (i_14 = 0; i_14 < 4; i_14 = i_14 + 1)
									index_next[(3 - i_14) * 32+:32] = index_next[(3 - i_14) * 32+:32] + 1;
							end
						end
					end
					control_WAIT_N_COUNTER_next = 15;
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
						if (matrix_vector_control_valid) begin
							begin : sv2v_autoblock_8
								integer i_8;
								for (i_8 = 0; i_8 < 3; i_8 = i_8 + 1)
									begin
										matrix_vector_control_result_btint_a_next[(2 - i_8) * 8+:8] = result_btint_a_next[(2 - i_8) * 8+:8];
										matrix_vector_control_result_btint_b_next[(2 - i_8) * 8+:8] = result_btint_b_next[(2 - i_8) * 8+:8];
										matrix_vector_control_result_overflow_next[(2 - i_8) * 2+:2] = result_overflow_next[(2 - i_8) * 2+:2];
									end
							end
							if (index_next[0+:32] >= 4)
								matrix_vector_control_done_next = 1;
							else
								matrix_vector_control_done_next = 0;
							if (!vector_done_next) begin
								begin : sv2v_autoblock_9
									integer i_9;
									for (i_9 = 0; i_9 < 4; i_9 = i_9 + 1)
										begin
											tmp_btint_a = matrix_vector_control_vector_btint_a[(3 - i_9) * 8+:8];
											tmp_btint_b = matrix_vector_control_vector_btint_b[(3 - i_9) * 8+:8];
											tmp_overflow = matrix_vector_control_vector_overflow[(3 - i_9) * 2+:2];
											matrix_vector_control_b_in_btint_a_next[(3 - i_9) * 8+:8] = tmp_btint_a;
											matrix_vector_control_b_in_btint_b_next[(3 - i_9) * 8+:8] = tmp_btint_b;
											matrix_vector_control_b_in_overflow_next[(3 - i_9) * 2+:2] = tmp_overflow;
											matrix_vector_control_reset_out_next = 1;
										end
								end
								vector_done_next = 1;
							end
							else begin
								matrix_vector_control_reset_out_next = 0;
								begin : sv2v_autoblock_10
									integer i_10;
									for (i_10 = 0; i_10 < 4; i_10 = i_10 + 1)
										if ((index_next[(3 - i_10) * 32+:32] < 0) || (index_next[(3 - i_10) * 32+:32] > 2)) begin
											TMP_18_value = 0;
											output_btint_a_12 = 0;
											output_btint_b_12 = 0;
											output_overflow_12 = 0;
											begin : sv2v_autoblock_11
												integer i_15;
												for (i_15 = 0; i_15 < 8; i_15 = i_15 + 1)
													begin
														output_index_6 = i_15;
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
														TMP_20_btint_a = output_btint_a_13;
														TMP_20_btint_b = output_btint_b_13;
														TMP_20_overflow = output_overflow_13;
														output_btint_a_12 = TMP_20_btint_a;
														output_btint_b_12 = TMP_20_btint_b;
														output_overflow_12 = TMP_20_overflow;
													end
											end
											TMP_18_isNegative = TMP_18_value < 0;
											TMP_18_i = 0;
											TMP_19_btint_a = output_btint_a_12;
											TMP_19_btint_b = output_btint_b_12;
											TMP_19_overflow = output_overflow_12;
											matrix_vector_control_b_in_btint_a_next[(3 - i_10) * 8+:8] = TMP_19_btint_a;
											matrix_vector_control_b_in_btint_b_next[(3 - i_10) * 8+:8] = TMP_19_btint_b;
											matrix_vector_control_b_in_overflow_next[(3 - i_10) * 2+:2] = TMP_19_overflow;
										end
										else begin
											tmp_btint_a_1 = matrix_vector_control_matrix_btint_a[(((2 - index_next[(3 - i_10) * 32+:32]) * 4) + (3 - i_10)) * 8+:8];
											tmp_btint_b_1 = matrix_vector_control_matrix_btint_b[(((2 - index_next[(3 - i_10) * 32+:32]) * 4) + (3 - i_10)) * 8+:8];
											tmp_overflow_1 = matrix_vector_control_matrix_overflow[(((2 - index_next[(3 - i_10) * 32+:32]) * 4) + (3 - i_10)) * 2+:2];
											matrix_vector_control_b_in_btint_a_next[(3 - i_10) * 8+:8] = tmp_btint_a_1;
											matrix_vector_control_b_in_btint_b_next[(3 - i_10) * 8+:8] = tmp_btint_b_1;
											matrix_vector_control_b_in_overflow_next[(3 - i_10) * 2+:2] = tmp_overflow_1;
										end
								end
								TMP_21_value = 0;
								output_btint_a_14 = 0;
								output_btint_b_14 = 0;
								output_overflow_14 = 0;
								begin : sv2v_autoblock_12
									integer i_16;
									for (i_16 = 0; i_16 < 8; i_16 = i_16 + 1)
										begin
											output_index_7 = i_16;
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
											TMP_23_btint_a = output_btint_a_15;
											TMP_23_btint_b = output_btint_b_15;
											TMP_23_overflow = output_overflow_15;
											output_btint_a_14 = TMP_23_btint_a;
											output_btint_b_14 = TMP_23_btint_b;
											output_overflow_14 = TMP_23_overflow;
										end
								end
								TMP_21_isNegative = TMP_21_value < 0;
								TMP_21_i = 0;
								TMP_22_btint_a = output_btint_a_14;
								TMP_22_btint_b = output_btint_b_14;
								TMP_22_overflow = output_overflow_14;
								matrix_vector_control_c_in_btint_a_next[24+:8] = TMP_22_btint_a;
								matrix_vector_control_c_in_btint_b_next[24+:8] = TMP_22_btint_b;
								matrix_vector_control_c_in_overflow_next[6+:2] = TMP_22_overflow;
								begin : sv2v_autoblock_13
									integer i_13;
									for (i_13 = 1; i_13 < 4; i_13 = i_13 + 1)
										begin
											matrix_vector_control_c_in_btint_a_next[(3 - i_13) * 8+:8] = matrix_vector_control_c_out_btint_a[(4 - i_13) * 8+:8];
											matrix_vector_control_c_in_btint_b_next[(3 - i_13) * 8+:8] = matrix_vector_control_c_out_btint_b[(4 - i_13) * 8+:8];
											matrix_vector_control_c_in_overflow_next[(3 - i_13) * 2+:2] = matrix_vector_control_c_out_overflow[(4 - i_13) * 2+:2];
										end
								end
								if ((index_next[0+:32] >= 1) && (index_next[0+:32] <= 3)) begin
									result_btint_a_next[(3 - index_next[0+:32]) * 8+:8] = matrix_vector_control_c_out_btint_a[0+:8];
									result_btint_b_next[(3 - index_next[0+:32]) * 8+:8] = matrix_vector_control_c_out_btint_b[0+:8];
									result_overflow_next[(3 - index_next[0+:32]) * 2+:2] = matrix_vector_control_c_out_overflow[0+:2];
								end
								begin : sv2v_autoblock_14
									integer i_14;
									for (i_14 = 0; i_14 < 4; i_14 = i_14 + 1)
										index_next[(3 - i_14) * 32+:32] = index_next[(3 - i_14) * 32+:32] + 1;
								end
							end
						end
						control_WAIT_N_COUNTER_next = 15;
						control_PROC_STATE_next = 1;
						_sv2v_jump = 2'b11;
					end
				end
			endcase
		end
	endtask
	always @(matrix_vector_control_c_out_overflow[0+:2] or index_next[0+:32] or matrix_vector_control_c_out_btint_b[0+:8] or index_next[0+:32] or matrix_vector_control_c_out_btint_a[0+:8] or index_next[0+:32] or index_next[0+:32] or index_next[0+:32] or matrix_vector_control_c_out_overflow or matrix_vector_control_c_out_btint_b or matrix_vector_control_c_out_btint_a or index_next or matrix_vector_control_matrix_overflow or index_next or matrix_vector_control_matrix_btint_b or index_next or matrix_vector_control_matrix_btint_a or index_next or index_next or matrix_vector_control_vector_overflow or matrix_vector_control_vector_btint_b or matrix_vector_control_vector_btint_a or vector_done_next or index_next[0+:32] or result_overflow_next or result_btint_b_next or result_btint_a_next or matrix_vector_control_valid or control_WAIT_N_COUNTER or control_WAIT_N_COUNTER or matrix_vector_control_c_out_overflow[0+:2] or index_next[0+:32] or matrix_vector_control_c_out_btint_b[0+:8] or index_next[0+:32] or matrix_vector_control_c_out_btint_a[0+:8] or index_next[0+:32] or index_next[0+:32] or index_next[0+:32] or matrix_vector_control_c_out_overflow or matrix_vector_control_c_out_btint_b or matrix_vector_control_c_out_btint_a or index_next or matrix_vector_control_matrix_overflow or index_next or matrix_vector_control_matrix_btint_b or index_next or matrix_vector_control_matrix_btint_a or index_next or index_next or matrix_vector_control_vector_overflow or matrix_vector_control_vector_btint_b or matrix_vector_control_vector_btint_a or vector_done_next or index_next[0+:32] or result_overflow_next or result_btint_b_next or result_btint_a_next or matrix_vector_control_valid or control_PROC_STATE or control_PROC_STATE or control_WAIT_N_COUNTER or vector_done or result_overflow or result_btint_b or result_btint_a or matrix_vector_control_result_overflow or matrix_vector_control_result_btint_b or matrix_vector_control_result_btint_a or matrix_vector_control_reset_out or matrix_vector_control_done or matrix_vector_control_c_in_overflow or matrix_vector_control_c_in_btint_b or matrix_vector_control_c_in_btint_a or matrix_vector_control_b_in_overflow or matrix_vector_control_b_in_btint_b or matrix_vector_control_b_in_btint_a or index or _sv2v_0) begin : control_comb
		if (_sv2v_0)
			;
		control_func;
	end
	always @(posedge matrix_vector_control_clock) begin : control_ff
		if (matrix_vector_control_reset) begin : sv2v_autoblock_15
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
			reg [7:0] TMP_5_btint_a;
			reg [7:0] TMP_5_btint_b;
			reg [1:0] TMP_5_overflow;
			reg TMP_3_isNegative;
			integer TMP_3_i;
			reg [7:0] TMP_4_btint_a;
			reg [7:0] TMP_4_btint_b;
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
			reg [7:0] TMP_8_btint_a;
			reg [7:0] TMP_8_btint_b;
			reg [1:0] TMP_8_overflow;
			reg TMP_6_isNegative;
			integer TMP_6_i;
			reg [7:0] TMP_7_btint_a;
			reg [7:0] TMP_7_btint_b;
			reg [1:0] TMP_7_overflow;
			integer TMP_9_value;
			reg [7:0] output_btint_a_6;
			reg [7:0] output_btint_b_6;
			reg [1:0] output_overflow_6;
			integer output_index_3;
			integer output_value_3;
			reg [7:0] output_btint_a_7;
			reg [7:0] output_btint_b_7;
			reg [1:0] output_overflow_7;
			reg [7:0] TMP_11_btint_a;
			reg [7:0] TMP_11_btint_b;
			reg [1:0] TMP_11_overflow;
			reg TMP_9_isNegative;
			integer TMP_9_i;
			reg [7:0] TMP_10_btint_a;
			reg [7:0] TMP_10_btint_b;
			reg [1:0] TMP_10_overflow;
			begin : sv2v_autoblock_16
				integer i;
				for (i = 0; i < 3; i = i + 1)
					begin
						TMP_0_value = 0;
						output_btint_a = 0;
						output_btint_b = 0;
						output_overflow = 0;
						begin : sv2v_autoblock_17
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
						result_btint_a[(2 - i) * 8+:8] <= TMP_1_btint_a;
						result_btint_b[(2 - i) * 8+:8] <= TMP_1_btint_b;
						result_overflow[(2 - i) * 2+:2] <= TMP_1_overflow;
					end
			end
			begin : sv2v_autoblock_18
				integer i_2;
				for (i_2 = 0; i_2 < 4; i_2 = i_2 + 1)
					index[(3 - i_2) * 32+:32] <= -i_2;
			end
			vector_done <= 0;
			begin : sv2v_autoblock_19
				integer i_3;
				for (i_3 = 0; i_3 < 3; i_3 = i_3 + 1)
					begin
						TMP_3_value = 0;
						output_btint_a_2 = 0;
						output_btint_b_2 = 0;
						output_overflow_2 = 0;
						begin : sv2v_autoblock_20
							integer i_4;
							for (i_4 = 0; i_4 < 8; i_4 = i_4 + 1)
								begin
									output_index_1 = i_4;
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
						matrix_vector_control_result_btint_a[(2 - i_3) * 8+:8] <= TMP_4_btint_a;
						matrix_vector_control_result_btint_b[(2 - i_3) * 8+:8] <= TMP_4_btint_b;
						matrix_vector_control_result_overflow[(2 - i_3) * 2+:2] <= TMP_4_overflow;
					end
			end
			begin : sv2v_autoblock_21
				integer i_5;
				for (i_5 = 0; i_5 < 4; i_5 = i_5 + 1)
					begin
						TMP_6_value = 0;
						output_btint_a_4 = 0;
						output_btint_b_4 = 0;
						output_overflow_4 = 0;
						begin : sv2v_autoblock_22
							integer i_6;
							for (i_6 = 0; i_6 < 8; i_6 = i_6 + 1)
								begin
									output_index_2 = i_6;
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
									TMP_8_btint_a = output_btint_a_5;
									TMP_8_btint_b = output_btint_b_5;
									TMP_8_overflow = output_overflow_5;
									output_btint_a_4 = TMP_8_btint_a;
									output_btint_b_4 = TMP_8_btint_b;
									output_overflow_4 = TMP_8_overflow;
								end
						end
						TMP_6_isNegative = TMP_6_value < 0;
						TMP_6_i = 0;
						TMP_7_btint_a = output_btint_a_4;
						TMP_7_btint_b = output_btint_b_4;
						TMP_7_overflow = output_overflow_4;
						matrix_vector_control_b_in_btint_a[(3 - i_5) * 8+:8] <= TMP_7_btint_a;
						matrix_vector_control_b_in_btint_b[(3 - i_5) * 8+:8] <= TMP_7_btint_b;
						matrix_vector_control_b_in_overflow[(3 - i_5) * 2+:2] <= TMP_7_overflow;
						TMP_9_value = 0;
						output_btint_a_6 = 0;
						output_btint_b_6 = 0;
						output_overflow_6 = 0;
						begin : sv2v_autoblock_23
							integer i_7;
							for (i_7 = 0; i_7 < 8; i_7 = i_7 + 1)
								begin
									output_index_3 = i_7;
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
									TMP_11_btint_a = output_btint_a_7;
									TMP_11_btint_b = output_btint_b_7;
									TMP_11_overflow = output_overflow_7;
									output_btint_a_6 = TMP_11_btint_a;
									output_btint_b_6 = TMP_11_btint_b;
									output_overflow_6 = TMP_11_overflow;
								end
						end
						TMP_9_isNegative = TMP_9_value < 0;
						TMP_9_i = 0;
						TMP_10_btint_a = output_btint_a_6;
						TMP_10_btint_b = output_btint_b_6;
						TMP_10_overflow = output_overflow_6;
						matrix_vector_control_c_in_btint_a[(3 - i_5) * 8+:8] <= TMP_10_btint_a;
						matrix_vector_control_c_in_btint_b[(3 - i_5) * 8+:8] <= TMP_10_btint_b;
						matrix_vector_control_c_in_overflow[(3 - i_5) * 2+:2] <= TMP_10_overflow;
					end
			end
			matrix_vector_control_reset_out <= 0;
			matrix_vector_control_done <= 0;
			control_PROC_STATE <= 0;
			control_WAIT_N_COUNTER <= 0;
		end
		else begin
			control_WAIT_N_COUNTER <= control_WAIT_N_COUNTER_next;
			matrix_vector_control_result_btint_a <= matrix_vector_control_result_btint_a_next;
			matrix_vector_control_result_btint_b <= matrix_vector_control_result_btint_b_next;
			matrix_vector_control_result_overflow <= matrix_vector_control_result_overflow_next;
			matrix_vector_control_b_in_btint_a <= matrix_vector_control_b_in_btint_a_next;
			matrix_vector_control_b_in_btint_b <= matrix_vector_control_b_in_btint_b_next;
			matrix_vector_control_b_in_overflow <= matrix_vector_control_b_in_overflow_next;
			matrix_vector_control_c_in_btint_a <= matrix_vector_control_c_in_btint_a_next;
			matrix_vector_control_c_in_btint_b <= matrix_vector_control_c_in_btint_b_next;
			matrix_vector_control_c_in_overflow <= matrix_vector_control_c_in_overflow_next;
			matrix_vector_control_reset_out <= matrix_vector_control_reset_out_next;
			matrix_vector_control_done <= matrix_vector_control_done_next;
			result_btint_a <= result_btint_a_next;
			result_btint_b <= result_btint_b_next;
			result_overflow <= result_overflow_next;
			index <= index_next;
			vector_done <= vector_done_next;
			control_PROC_STATE <= control_PROC_STATE_next;
		end
	end
	initial _sv2v_0 = 0;
endmodule
module UART_TRANSMITTER (
	uart_transmitter_clock,
	uart_transmitter_reset,
	uart_transmitter_input_btint_a,
	uart_transmitter_input_btint_b,
	uart_transmitter_input_overflow,
	uart_transmitter_output
);
	reg _sv2v_0;
	input wire uart_transmitter_clock;
	input wire uart_transmitter_reset;
	input wire [23:0] uart_transmitter_input_btint_a;
	input wire [23:0] uart_transmitter_input_btint_b;
	input wire [5:0] uart_transmitter_input_overflow;
	output reg [0:2] uart_transmitter_output;
	reg [0:2] uart_transmitter_output_next;
	reg signed [31:0] j;
	reg signed [31:0] j_next;
	reg signed [31:0] i;
	reg signed [31:0] i_next;
	reg [23:0] input_btint_a;
	reg [23:0] input_btint_a_next;
	reg [23:0] input_btint_b;
	reg [23:0] input_btint_b_next;
	reg [5:0] input_overflow;
	reg [5:0] input_overflow_next;
	reg [2:0] transmit_PROC_STATE;
	reg [2:0] transmit_PROC_STATE_next;
	task transmit_func;
		integer input_index;
		reg [7:0] output_btint_a;
		reg [7:0] output_btint_b;
		reg [1:0] output_overflow;
		integer output_index;
		integer output_value;
		reg [7:0] output_btint_a_1;
		reg [7:0] output_btint_b_1;
		reg [1:0] output_overflow_1;
		reg [7:0] TMP_1_btint_a;
		reg [7:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		reg [7:0] TMP_0_btint_a;
		reg [7:0] TMP_0_btint_b;
		reg [1:0] TMP_0_overflow;
		reg [0:1] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			input_index = 0;
			output_btint_a = 0;
			output_btint_b = 0;
			output_overflow = 0;
			output_index = 0;
			output_value = 0;
			output_btint_a_1 = 0;
			output_btint_b_1 = 0;
			output_overflow_1 = 0;
			TMP_1_btint_a = 0;
			TMP_1_btint_b = 0;
			TMP_1_overflow = 0;
			TMP_0_btint_a = 0;
			TMP_0_btint_b = 0;
			TMP_0_overflow = 0;
			i_next = i;
			input_btint_a_next = input_btint_a;
			input_btint_b_next = input_btint_b;
			input_overflow_next = input_overflow;
			j_next = j;
			uart_transmitter_output_next = uart_transmitter_output;
			transmit_PROC_STATE_next = transmit_PROC_STATE;
			case (transmit_PROC_STATE)
				0: begin
					begin : sv2v_autoblock_1
						integer i_2;
						for (i_2 = 0; i_2 < 3; i_2 = i_2 + 1)
							begin
								input_btint_a_next[(2 - i_2) * 8+:8] = uart_transmitter_input_btint_a[(2 - i_2) * 8+:8];
								input_btint_b_next[(2 - i_2) * 8+:8] = uart_transmitter_input_btint_b[(2 - i_2) * 8+:8];
								input_overflow_next[(2 - i_2) * 2+:2] = uart_transmitter_input_overflow[(2 - i_2) * 2+:2];
							end
					end
					i_next = 0;
					begin : sv2v_autoblock_2
						integer j_1;
						for (j_1 = 0; j_1 < 3; j_1 = j_1 + 1)
							uart_transmitter_output_next[j_1] = 0;
					end
					transmit_PROC_STATE_next = 1;
					_sv2v_jump = 2'b11;
				end
				1: begin
					begin : sv2v_autoblock_3
						integer j_2;
						for (j_2 = 0; j_2 < 3; j_2 = j_2 + 1)
							uart_transmitter_output_next[j_2] = input_btint_a_next[(2 - j_2) * 8];
					end
					transmit_PROC_STATE_next = 2;
					_sv2v_jump = 2'b11;
				end
				2: begin
					begin : sv2v_autoblock_4
						integer j_3;
						for (j_3 = 0; j_3 < 3; j_3 = j_3 + 1)
							uart_transmitter_output_next[j_3] = input_btint_b_next[(2 - j_3) * 8];
					end
					begin : sv2v_autoblock_5
						integer j_4;
						for (j_4 = 0; j_4 < 3; j_4 = j_4 + 1)
							begin
								input_index = 1;
								output_btint_a = 0;
								output_btint_b = 0;
								output_overflow = 0;
								output_btint_a[j_4] = input_btint_a_next[(2 - j_4) * 8+:8];
								output_btint_b[j_4] = input_btint_b_next[(2 - j_4) * 8+:8];
								output_overflow[j_4] = input_overflow_next[(2 - j_4) * 2+:2];
								begin : sv2v_autoblock_6
									integer i_3;
									for (i_3 = 0; i_3 < input_index; i_3 = i_3 + 1)
										begin
											output_btint_a[j_4] = output_btint_a[j_4] >>> 1;
											output_btint_b[j_4] = output_btint_b[j_4] >>> 1;
											output_index = 7;
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
											TMP_1_btint_a = output_btint_a_1;
											TMP_1_btint_b = output_btint_b_1;
											TMP_1_overflow = output_overflow_1;
											output_btint_a = TMP_1_btint_a;
											output_btint_b = TMP_1_btint_b;
											output_overflow = TMP_1_overflow;
										end
								end
								TMP_0_btint_a = output_btint_a;
								TMP_0_btint_b = output_btint_b;
								TMP_0_overflow = output_overflow;
								input_btint_a_next[(2 - j_4) * 8+:8] = TMP_0_btint_a;
								input_btint_b_next[(2 - j_4) * 8+:8] = TMP_0_btint_b;
								input_overflow_next[(2 - j_4) * 2+:2] = TMP_0_overflow;
							end
					end
					transmit_PROC_STATE_next = 3;
					_sv2v_jump = 2'b11;
				end
				3: begin
					j_next = 0;
					begin : sv2v_autoblock_7
						integer k;
						for (k = 0; k < 3; k = k + 1)
							uart_transmitter_output_next[k] = 1;
					end
					transmit_PROC_STATE_next = 4;
					_sv2v_jump = 2'b11;
				end
				4: begin
					j_next = j_next + 1;
					if (j_next < 2) begin
						begin : sv2v_autoblock_8
							integer k;
							for (k = 0; k < 3; k = k + 1)
								uart_transmitter_output_next[k] = 1;
						end
						transmit_PROC_STATE_next = 4;
						_sv2v_jump = 2'b11;
					end
					if (_sv2v_jump == 2'b00) begin
						i_next = i_next + 1;
						if (i_next < 8) begin
							begin : sv2v_autoblock_9
								integer j_1;
								for (j_1 = 0; j_1 < 3; j_1 = j_1 + 1)
									uart_transmitter_output_next[j_1] = 0;
							end
							transmit_PROC_STATE_next = 1;
							_sv2v_jump = 2'b11;
						end
						if (_sv2v_jump == 2'b00) begin
							begin : sv2v_autoblock_10
								integer i_2;
								for (i_2 = 0; i_2 < 3; i_2 = i_2 + 1)
									begin
										input_btint_a_next[(2 - i_2) * 8+:8] = uart_transmitter_input_btint_a[(2 - i_2) * 8+:8];
										input_btint_b_next[(2 - i_2) * 8+:8] = uart_transmitter_input_btint_b[(2 - i_2) * 8+:8];
										input_overflow_next[(2 - i_2) * 2+:2] = uart_transmitter_input_overflow[(2 - i_2) * 2+:2];
									end
							end
							i_next = 0;
							begin : sv2v_autoblock_11
								integer j_1;
								for (j_1 = 0; j_1 < 3; j_1 = j_1 + 1)
									uart_transmitter_output_next[j_1] = 0;
							end
							transmit_PROC_STATE_next = 1;
							_sv2v_jump = 2'b11;
						end
					end
				end
			endcase
		end
	endtask
	always @(uart_transmitter_input_overflow or uart_transmitter_input_btint_b or uart_transmitter_input_btint_a or i_next or j_next or input_overflow_next or input_btint_b_next or input_btint_a_next or input_btint_b_next or input_btint_a_next or uart_transmitter_input_overflow or uart_transmitter_input_btint_b or uart_transmitter_input_btint_a or transmit_PROC_STATE or transmit_PROC_STATE or uart_transmitter_output or j or input_overflow or input_btint_b or input_btint_a or i or _sv2v_0) begin : transmit_comb
		if (_sv2v_0)
			;
		transmit_func;
	end
	always @(posedge uart_transmitter_clock) begin : transmit_ff
		if (~uart_transmitter_reset) begin
			begin : sv2v_autoblock_12
				integer i_1;
				for (i_1 = 0; i_1 < 3; i_1 = i_1 + 1)
					uart_transmitter_output[i_1] <= 1;
			end
			transmit_PROC_STATE <= 0;
		end
		else begin
			uart_transmitter_output <= uart_transmitter_output_next;
			j <= j_next;
			i <= i_next;
			input_btint_a <= input_btint_a_next;
			input_btint_b <= input_btint_b_next;
			input_overflow <= input_overflow_next;
			transmit_PROC_STATE <= transmit_PROC_STATE_next;
		end
	end
	initial _sv2v_0 = 0;
endmodule
