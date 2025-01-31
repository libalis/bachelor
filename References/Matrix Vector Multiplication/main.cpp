#include <systemc.h>
#include "tb.hpp"
#include "matrix_vector.hpp"
SC_MODULE(SYSTEM) {
    testbench tb;
    matrix_vector mv;
    sc_signal<bool> rst_sig;
    sc_signal<bool> done_sig;
    sc_signal<bool> valid_sig;
    sc_signal<sc_int<8>> matrix_sig[X][Y];
    sc_signal<sc_int<8>> vector_sig[Y];
    sc_signal<sc_int<8>> result_sig[X];
    sc_clock clk_sig;
    SC_CTOR(SYSTEM) : clk_sig("clk_sig", 10, SC_NS), tb("tb"), mv("mv") {
        tb.clk(clk_sig);
        tb.rst(rst_sig);
        tb.done(done_sig);
        tb.valid(valid_sig);
        mv.in_clk(clk_sig);
        mv.in_rst(rst_sig);
        mv.valid_in(valid_sig);
        mv.done_out(done_sig);
        for(int i = 0; i < X; i++) {
            tb.result[i](result_sig[i]);
            mv.out_result[i](result_sig[i]);
        }
        for(int i = 0; i < X; i++) {
            for(int j = 0; j < Y; j++) {
                tb.tb_matrix[i][j](matrix_sig[i][j]);
                mv.in_matrix[i][j](matrix_sig[i][j]);
            }
        }
        for(int i = 0; i < Y; i++) {
            tb.tb_vector[i](vector_sig[i]);
            mv.in_vector[i](vector_sig[i]);
        }
    }
};
SYSTEM *top = NULL;
int sc_main(int argc, char *argv[]) {
    top = new SYSTEM("top");
    sc_trace_file *fp;
    fp = sc_create_vcd_trace_file("wave");
    sc_trace(fp, top->clk_sig, "clk");
    sc_trace(fp, top->rst_sig, "rst");
    sc_trace(fp, top->done_sig, "done");
    sc_trace(fp, top->valid_sig, "valid");
    sc_trace(fp, top->mv.in_write, "write_reg");
    char reg[5] = {'r', 'e', 'g', (char)(48), (char)NULL};
    char ina[6] = {'i', 'n', '_', 'a', (char)(48), (char)NULL};
    char inc[6] = {'i', 'n', '_', 'c', (char)(48), (char)NULL};
    char outc[7] = {'o', 'u', 't', '_', 'c', (char)(48), (char)NULL};
    for(int i = 0; i < Y; i++) {
        ina[4] = (char)(48+i);
        inc[4] = (char)(48+i);
        outc[5] = (char)(48+i);
        reg[3] = (char)(48+i);
        sc_trace(fp, top->mv.in_b[i], ina);
        sc_trace(fp, top->mv.in_c[i], inc);
        sc_trace(fp, top->mv.out_c[i], outc);
    }
    sc_trace(fp, top->mv.c0.state, "state0");
    sc_trace(fp, top->mv.c1.state, "state1");
    sc_trace(fp, top->mv.c2.state, "state2");
    sc_trace(fp, top->mv.c3.state, "state3");
    sc_start();
    sc_close_vcd_trace_file(fp);
    return 0;
}
