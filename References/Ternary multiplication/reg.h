//
// Created by H Zhang on 28.08.23.
//
#ifndef FA_REG_H
#define FA_REG_H
#include "systemc.h"

SC_MODULE(reg){
    sc_in<bool> Aa[4],Ab[4],clk,B;
    sc_out<bool> out_Ba[4],out_Bb[4];

    sc_bv<4> reg_Ba,reg_Bb;
    int counter;

    void get_adder_B();

    SC_CTOR(reg){
        SC_METHOD(get_adder_B);
        sensitive << clk.pos();
    }

};




#endif //FA_REG_H
