#ifndef FA_MUL_H
#define FA_MUL_H
#include <systemc.h>
#include "../hpp/addsub.hpp"
#include "../hpp/reg.hpp"
#include "../hpp/reg_2ndOp.hpp"
#include "../hpp/reg_B.hpp"
#include "../hpp/reg_prod.hpp"
SC_MODULE(mul) {
    sc_in<bool> Aa[4], Ab[4], Ba[4], Bb[4], Clk;
    sc_out<sc_bv<8>> Prod_a, Prod_b;
    reg r;
    reg_2ndOp r2;
    reg_B rB;
    addsub a;
    reg_prod rp;
    sc_signal<bool> Aa_sig[4], Ab_sig[4], sum_Aa_sig[4], sum_Ab_sig[4], sum_Aa_0, sum_Ab_0,
                    reg_2ndOp_to_adder_Aa[4], reg_2ndOp_to_adder_Ab[4], subtract_sig,
                    reg_to_adder_Ba[4], reg_to_adder_Bb[4], B;
    SC_CTOR(mul) : r("reg"), r2("reg_2ndOp"), rB("reg_B"), a("adder"), rp("reg_prod") {
        for(int i = 0; i < 4; i++) {
            rB.Ba[i](Ba[i]);
            rB.Bb[i](Bb[i]);
        }
        rB.clk(Clk);
        rB.B(B);
        rB.subtract(subtract_sig);
        for(int i = 0; i < 4; i++) {
            r.Aa[i](Aa[i]);
            r.Ab[i](Ab[i]);
            r.out_Ba[i](reg_to_adder_Ba[i]);
            r.out_Bb[i](reg_to_adder_Bb[i]);
        }
        r.B(B);
        r.clk(Clk);
        for(int i = 0; i < 4; i++) {
            r2.sum_Aa[i](sum_Aa_sig[i]);
            r2.sum_Ab[i](sum_Ab_sig[i]);
            r2.out_Aa[i](reg_2ndOp_to_adder_Aa[i]);
            r2.out_Ab[i](reg_2ndOp_to_adder_Ab[i]);
        }
        r2.clk(Clk);
        for(int i = 0; i < 4; i++) {
            a.Aa[i](reg_2ndOp_to_adder_Aa[i]);
            a.Ab[i](reg_2ndOp_to_adder_Ab[i]);
            a.Ba[i](reg_to_adder_Ba[i]);
            a.Bb[i](reg_to_adder_Bb[i]);
            a.Sum_a[i+1](sum_Aa_sig[i]);
            a.Sum_b[i+1](sum_Ab_sig[i]);
        }
        a.sub(subtract_sig);
        a.Sum_a[0](sum_Aa_0);
        a.Sum_b[0](sum_Ab_0);
        rp.prod_a(sum_Aa_0);
        rp.prod_b(sum_Ab_0);
        rp.clk(Clk);
        rp.out_prod_a(Prod_a);
        rp.out_prod_b(Prod_b);
    }
};
#endif
