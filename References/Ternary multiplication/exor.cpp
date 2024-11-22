//
// Created by H Zhang on 09.08.23.
//
#include "exor.h"
void EXOR::exor(){
    for(int i=0; i<4 ;i++){
        to_add_Ba[i].write(Ba[i].read()^Subtract.read());
        to_add_Bb[i].write(Bb[i].read()^Subtract.read());
    }

};