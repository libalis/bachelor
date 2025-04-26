#include "const.hpp"
#include <systemc.h>

SC_MODULE(testbench) {
    sc_in<bool> clk;
    sc_out<bool> rst;
    sc_in<bool> done;
    sc_in<btint<32>> result_u[X_DIMENSION][X_DIMENSION];
    sc_in<btint<32>> result_d[X_DIMENSION][X_DIMENSION];

    void source();
    void sink();

    SC_CTOR(testbench) {
        SC_CTHREAD(source, clk.pos());
        SC_CTHREAD(sink, clk.pos());
    }
};
