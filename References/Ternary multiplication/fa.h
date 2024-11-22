//
// Created by H Zhang on 27.06.23.
//
#ifndef FA_H
#define FA_H
#include "systemc.h"

SC_MODULE(fa) {
//    sc_in_clk clock;
//    sc_in<bool> reset;
//    sc_in<bool> enable;
    sc_in<bool> op1;
    sc_in<bool> op2;
    sc_in<bool> Cin;
    sc_out<bool> Sum;
    sc_out<bool> Cout;

    void add();
//    void clear();


    SC_CTOR(fa) {
        SC_METHOD(add);
        sensitive << op1 << op2 << Cin;

    }

};


#endif //FA_H