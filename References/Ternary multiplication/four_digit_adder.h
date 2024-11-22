//
// Created by H Zhang on 28.06.23.
//
#ifndef FOUR_DIGIT_ADDER_H
#define FOUR_DIGIT_ADDER_H
#include "systemc.h"
#include "fa.h"

SC_MODULE(four_digit_adder){

    sc_in<bool> Aa[4],Ab[4],Ba[4],Bb[4];
    sc_out<bool> S_p[5],S_n[5];

    //local signals
    sc_signal<bool> sig_sum[5],sig_carry[5],one,zero;

    sc_signal<bool> sig_Aa_0, sig_Aa_1, sig_Aa_2, sig_Aa_3;
    sc_signal<bool> sig_Ba_0, sig_Ba_1, sig_Ba_2, sig_Ba_3;
    sc_signal<bool> sig_Ab_0, sig_Ab_1, sig_Ab_2, sig_Ab_3;
    sc_signal<bool> sig_Bb_0, sig_Bb_1, sig_Bb_2, sig_Bb_3;

    sc_signal<bool> sig_sum_stage0_0, sig_sum_stage0_1, sig_sum_stage0_2, sig_sum_stage0_3;
    sc_signal<bool> sig_carry_stage0_0, sig_carry_stage0_1, sig_carry_stage0_2, sig_carry_stage0_3;
    sc_signal<bool> sig_sum_stage1_0, sig_sum_stage1_1, sig_sum_stage1_2, sig_sum_stage1_3;
    sc_signal<bool> sig_carry_stage1_0, sig_carry_stage1_1, sig_carry_stage1_2, sig_carry_stage1_3;
    //   bool one=true;
    fa **fa_digit[2][4];
    char name[12];
    bool sum_stage1_0,sum_stage1_1,sum_stage1_2,sum_stage1_3;

    SC_CTOR(four_digit_adder){
        one.write(true);
        zero.write(false);


        for(int j=0;j<2;j++) {
            for (int i = 0; i < 4; i++) {
                sprintf(name, "stage%d_fa%d", j, i);
//                *fa_digit[j][i] = new fa(name);
                fa_digit[j][i] = new fa* (new fa(name));
            }
        }

        for (int i=0;i<4;i++){
            (*fa_digit[0][i])->op1(Aa[i]);
            (*fa_digit[0][i])->op2(Ba[i]);
            (*fa_digit[0][i])->Cin(Ab[i]);
        }

//------------------------------ stage 0 -----------------------------------
        (*fa_digit[0][0])->Sum(sig_sum_stage0_0);
        (*fa_digit[0][1])->Sum(sig_sum_stage0_1);
        (*fa_digit[0][2])->Sum(sig_sum_stage0_2);
        (*fa_digit[0][3])->Sum(sig_sum_stage0_3);


        (*fa_digit[0][0])->Cout(sig_carry_stage0_0);
        (*fa_digit[0][1])->Cout(sig_carry_stage0_1);
        (*fa_digit[0][2])->Cout(sig_carry_stage0_2);
        (*fa_digit[0][3])->Cout(S_p[4]);
//------------------------------- stage 1 -----------------------------------
        (*fa_digit[1][0])->op1(one);
        (*fa_digit[1][1])->op1(sig_carry_stage0_0);
        (*fa_digit[1][2])->op1(sig_carry_stage0_1);
        (*fa_digit[1][3])->op1(sig_carry_stage0_2);

        (*fa_digit[1][0])->op2(sig_sum_stage0_0);
        (*fa_digit[1][1])->op2(sig_sum_stage0_1);
        (*fa_digit[1][2])->op2(sig_sum_stage0_2);
        (*fa_digit[1][3])->op2(sig_sum_stage0_3);

        (*fa_digit[1][0])->Cin(Bb[0]);
        (*fa_digit[1][1])->Cin(Bb[1]);
        (*fa_digit[1][2])->Cin(Bb[2]);
        (*fa_digit[1][3])->Cin(Bb[3]);
//------------------------------- out  -----------------------------------
        (*fa_digit[1][0])->Sum(S_p[0]);
        (*fa_digit[1][1])->Sum(S_p[1]);
        (*fa_digit[1][2])->Sum(S_p[2]);
        (*fa_digit[1][3])->Sum(S_p[3]);

        (*fa_digit[1][0])->Cout(S_n[1]);
        (*fa_digit[1][1])->Cout(S_n[2]);
        (*fa_digit[1][2])->Cout(S_n[3]);
        (*fa_digit[1][3])->Cout(S_n[4]);
//------------------------------------------

//        sig_sum[0]=sig_sum_stage1_0;
//        sig_sum[1]=sig_sum_stage1_1;
//        sig_sum[2]=sig_sum_stage1_2;
//        sig_sum[3]=sig_sum_stage1_3;
//        sig_sum[4]=sig_carry_stage0_3;
//
//        sig_carry[0]=zero;
//        sig_carry[1]=sig_carry_stage1_0;
//        sig_carry[2]=sig_carry_stage1_1;
//        sig_carry[3]=sig_carry_stage1_2;
//        sig_carry[4]=sig_carry_stage1_3;

//        for(int i=0;i<5;i++){
//            S_p[i](sig_sum[i]);
//            S_n[i](sig_carry[i]);
//        }


        for (int i = 0; i < 5; ++i) {
            sensitive << Aa[i];
            sensitive << Ab[i];
            sensitive << Ba[i];
            sensitive << Bb[i];
        }

    };


} ;



#endif //FOUR_DIGIT_ADDER_H