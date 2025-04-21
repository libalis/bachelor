#include "const.hpp"
#include <systemc.h>

SC_MODULE(kombi_control) {
    sc_in<bool> clk;
    sc_in<bool> rst;
    sc_in<btint<8>> out_a[X_DIMENSION * X_DIMENSION];
    sc_in<btint<8>> out_c_u[X_DIMENSION * X_DIMENSION];
    sc_in<btint<8>> out_c_d[X_DIMENSION * X_DIMENSION];
    sc_in<bool> s_out[X_DIMENSION * X_DIMENSION];
    sc_in<bool> op_out[X_DIMENSION * X_DIMENSION];
    sc_out<btint<8>> in_a[X_DIMENSION * X_DIMENSION];
    sc_out<btint<8>> in_c_u[X_DIMENSION * X_DIMENSION];
    sc_out<btint<8>> in_c_d[X_DIMENSION * X_DIMENSION];
    sc_out<bool> s_in[X_DIMENSION * X_DIMENSION];
    sc_out<bool> op_in[X_DIMENSION * X_DIMENSION];
    sc_out<bool> s_mm[X_DIMENSION];
    sc_out<bool> done;
    sc_out<btint<8>> out_result_u[X_DIMENSION * X_DIMENSION];
    sc_out<btint<8>> out_result_d[X_DIMENSION * X_DIMENSION];
    void func();
    SC_CTOR(kombi_control) {
        SC_CTHREAD(func, clk.pos());
        reset_signal_is(rst, true);
    }
};
