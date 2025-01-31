#include <systemc.h>
#include "const.hpp"
SC_MODULE(matrix_vector_control) {
    sc_in<bool> clk;
    sc_in<bool> rst;
    sc_in<sc_int<8>> out_c[Y];
    sc_in<sc_int<8>> matrix[X][Y];
    sc_in<sc_int<8>> vector[Y];
    sc_in<bool> data_valid;
    sc_out<bool> write_reg;
    sc_out<sc_int<8>> in_b[Y];
    sc_out<sc_int<8>> in_c[Y];
    sc_out<bool> done;
    sc_out<sc_int<8>> mvc_result[X];
    void func();
    SC_CTOR(matrix_vector_control) {
        SC_CTHREAD(func, clk.pos());
        reset_signal_is(rst, true);
    }
};
