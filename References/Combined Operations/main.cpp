#include "kombi.hpp"
#include "tb.hpp"
#include <systemc.h>

SC_MODULE(SYSTEM) {
    testbench tb;
    kombi k;

    sc_signal<bool> rst_sig;
    sc_signal<bool> done_sig;
    sc_signal<btint<8>> result_sig_u[X_DIMENSION][X_DIMENSION];
    sc_signal<btint<8>> result_sig_d[X_DIMENSION][X_DIMENSION];
    sc_clock clk_sig;

    SC_CTOR(SYSTEM) : clk_sig("clk_sig", 10, SC_NS), tb("tb"), k("k") {

        tb.clk(clk_sig);
        tb.rst(rst_sig);
        tb.done(done_sig);

        k.in_clk(clk_sig);
        k.in_rst(rst_sig);
        k.done_out(done_sig);
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                tb.result_u[i][j](result_sig_u[i][j]);
                tb.result_d[i][j](result_sig_d[i][j]);
                k.out_result_u[i * X_DIMENSION + j](result_sig_u[i][j]);
                k.out_result_d[i * X_DIMENSION + j](result_sig_d[i][j]);
            }
        }
    }
};

SYSTEM *top = NULL;

int sc_main(int argc, char *argv[]) {
    top = new SYSTEM("top");
    sc_trace_file *fp;
    fp = sc_create_vcd_trace_file("wave");
    // Add signals to trace file:
    sc_trace(fp, top->clk_sig, "clk");
    sc_trace(fp, top->rst_sig, "rst");
    sc_trace(fp, top->k.kombic.done, "done");

    char regu[8] = {'r', 'e', 'g', '_', 'u', (char)(48), (char)(48), (char)NULL};
    char regd[8] = {'r', 'e', 'g', '_', 'd', (char)(48), (char)(48), (char)NULL};
    char ina[7] = {'i', 'n', '_', 'a', (char)(48), (char)(48), (char)NULL};
    char outa[8] = {'o', 'u', 't', '_', 'a', (char)(48), (char)(48), (char)NULL};
    char incu[9] = {'i', 'n', '_', 'c', '_', 'u', (char)(48), (char)(48), (char)NULL};
    char outcu[10] = {'o', 'u', 't', '_', 'c', '_', 'u', (char)(48), (char)(48), (char)NULL};
    char incd[9] = {'i', 'n', '_', 'c', '_', 'd', (char)(48), (char)(48), (char)NULL};
    char outcd[10] = {'o', 'u', 't', '_', 'c', '_', 'd', (char)(48), (char)(48), (char)NULL};
    char ins[7] = {'i', 'n', '_', 's', (char)(48), (char)(48), (char)NULL};
    char outs[8] = {'o', 'u', 't', '_', 's', (char)(48), (char)(48), (char)NULL};

    for (int i = 0; i < X_DIMENSION; i++) {
        ina[4] = (char)(48 + i);
        outa[5] = (char)(48 + i);
        incu[6] = (char)(48 + i);
        outcu[7] = (char)(48 + i);
        incd[6] = (char)(48 + i);
        outcd[7] = (char)(48 + i);
        ins[4] = (char)(48 + i);
        outs[5] = (char)(48 + i);
        regu[5] = (char)(48 + i);
        regd[5] = (char)(48 + i);
        for (int j = 0; j < X_DIMENSION; j++) {
            ina[5] = (char)(48 + j);
            outa[6] = (char)(48 + j);
            incu[7] = (char)(48 + j);
            outcu[8] = (char)(48 + j);
            incd[7] = (char)(48 + j);
            outcd[8] = (char)(48 + j);
            ins[5] = (char)(48 + j);
            outs[6] = (char)(48 + j);
            regu[6] = (char)(48 + j);
            regd[6] = (char)(48 + j);
            sc_trace(fp, top->k.s_in[i * X_DIMENSION + j], ins);
            sc_trace(fp, top->k.s_out[i * X_DIMENSION + j], outs);
        }
    }
    sc_start();
    sc_close_vcd_trace_file(fp);
    return 0;
}
