//
// Created by H Zhang on 11.09.23.
//

#include "systemc.h"
#include "testbench.h"

void testbench::send_test_vectors() {

    bool value_Multiplicand_A[4] = {0,0,1,1};
    bool value_Multiplicand_B[4] = {1,1,1,1};
    bool value_Multiplier_A[4]   = {0,0,0,1};
    bool value_Multiplier_B[4]   = {1,1,1,1};

    sc_bv<8> value_Product_A;
    sc_bv<8> value_Product_B;

    for (int lv=0; lv < 4; lv++) {
        Multiplier_A[lv].write(value_Multiplier_A[lv]);
        Multiplicand_A[lv].write(value_Multiplicand_A[lv]);
        Multiplier_B[lv].write(value_Multiplier_B[lv]);
        Multiplicand_B[lv].write(value_Multiplicand_B[lv]);
    }

    next_trigger();

    value_Product_A = Product_A.read();
    value_Product_B = Product_B.read();


    cout << "Inputs: Multiplicand= " ;
    for (int lv=3; lv >= 0; lv--)
        print_ternary_value((int)value_Multiplicand_A[lv]*2+value_Multiplicand_B[lv]) ;
    cout << "Inputs: Multiplier= " ;
    for (int lv=3; lv >= 0; lv--)
        print_ternary_value((int)value_Multiplier_A[lv]*2+value_Multiplier_B[lv]) ;

    cout<<"==========>  ";
    cout << "Outputs: Product= " ;
    for (int lv=7; lv >= 0; lv--)
        print_ternary_value((int)value_Product_A[lv].to_bool()*2+value_Product_B[lv].to_bool()) ;

/*
 cout << "  Op2= "  ;
		for (int lv=3; lv >= 0; lv--)
			cout << value_Op2[lv] ;
        cout << "  Cin= "  ;
		for (int lv=3; lv >= 0; lv--)
			cout << value_Cin[lv] ;
        cout << "  Ouputs: Sum= "  ;
		for (int lv=3; lv >= 0; lv--)
			cout << value_Sum[lv] ;
        cout << "  Carry= "  ;
		for (int lv=3; lv >= 0; lv--)
			cout << value_Cout[lv] ;
*/
    cout << endl;

};

void testbench::print_ternary_value(int index) {

    switch (coding_table[index]) {
        case MINUS_ONE:
            cout << "-1 " ;
            break;
        case ZERO:
            cout << "0  " ;
            break;
        case PLUS_ONE:
            cout << "+1 " ;
            break;
    } ;

};