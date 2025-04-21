#include "cell.hpp"
#include "control.hpp"
#include <systemc.h>

using namespace std;

SC_MODULE(kombi) {
    sc_in<bool> in_clk;
    sc_in<bool> in_rst;
    sc_out<bool> done_out;
    sc_out<sc_int<8>> out_result_u[X * X];
    sc_out<sc_int<8>> out_result_d[X * X];
    // Lokale Signale
    sc_signal<sc_int<8>> out_a[X * X];
    sc_signal<sc_int<8>> out_c_u[X * X];
    sc_signal<sc_int<8>> out_c_d[X * X];
    sc_signal<sc_int<8>> in_a[X * X];
    sc_signal<sc_int<8>> in_c_u[X * X];
    sc_signal<sc_int<8>> in_c_d[X * X];
    sc_signal<bool> s_in[X * X];
    sc_signal<bool> s_out[X * X];
    sc_signal<bool> op_in[X * X];
    sc_signal<bool> op_out[X * X];
    sc_signal<bool> s_mm[X];
    void func();
    // Module Deklaration
    kombi_control kombic;
    // define cells
    sys_cell *cell[X];
    SC_CTOR(kombi) : kombic("kombic") {
        for(int i = 0; i < X; i++) {
            cell[i] = new sys_cell(("cell_" + to_string(i)).c_str());
        }

        func();
    }
};
