#include <systemc.h>
#include "../hpp/mul.hpp"
#include "../hpp/testbench.hpp"
int sc_main(int argc, char *argv[]) {
    sc_signal<bool> sig_multiplicand_A[4], sig_multiplicand_B[4], sig_multiplier_A[4], sig_multiplier_B[4];
    sc_signal<sc_bv<8>> sig_out_prod_a, sig_out_prod_b;
    sc_clock clock_signal("clock_signal", 10, SC_NS);
    testbench TB("Testbench");
    for(int i = 0; i < 4; i++) {
        TB.Multiplicand_A[i](sig_multiplicand_A[i]);
        TB.Multiplier_A[i](sig_multiplier_A[i]);
        TB.Multiplicand_B[i](sig_multiplicand_B[i]);
        TB.Multiplier_B[i](sig_multiplier_B[i]);
    }
    TB.Product_A(sig_out_prod_a);
    TB.Product_B(sig_out_prod_b);
    TB.Clk(clock_signal);
    mul DUT("DUT");
    for(int i = 0; i < 4; i++) {
        DUT.Aa[i](sig_multiplicand_A[i]);
        DUT.Ba[i](sig_multiplier_A[i]);
        DUT.Ab[i](sig_multiplicand_B[i]);
        DUT.Bb[i](sig_multiplier_B[i]);
    };
    DUT.Clk(clock_signal);
    DUT.Prod_a(sig_out_prod_a);
    DUT.Prod_b(sig_out_prod_b);
    cout << "@" << sc_time_stamp().to_seconds() * 1e9 << "  ns: " << "start simulation" << endl;
    for(int i = 0; i < 8; i++) {
        sc_start(10, SC_NS);
        cout << "@" << sc_time_stamp() << ": ";
        cout << "adder.A: ";
        for(int j = 0; j < 4; j++) {
            cout << DUT.a.Aa[j].read();
            cout << DUT.a.Ab[j].read();
        }
        cout << ", adder.B: ";
        for(int j = 0; j < 4; j++) {
            cout << DUT.a.Ba[j].read();
            cout << DUT.a.Bb[j].read();
        }
        cout << ", adder.Sum_a: ";
        for(int j = 0; j < 5; j++) {
            cout << DUT.a.Sum_a[j].read();
        }
        cout << ", adder.Sum_b: ";
        for(int j = 0; j < 5; j++) {
            cout << DUT.a.Sum_b[j].read();
        }
        cout << " Sum_a[0]: ";
        cout << DUT.a.Sum_a[0]->read();
        cout << " Sum_b[0]: ";
        cout << DUT.a.Sum_b[0]->read();
        cout << " Sum_a[1]: ";
        cout << DUT.a.Sum_a[1]->read();
        cout << " Sum_b[1]: ";
        cout << DUT.a.Sum_b[1]->read();
        cout << endl;
    }
    cout << "@" << sc_time_stamp() << ": " << "end simulation" << endl;
    return 0;
}
