//
// Created by H Zhang on 28.08.23.
//
#include "reg_2ndOp.h"
void reg_2ndOp::get_adder_A(){
//    while(true){
        if(count==0){
            for (int i = 0; i < 4; ++i) {
                reg_Aa[i]=0;
                reg_Ab[i]=0;
            }
            count++;
        }else{
            for (int i = 0; i < 4; ++i) {
                reg_Aa[i]=sum_Aa[i]->read();
                reg_Ab[i]=sum_Ab[i]->read();
            }
            count++;
        }

        for (int i = 0; i < 4; ++i) {
            out_Aa[i]->write(reg_Aa[i].to_bool());
            out_Ab[i]->write(reg_Ab[i].to_bool());
        }
        if(count==4) {
            count = 0;
        }
    }
