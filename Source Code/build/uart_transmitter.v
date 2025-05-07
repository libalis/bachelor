module UART_TRANSMITTER (
	uart_transmitter_clock,
	uart_transmitter_reset_active_low,
	uart_transmitter_input_btint_a,
	uart_transmitter_input_btint_b,
	uart_transmitter_input_overflow,
	uart_transmitter_column,
	uart_transmitter_output
);
	reg _sv2v_0;
	input wire uart_transmitter_clock;
	input wire uart_transmitter_reset_active_low;
	input wire [127:0] uart_transmitter_input_btint_a;
	input wire [127:0] uart_transmitter_input_btint_b;
	input wire [31:0] uart_transmitter_input_overflow;
	input wire signed [31:0] uart_transmitter_column;
	output reg uart_transmitter_output;
	reg uart_transmitter_output_next;
	reg signed [31:0] k;
	reg signed [31:0] k_next;
	reg signed [31:0] j;
	reg signed [31:0] j_next;
	reg signed [31:0] i;
	reg signed [31:0] i_next;
	reg [127:0] input_btint_a;
	reg [127:0] input_btint_a_next;
	reg signed [31:0] k0;
	reg signed [31:0] k_next0;
	reg [127:0] input_btint_b;
	reg [127:0] input_btint_b_next;
	reg [31:0] input_overflow;
	reg [31:0] input_overflow_next;
	reg [7:0] output_btint_a;
	reg [7:0] output_btint_a_next;
	reg [7:0] output_btint_b;
	reg [7:0] output_btint_b_next;
	reg [1:0] output_overflow;
	reg [1:0] output_overflow_next;
	reg [7:0] output_btint_a0;
	reg [7:0] output_btint_a_next0;
	reg [7:0] output_btint_b0;
	reg [7:0] output_btint_b_next0;
	reg [7:0] btint_a;
	reg [7:0] btint_a_next;
	reg [7:0] btint_b;
	reg [7:0] btint_b_next;
	reg [1:0] overflow;
	reg [1:0] overflow_next;
	reg [2:0] transmit_PROC_STATE;
	reg [2:0] transmit_PROC_STATE_next;
	task transmit_func;
		integer input_index;
		reg [7:0] output_btint_a_1;
		reg [7:0] output_btint_b_1;
		reg [1:0] output_overflow_1;
		integer output_index;
		integer output_value;
		reg [7:0] output_btint_a_2;
		reg [7:0] output_btint_b_2;
		reg [1:0] output_overflow_2;
		reg [7:0] TMP_1_btint_a;
		reg [7:0] TMP_1_btint_b;
		reg [1:0] TMP_1_overflow;
		reg [7:0] TMP_0_btint_a;
		reg [7:0] TMP_0_btint_b;
		reg [1:0] TMP_0_overflow;
		reg [1:0] _sv2v_jump;
		begin
			_sv2v_jump = 2'b00;
			input_index = 0;
			output_btint_a_1 = 0;
			output_btint_b_1 = 0;
			output_overflow_1 = 0;
			output_index = 0;
			output_value = 0;
			output_btint_a_2 = 0;
			output_btint_b_2 = 0;
			output_overflow_2 = 0;
			TMP_1_btint_a = 0;
			TMP_1_btint_b = 0;
			TMP_1_overflow = 0;
			TMP_0_btint_a = 0;
			TMP_0_btint_b = 0;
			TMP_0_overflow = 0;
			btint_a_next = btint_a;
			btint_b_next = btint_b;
			i_next = i;
			input_btint_a_next = input_btint_a;
			input_btint_b_next = input_btint_b;
			input_overflow_next = input_overflow;
			j_next = j;
			k_next = k;
			k_next0 = k0;
			output_btint_a_next = output_btint_a;
			output_btint_a_next0 = output_btint_a0;
			output_btint_b_next = output_btint_b;
			output_btint_b_next0 = output_btint_b0;
			output_overflow_next = output_overflow;
			overflow_next = overflow;
			uart_transmitter_output_next = uart_transmitter_output;
			transmit_PROC_STATE_next = transmit_PROC_STATE;
			case (transmit_PROC_STATE)
				0: begin
					begin : sv2v_autoblock_1
						integer i_1;
						for (i_1 = 0; i_1 < 4; i_1 = i_1 + 1)
							begin : sv2v_autoblock_2
								integer j_1;
								for (j_1 = 0; j_1 < 4; j_1 = j_1 + 1)
									begin
										input_btint_a_next[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8] = uart_transmitter_input_btint_a[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8];
										input_btint_b_next[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8] = uart_transmitter_input_btint_b[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8];
										input_overflow_next[(((3 - i_1) * 4) + (3 - j_1)) * 2+:2] = uart_transmitter_input_overflow[(((3 - i_1) * 4) + (3 - j_1)) * 2+:2];
									end
							end
					end
					i_next = 0;
					j_next = 7;
					uart_transmitter_output_next = 0;
					transmit_PROC_STATE_next = 1;
					_sv2v_jump = 2'b11;
				end
				1: begin
					k_next0 = 0;
					uart_transmitter_output_next = input_btint_a_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8];
					transmit_PROC_STATE_next = 2;
					_sv2v_jump = 2'b11;
				end
				2: begin
					uart_transmitter_output_next = input_btint_b_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8];
					input_index = 1;
					output_btint_a_1 = 0;
					output_btint_b_1 = 0;
					output_overflow_1 = 0;
					output_btint_a_1[i_next][uart_transmitter_column] = input_btint_a_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8+:8];
					output_btint_b_1[i_next][uart_transmitter_column] = input_btint_b_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8+:8];
					output_overflow_1[i_next][uart_transmitter_column] = input_overflow_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 2+:2];
					begin : sv2v_autoblock_3
						integer i_2;
						for (i_2 = 0; i_2 < input_index; i_2 = i_2 + 1)
							begin
								output_btint_a_1[i_next][uart_transmitter_column] = output_btint_a_1[i_next][uart_transmitter_column] >>> 1;
								output_btint_b_1[i_next][uart_transmitter_column] = output_btint_b_1[i_next][uart_transmitter_column] >>> 1;
								output_index = 7;
								output_value = 0;
								output_btint_a_2 = 0;
								output_btint_b_2 = 0;
								output_overflow_2 = 0;
								output_btint_a_2 = output_btint_a_1;
								output_btint_b_2 = output_btint_b_1;
								output_overflow_2 = output_overflow_1;
								case (output_value)
									-1: begin
										output_btint_a_2[output_index] = 0;
										output_btint_b_2[output_index] = 0;
									end
									0: begin
										output_btint_a_2[output_index] = 0;
										output_btint_b_2[output_index] = 1;
									end
									1: begin
										output_btint_a_2[output_index] = 1;
										output_btint_b_2[output_index] = 1;
									end
									default:
										;
								endcase
								TMP_1_btint_a = output_btint_a_2;
								TMP_1_btint_b = output_btint_b_2;
								TMP_1_overflow = output_overflow_2;
								output_btint_a_1 = TMP_1_btint_a;
								output_btint_b_1 = TMP_1_btint_b;
								output_overflow_1 = TMP_1_overflow;
							end
					end
					TMP_0_btint_a = output_btint_a_1;
					TMP_0_btint_b = output_btint_b_1;
					TMP_0_overflow = output_overflow_1;
					input_btint_a_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8+:8] = TMP_0_btint_a;
					input_btint_b_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8+:8] = TMP_0_btint_b;
					input_overflow_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 2+:2] = TMP_0_overflow;
					transmit_PROC_STATE_next = 3;
					_sv2v_jump = 2'b11;
				end
				3: begin
					k_next0 = k_next0 + 1;
					if (k_next0 < 4) begin
						uart_transmitter_output_next = input_btint_a_next[(((3 - i_next) * 4) + (3 - uart_transmitter_column)) * 8];
						transmit_PROC_STATE_next = 2;
						_sv2v_jump = 2'b11;
					end
					if (_sv2v_jump == 2'b00) begin
						k_next = 0;
						uart_transmitter_output_next = 1;
						transmit_PROC_STATE_next = 4;
						_sv2v_jump = 2'b11;
					end
				end
				4: begin
					k_next = k_next + 1;
					if (k_next < 2) begin
						uart_transmitter_output_next = 1;
						transmit_PROC_STATE_next = 4;
						_sv2v_jump = 2'b11;
					end
					if (_sv2v_jump == 2'b00) begin
						j_next = j_next - 4;
						if (j_next >= 0) begin
							uart_transmitter_output_next = 0;
							transmit_PROC_STATE_next = 1;
							_sv2v_jump = 2'b11;
						end
						if (_sv2v_jump == 2'b00) begin
							i_next = i_next + 1;
							if (i_next < 4) begin
								j_next = 7;
								uart_transmitter_output_next = 0;
								transmit_PROC_STATE_next = 1;
								_sv2v_jump = 2'b11;
							end
							if (_sv2v_jump == 2'b00) begin
								begin : sv2v_autoblock_4
									integer i_1;
									for (i_1 = 0; i_1 < 4; i_1 = i_1 + 1)
										begin : sv2v_autoblock_5
											integer j_1;
											for (j_1 = 0; j_1 < 4; j_1 = j_1 + 1)
												begin
													input_btint_a_next[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8] = uart_transmitter_input_btint_a[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8];
													input_btint_b_next[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8] = uart_transmitter_input_btint_b[(((3 - i_1) * 4) + (3 - j_1)) * 8+:8];
													input_overflow_next[(((3 - i_1) * 4) + (3 - j_1)) * 2+:2] = uart_transmitter_input_overflow[(((3 - i_1) * 4) + (3 - j_1)) * 2+:2];
												end
										end
								end
								i_next = 0;
								j_next = 7;
								uart_transmitter_output_next = 0;
								transmit_PROC_STATE_next = 1;
								_sv2v_jump = 2'b11;
							end
						end
					end
				end
			endcase
		end
	endtask
	always @(uart_transmitter_input_overflow or uart_transmitter_input_btint_b or uart_transmitter_input_btint_a or i_next or j_next or j_next or k_next or uart_transmitter_column or i_next or input_btint_a_next or k_next0 or i_next or uart_transmitter_column or i_next or uart_transmitter_column or i_next or uart_transmitter_column or uart_transmitter_column or i_next or i_next or uart_transmitter_column or uart_transmitter_column or i_next or i_next or uart_transmitter_column or uart_transmitter_column or i_next or input_overflow_next or i_next or uart_transmitter_column or uart_transmitter_column or i_next or input_btint_b_next or i_next or uart_transmitter_column or uart_transmitter_column or i_next or input_btint_a_next or i_next or uart_transmitter_column or uart_transmitter_column or i_next or input_btint_b_next or uart_transmitter_column or i_next or input_btint_a_next or uart_transmitter_input_overflow or uart_transmitter_input_btint_b or uart_transmitter_input_btint_a or transmit_PROC_STATE or transmit_PROC_STATE or uart_transmitter_output or overflow or output_overflow or output_btint_b0 or output_btint_b or output_btint_a0 or output_btint_a or k0 or k or j or input_overflow or input_btint_b or input_btint_a or i or btint_b or btint_a or _sv2v_0) begin : transmit_comb
		if (_sv2v_0)
			;
		transmit_func;
	end
	always @(posedge uart_transmitter_clock) begin : transmit_ff
		if (~uart_transmitter_reset_active_low) begin
			uart_transmitter_output <= 1;
			transmit_PROC_STATE <= 0;
		end
		else begin
			uart_transmitter_output <= uart_transmitter_output_next;
			k <= k_next;
			j <= j_next;
			i <= i_next;
			input_btint_a <= input_btint_a_next;
			k0 <= k_next0;
			input_btint_b <= input_btint_b_next;
			input_overflow <= input_overflow_next;
			output_btint_a <= output_btint_a_next;
			output_btint_b <= output_btint_b_next;
			output_overflow <= output_overflow_next;
			output_btint_a0 <= output_btint_a_next0;
			output_btint_b0 <= output_btint_b_next0;
			btint_a <= btint_a_next;
			btint_b <= btint_b_next;
			overflow <= overflow_next;
			transmit_PROC_STATE <= transmit_PROC_STATE_next;
		end
	end
	initial _sv2v_0 = 0;
endmodule
