#include <systemc.h>
#include "const.hpp"

SC_MODULE(testbench) {
    sc_in<bool> clk;
    sc_out<bool> rst;
    sc_out<bool> valid;
    sc_in<bool> done;
    sc_in< sc_int<8> > result[X];

    sc_out< sc_int<8> > tb_matrix[X][Y];
    sc_out< sc_int<8> > tb_vector[Y];

    void source();
    void sink();

    SC_CTOR(testbench) {
        SC_CTHREAD(source, clk.pos());
        SC_CTHREAD(sink, clk.pos());
    }
};
