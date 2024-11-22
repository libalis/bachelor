//
// Created by H Zhang on 15.08.23.
//
#ifndef FA_MUL_H
#define FA_MUL_H
#include "systemc.h"
#include "addsub.h"
#include "reg.h"
#include "reg_2ndOp.h"
#include "reg_B.h"
#include "reg_prod.h"

SC_MODULE(mul){
    sc_in<bool> Aa[4], Ab[4], Ba[4], Bb[4],Clk;
    sc_out<sc_bv<8>> Prod_a, Prod_b;

    reg reg;
    reg_2ndOp reg_2ndOp;
    reg_B reg_B;
    addsub adder;
    reg_prod reg_prod;

    sc_signal<bool> Aa_sig[4],Ab_sig[4],sum_Aa_sig[4],sum_Ab_sig[4],sum_Aa_0,sum_Ab_0,
                    reg_2ndOp_to_adder_Aa[4],reg_2ndOp_to_adder_Ab[4],subtract_sig,
                    reg_to_adder_Ba[4],reg_to_adder_Bb[4],B;


    SC_CTOR(mul) : reg("reg"), reg_2ndOp("reg_2ndOp"), reg_B("reg_B"), adder("adder"), reg_prod("reg_prod"){
//        cout << sc_time_stamp() << ": Elaboration: constructor" << endl;
//        Clk(clk);


        for (int i = 0; i < 4; ++i) {
            reg_B.Ba[i](Ba[i]);
            reg_B.Bb[i](Bb[i]);
        }
        reg_B.clk(Clk);
        reg_B.B(B);
        reg_B.subtract(subtract_sig);

        for (int i = 0; i < 4; ++i) {
            reg.Aa[i](Aa[i]);
            reg.Ab[i](Ab[i]);
            reg.out_Ba[i](reg_to_adder_Ba[i]);
            reg.out_Bb[i](reg_to_adder_Bb[i]);
        }
        reg.B(B);
        reg.clk(Clk);

        for (int i = 0; i < 4; ++i) {
            reg_2ndOp.sum_Aa[i](sum_Aa_sig[i]);
            reg_2ndOp.sum_Ab[i](sum_Ab_sig[i]);
            reg_2ndOp.out_Aa[i](reg_2ndOp_to_adder_Aa[i]);
            reg_2ndOp.out_Ab[i](reg_2ndOp_to_adder_Ab[i]);
        }
        reg_2ndOp.clk(Clk);


        for (int i = 0; i < 4; ++i) {
            adder.Aa[i](reg_2ndOp_to_adder_Aa[i]);
            adder.Ab[i](reg_2ndOp_to_adder_Ab[i]);
            adder.Ba[i](reg_to_adder_Ba[i]);
            adder.Bb[i](reg_to_adder_Bb[i]);
            adder.Sum_a[i+1](sum_Aa_sig[i]);
            adder.Sum_b[i+1](sum_Ab_sig[i]);
        }
        adder.sub(subtract_sig);
        adder.Sum_a[0](sum_Aa_0);
        adder.Sum_b[0](sum_Ab_0);

        reg_prod.prod_a(sum_Aa_0);
        reg_prod.prod_b(sum_Ab_0);
        reg_prod.clk(Clk);

//        cout<<"reg_prod.prod_a"<<reg_prod.prod_a<<endl;
        reg_prod.out_prod_a(Prod_a);
        reg_prod.out_prod_b(Prod_b);
    }

};

#endif //FA_MUL_H
