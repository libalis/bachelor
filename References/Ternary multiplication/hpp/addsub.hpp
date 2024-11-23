#ifndef FA_ADDSUB_H
#define FA_ADDSUB_H
#include <systemc.h>
#include "../hpp/four_digit_adder.hpp"
#include "../hpp/exor.hpp"
SC_MODULE(addsub) {
    sc_in<bool> Aa[4], Ab[4], Ba[4], Bb[4], sub;
    sc_out<bool> Sum_a[5], Sum_b[5];
    sc_signal<bool> sig_to_add_Ba[4], sig_to_add_Bb[4];
    EXOR exor;
    four_digit_adder adder;
    SC_CTOR(addsub) : adder("adder"), exor("exor") {
        for(int i=0; i<4; i++) {
            exor.Ba[i](Ba[i]);
            exor.Bb[i](Bb[i]);
            exor.to_add_Ba[i](sig_to_add_Ba[i]);
            exor.to_add_Bb[i](sig_to_add_Bb[i]);
        }
        exor.Subtract(sub);
        for(int i=0; i<4; i++) {
            adder.Aa[i](Aa[i]);
            adder.Ab[i](Ab[i]);
            adder.Ba[i](sig_to_add_Ba[i]);
            adder.Bb[i](sig_to_add_Bb[i]);
            adder.S_n[i](Sum_a[i]);
            adder.S_p[i](Sum_b[i]);
        }
        adder.S_n[4](Sum_a[4]);
        adder.S_p[4](Sum_b[4]);
    };
};
#endif
