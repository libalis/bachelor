#ifndef FA_TESTBENCH_H
#define FA_TESTBENCH_H
#include <systemc.h>
typedef enum ternary{MINUS_ONE, ZERO, PLUS_ONE} Ternary;
#define MUL_H
SC_MODULE(testbench) {
    sc_out<bool> Multiplier_A[4], Multiplier_B[4];
    sc_out<bool> Multiplicand_A[4], Multiplicand_B[4];
    sc_in<sc_bv<8>> Product_A, Product_B;
    sc_in<bool> Clk;
    Ternary coding_table[4] = {MINUS_ONE, ZERO, ZERO, PLUS_ONE};
    void send_test_vectors();
    void print_ternary_value(int index);
    SC_CTOR(testbench) {
        SC_METHOD(send_test_vectors);
        sensitive << Clk.pos();
    }
};
#endif
