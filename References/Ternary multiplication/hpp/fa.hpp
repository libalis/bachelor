#ifndef FA_H
#define FA_H
#include <systemc.h>
SC_MODULE(fa) {
    sc_in<bool> op1;
    sc_in<bool> op2;
    sc_in<bool> Cin;
    sc_out<bool> Sum;
    sc_out<bool> Cout;
    void add();
    SC_CTOR(fa) {
        SC_METHOD(add);
        sensitive << op1 << op2 << Cin;
    }
};
#endif
