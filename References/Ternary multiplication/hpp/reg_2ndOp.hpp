#ifndef FA_REG_2NDOP_H
#define FA_REG_2NDOP_H
#include <systemc.h>
SC_MODULE(reg_2ndOp) {
    sc_in<bool> sum_Aa[4], sum_Ab[4], clk;
    sc_out<bool> out_Aa[4], out_Ab[4];
    sc_bv<4> reg_Aa, reg_Ab;
    int count;
    void get_adder_A();
    SC_CTOR(reg_2ndOp) {
        SC_METHOD(get_adder_A);
        sensitive << clk.pos();
    }
};
#endif
