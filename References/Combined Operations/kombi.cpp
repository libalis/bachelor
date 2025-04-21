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
    c0.s_mm(s_mm[0]);
    c0.s_out(s_out[0]);
    c0.s_in(s_in[0]);
    c0.op_out(op_out[0]);
    c0.op_in(op_in[0]);
    c0.a_in(in_a[0]);
    c0.c_in_u(in_c_u[0]);
    c0.c_in_d(in_c_d[0]);
    c0.c_out_u(out_c_u[0]);
    c0.c_out_d(out_c_d[0]);
    c0.a_out(out_a[0]);

    c1.s_mm(s_mm[0]);
    c1.s_out(s_out[1]);
    c1.s_in(s_in[1]);
    c1.op_out(op_out[1]);
    c1.op_in(op_in[1]);
    c1.a_in(in_a[1]);
    c1.c_in_u(in_c_u[1]);
    c1.c_in_d(in_c_d[1]);
    c1.c_out_u(out_c_u[1]);
    c1.c_out_d(out_c_d[1]);
    c1.a_out(out_a[1]);

    c2.s_mm(s_mm[0]);
    c2.s_out(s_out[2]);
    c2.s_in(s_in[2]);
    c2.op_out(op_out[2]);
    c2.op_in(op_in[2]);
    c2.a_in(in_a[2]);
    c2.c_in_u(in_c_u[2]);
    c2.c_in_d(in_c_d[2]);
    c2.c_out_u(out_c_u[2]);
    c2.c_out_d(out_c_d[2]);
    c2.a_out(out_a[2]);

    c3.s_mm(s_mm[1]);
    c3.s_out(s_out[3]);
    c3.s_in(s_in[3]);
    c3.op_out(op_out[3]);
    c3.op_in(op_in[3]);
    c3.a_in(in_a[3]);
    c3.c_in_u(in_c_u[3]);
    c3.c_in_d(in_c_d[3]);
    c3.c_out_u(out_c_u[3]);
    c3.c_out_d(out_c_d[3]);
    c3.a_out(out_a[3]);

    c4.s_mm(s_mm[1]);
    c4.s_out(s_out[4]);
    c4.s_in(s_in[4]);
    c4.op_out(op_out[4]);
    c4.op_in(op_in[4]);
    c4.a_in(in_a[4]);
    c4.c_in_u(in_c_u[4]);
    c4.c_in_d(in_c_d[4]);
    c4.c_out_u(out_c_u[4]);
    c4.c_out_d(out_c_d[4]);
    c4.a_out(out_a[4]);

    c5.s_mm(s_mm[1]);
    c5.s_out(s_out[5]);
    c5.s_in(s_in[5]);
    c5.op_out(op_out[5]);
    c5.op_in(op_in[5]);
    c5.a_in(in_a[5]);
    c5.c_in_u(in_c_u[5]);
    c5.c_in_d(in_c_d[5]);
    c5.c_out_u(out_c_u[5]);
    c5.c_out_d(out_c_d[5]);
    c5.a_out(out_a[5]);

    c6.s_mm(s_mm[2]);
    c6.s_out(s_out[6]);
    c6.s_in(s_in[6]);
    c6.op_out(op_out[6]);
    c6.op_in(op_in[6]);
    c6.a_in(in_a[6]);
    c6.c_in_u(in_c_u[6]);
    c6.c_in_d(in_c_d[6]);
    c6.c_out_u(out_c_u[6]);
    c6.c_out_d(out_c_d[6]);
    c6.a_out(out_a[6]);

    c7.s_mm(s_mm[2]);
    c7.s_out(s_out[7]);
    c7.s_in(s_in[7]);
    c7.op_out(op_out[7]);
    c7.op_in(op_in[7]);
    c7.a_in(in_a[7]);
    c7.c_in_u(in_c_u[7]);
    c7.c_in_d(in_c_d[7]);
    c7.c_out_u(out_c_u[7]);
    c7.c_out_d(out_c_d[7]);
    c7.a_out(out_a[7]);

    c8.s_mm(s_mm[2]);
    c8.s_out(s_out[8]);
    c8.s_in(s_in[8]);
    c8.op_out(op_out[8]);
    c8.op_in(op_in[8]);
    c8.a_in(in_a[8]);
    c8.c_in_u(in_c_u[8]);
    c8.c_in_d(in_c_d[8]);
    c8.c_out_u(out_c_u[8]);
    c8.c_out_d(out_c_d[8]);
    c8.a_out(out_a[8]);
}
