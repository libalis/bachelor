//
// Created by H Zhang on 05.09.23.
//
#include "reg_prod.h"

void reg_prod::get_prod(){
    reg_prod_a = reg_prod_a << 1;
    reg_prod_a[0]=prod_a.read()?1:0;
    reg_prod_b = reg_prod_b << 1;
    reg_prod_b[0]=prod_b.read()?1:0;
    count++;
//    cout<<count<<"  prod_a   "<<prod_a<<endl;;
//    cout<<"     prod_b   "<<prod_b;
    if (count == 8) {
        out_prod_a.write(reg_prod_a);
        out_prod_b.write(reg_prod_b);
//        cout<<"     prod_a   "<<prod_a;
//        cout<<"prod_b   "<<prod_b;
//        cout<<"     reg_prod_a   "<<reg_prod_a;
//        cout<<"    reg_prod_b   "<<reg_prod_b<<endl;
        count = 0;
    }
}

