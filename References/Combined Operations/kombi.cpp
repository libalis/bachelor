#include "kombi.hpp"

void kombi::func() {
#pragma HLS ARRAY_PARTITION variable = out_result_u complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_result_d complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_a complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_c_u complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_c_d complete dim = 1
#pragma HLS ARRAY_PARTITION variable = in_a complete dim = 1
#pragma HLS ARRAY_PARTITION variable = in_c_u complete dim = 1
#pragma HLS ARRAY_PARTITION variable = in_c_d complete dim = 1
#pragma HLS ARRAY_PARTITION variable = s_in complete dim = 1
#pragma HLS ARRAY_PARTITION variable = s_out complete dim = 1
#pragma HLS ARRAY_PARTITION variable = op_in complete dim = 1
#pragma HLS ARRAY_PARTITION variable = op_out complete dim = 1
#pragma HLS ARRAY_PARTITION variable = s_mm complete dim = 1

    kombic.clk(in_clk);
    kombic.rst(in_rst);
    for (int i = 0; i < X; i++) {
        for (int j = 0; j < X; j++) {
            kombic.out_result_u[i * X + j](out_result_u[i * X + j]);
            kombic.out_result_d[i * X + j](out_result_d[i * X + j]);
        }
    }
    kombic.done(done_out);

    for (int i = 0, num1 = 48; i < X; i++) {
        kombic.s_mm[i](s_mm[i]);
        for (int j = 0, num2 = 48; j < X; j++) {
            // connect control
            kombic.out_c_u[i * X + j](out_c_u[i * X + j]);
            kombic.out_c_d[i * X + j](out_c_d[i * X + j]);
            kombic.in_a[i * X + j](in_a[i * X + j]);
            kombic.out_a[i * X + j](out_a[i * X + j]);
            kombic.in_c_u[i * X + j](in_c_u[i * X + j]);
            kombic.in_c_d[i * X + j](in_c_d[i * X + j]);
            kombic.s_in[i * X + j](s_in[i * X + j]);
            kombic.s_out[i * X + j](s_out[i * X + j]);
            kombic.op_in[i * X + j](op_in[i * X + j]);
            kombic.op_out[i * X + j](op_out[i * X + j]);
        }
    }
    // connect cell
    for(int i = 0; i < X; i++) {
        cell[i]->s_mm(s_mm[i]);
        cell[i]->s_out(s_out[i]);
        cell[i]->s_in(s_in[i]);
        cell[i]->op_out(op_out[i]);
        cell[i]->op_in(op_in[i]);
        cell[i]->a_in(in_a[i]);
        cell[i]->c_in_u(in_c_u[i]);
        cell[i]->c_in_d(in_c_d[i]);
        cell[i]->c_out_u(out_c_u[i]);
        cell[i]->c_out_d(out_c_d[i]);
        cell[i]->a_out(out_a[i]);
    }
}
