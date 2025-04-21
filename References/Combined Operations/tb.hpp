#include "const.hpp"
#include <systemc.h>

SC_MODULE(testbench) {
    sc_in<bool> clk;
    sc_out<bool> rst;
    sc_in<bool> done;
    sc_in<sc_int<8>> result_u[X][X];
    sc_in<sc_int<8>> result_d[X][X];

    void source();
    void sink();

    SC_CTOR(testbench) {
        SC_CTHREAD(source, clk.pos());
        SC_CTHREAD(sink, clk.pos());
    }
};
