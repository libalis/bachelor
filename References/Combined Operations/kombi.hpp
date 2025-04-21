#include "cell.hpp"
#include "control.hpp"
#include <systemc.h>

using namespace std;

SC_MODULE(kombi) {
    sc_in<bool> in_clk;
    sc_in<bool> in_rst;
    sc_out<bool> done_out;
    sc_out<btint<8>> out_result_u[X_DIMENSION * X_DIMENSION];
    sc_out<btint<8>> out_result_d[X_DIMENSION * X_DIMENSION];
    // Lokale Signale
    sc_signal<btint<8>> out_a[X_DIMENSION * X_DIMENSION];
    sc_signal<btint<8>> out_c_u[X_DIMENSION * X_DIMENSION];
    sc_signal<btint<8>> out_c_d[X_DIMENSION * X_DIMENSION];
    sc_signal<btint<8>> in_a[X_DIMENSION * X_DIMENSION];
    sc_signal<btint<8>> in_c_u[X_DIMENSION * X_DIMENSION];
    sc_signal<btint<8>> in_c_d[X_DIMENSION * X_DIMENSION];
    sc_signal<bool> s_in[X_DIMENSION * X_DIMENSION];
    sc_signal<bool> s_out[X_DIMENSION * X_DIMENSION];
    sc_signal<bool> op_in[X_DIMENSION * X_DIMENSION];
    sc_signal<bool> op_out[X_DIMENSION * X_DIMENSION];
    sc_signal<bool> s_mm[X_DIMENSION];
    void func();
    // Module Deklaration
    kombi_control kombic;
    // define cells
    CELL<8> *cell[X_DIMENSION][X_DIMENSION];
    SC_CTOR(kombi) : kombic("kombic") {
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                cell[i][j] = new CELL<8>(("cell_" + to_string(i) + "_" + to_string(j)).c_str());
            }
        }

        func();
    }

    ~kombi(void) {
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                delete cell[i][j];
            }
        }
    }
};
