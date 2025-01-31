#include <systemc.h>

#include "../hpp/testbench.hpp"
#include "../hpp/matrix_vector.hpp"

template <size_t T>
SC_MODULE(SYSTEM) {
    TESTBENCH<T> tb;
    MATRIX_VECTOR<T> mv;
    sc_signal<bool> rst_sig;
    sc_signal<bool> done_sig;
    sc_signal<bool> valid_sig;
    sc_signal<btint<T>> matrix_sig[X][Y];
    sc_signal<btint<T>> vector_sig[Y];
    sc_signal<btint<T>> result_sig[X];
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

int sc_main(int argc, char *argv[]) {
    SYSTEM<TRITS> top("top");
    sc_start();
    return 0;
}
