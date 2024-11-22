//
// Created by H Zhang on 23.06.23.
//
//Full Adder module
#include "systemc.h"
#include "fa.h"

//        //local variables
//        sc_int<1>  sum;
//        sc_int<1>  carry;

        //function implement

void fa::add() {
//    if(reset.read() == 1){
//        sum.write(0);
//        carry_out.write(0);
//    }else if(reset.read() == 0 && enable.read() == 1){
    Sum.write(op1.read() ^ op2.read() ^ Cin.read());
    Cout.write((op1.read() & op2.read()) | (op2.read() & Cin.read()) | (Cin.read() & op1.read()));
//                cout<<"@" << sc_time_stamp() <<"  "<< "op1=" <<op1.read()<<"  "<< "op2=" <<op2.read()<<endl;
//                cout<<"@" << sc_time_stamp() <<"  "<< "out sum=" <<sum.read()<<"  "<< "out carry=" <<carry_out.read()<<endl;
//}
}
//void fa::clear() {
//    while (true) {
//        wait();
//        Sum.write(false);
//        Cout.write(false);
//    }
//}



