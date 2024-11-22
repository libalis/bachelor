//
// Created by H Zhang on 30.08.23.
//

#ifndef FA_REG_PROD_H
#define FA_REG_PROD_H
#include "systemc.h"

SC_MODULE(reg_prod){
//    sc_in<bool> prod_a[2],prod_b[2],clk;
    sc_in<bool> prod_a,prod_b,clk;
    sc_out<sc_bv<8>> out_prod_a,out_prod_b;

    sc_bv<8> reg_prod_a, reg_prod_b;

    int count=0;
    void get_prod();

    SC_CTOR(reg_prod){
        SC_METHOD(get_prod);
        sensitive << clk.pos();
    }

};

#endif //FA_REG_PROD_H
