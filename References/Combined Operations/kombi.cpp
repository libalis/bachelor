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
    for (int i = 0; i < X_DIMENSION; i++) {
        for (int j = 0; j < X_DIMENSION; j++) {
            kombic.out_result_u[i * X_DIMENSION + j](out_result_u[i * X_DIMENSION + j]);
            kombic.out_result_d[i * X_DIMENSION + j](out_result_d[i * X_DIMENSION + j]);
        }
    }
    kombic.done(done_out);

    for (int i = 0, num1 = 48; i < X_DIMENSION; i++) {
        kombic.s_mm[i](s_mm[i]);
        for (int j = 0, num2 = 48; j < X_DIMENSION; j++) {
            // connect control
            kombic.out_c_u[i * X_DIMENSION + j](out_c_u[i * X_DIMENSION + j]);
            kombic.out_c_d[i * X_DIMENSION + j](out_c_d[i * X_DIMENSION + j]);
            kombic.in_a[i * X_DIMENSION + j](in_a[i * X_DIMENSION + j]);
            kombic.out_a[i * X_DIMENSION + j](out_a[i * X_DIMENSION + j]);
            kombic.in_c_u[i * X_DIMENSION + j](in_c_u[i * X_DIMENSION + j]);
            kombic.in_c_d[i * X_DIMENSION + j](in_c_d[i * X_DIMENSION + j]);
            kombic.s_in[i * X_DIMENSION + j](s_in[i * X_DIMENSION + j]);
            kombic.s_out[i * X_DIMENSION + j](s_out[i * X_DIMENSION + j]);
            kombic.op_in[i * X_DIMENSION + j](op_in[i * X_DIMENSION + j]);
            kombic.op_out[i * X_DIMENSION + j](op_out[i * X_DIMENSION + j]);
        }
    }
    // connect cell
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            cell[i][j]->cell_clock(in_clk);
            cell[i][j]->cell_reset(in_rst);
            cell[i][j]->cell_a_in(in_a[i * X_DIMENSION + j]);
            cell[i][j]->cell_c_in_u(in_c_u[i * X_DIMENSION + j]);
            cell[i][j]->cell_c_in_d(in_c_d[i * X_DIMENSION + j]);
            cell[i][j]->cell_s_in(s_in[i * X_DIMENSION + j]);
            cell[i][j]->cell_s_mm(s_mm[i]);
            cell[i][j]->cell_op_in(op_in[i * X_DIMENSION + j]);
            cell[i][j]->cell_a_out(out_a[i * X_DIMENSION + j]);
            cell[i][j]->cell_c_out_u(out_c_u[i * X_DIMENSION + j]);
            cell[i][j]->cell_c_out_d(out_c_d[i * X_DIMENSION + j]);
            cell[i][j]->cell_s_out(s_out[i * X_DIMENSION + j]);
            cell[i][j]->cell_op_out(op_out[i * X_DIMENSION + j]);
        }
    }
}
