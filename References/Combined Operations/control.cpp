#include "const.hpp"
#include "control.hpp"
#include "../../Source Code/hpp/multiplier.hpp"

#define T (32)

void kombi_control::func() {
#pragma HLS ARRAY_PARTITION variable = out_a complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_c_u complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_c_d complete dim = 1
#pragma HLS ARRAY_PARTITION variable = s_out complete dim = 1
#pragma HLS ARRAY_PARTITION variable = op_out complete dim = 1
#pragma HLS ARRAY_PARTITION variable = in_a complete dim = 1
#pragma HLS ARRAY_PARTITION variable = in_c_u complete dim = 1
#pragma HLS ARRAY_PARTITION variable = in_c_d complete dim = 1
#pragma HLS ARRAY_PARTITION variable = s_in complete dim = 1
#pragma HLS ARRAY_PARTITION variable = op_in complete dim = 1
#pragma HLS ARRAY_PARTITION variable = s_mm complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_result_u complete dim = 1
#pragma HLS ARRAY_PARTITION variable = out_result_d complete dim = 1
#pragma HLS PIPELINE

    btint<32> result_u[X_DIMENSION * X_DIMENSION];
    btint<32> result_d[X_DIMENSION * X_DIMENSION];
    sc_int<32> reg[X_DIMENSION * X_DIMENSION];
    sc_int<32> steps;
    sc_int<32> indexa[X_DIMENSION];
    sc_int<32> indexb;
    bool load_done;
    // Reset
    for (int i = 0; i < X_DIMENSION; i++) {
        indexa[i] = 0 - i - 1;
        for (int j = 0; j < X_DIMENSION; j++) {
            in_a[i * X_DIMENSION + j].write(BTINT_ZERO(32));
            result_u[i * X_DIMENSION + j] = BTINT_ZERO(32);
            result_d[i * X_DIMENSION + j] = BTINT_ZERO(32);
            op_in[i * X_DIMENSION + j].write(1);
        }
    }
    load_done = false;
    indexb = 0;
    steps = 0;
    done.write(false);
    wait();
    // Reset Ende
    while (true) {
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                out_result_u[i * X_DIMENSION + j].write(result_u[i * X_DIMENSION + j]);
                out_result_d[i * X_DIMENSION + j].write(result_d[i * X_DIMENSION + j]);
            }
        }
        // op in
        for (int j = 0; j < X_DIMENSION; j++) {
            if (op == 0) {
                op_in[0 * X_DIMENSION + j].write(1);
            } else {
                op_in[0 * X_DIMENSION + j].write(0);
            }
        }
        // a und op verbindung
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION - 1; j++) {
                in_a[(j + 1) * X_DIMENSION + i].write(out_a[j * X_DIMENSION + i].read());
                op_in[(j + 1) * X_DIMENSION + i].write(op_out[j * X_DIMENSION + i].read());
            }
        }
        // c verbindungen
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION - 1; j++) {
                in_c_u[i * X_DIMENSION + j + 1].write(out_c_u[i * X_DIMENSION + j].read());
                in_c_d[i * X_DIMENSION + j + 1].write(out_c_d[i * X_DIMENSION + j].read());
            }
        }
        // Unterschiedlich je nach OP
        if (op == 0) { // Inversion
            for (int i = 0; i < X_DIMENSION; i++) {
                if (steps >= 2 * X_DIMENSION - 2 - i) {
                    s_mm[i].write(true);
                } else {
                    s_mm[i].write(false);
                }
            }
            if (steps >= 3 * X_DIMENSION - 1) {
                done.write(true);
            } else {
                done.write(false);
            }
            // s und c in
            for (int i = 0; i < X_DIMENSION; i++) {
                if (steps != X_DIMENSION - 1) {
                    s_in[i * X_DIMENSION + 0].write(0);
                    in_c_u[i * X_DIMENSION + 0].write(BTINT_ZERO(32));
                    in_c_d[i * X_DIMENSION + 0].write(BTINT_ZERO(32));
                } else {
                    s_in[i * X_DIMENSION + 0].write(1);
                    in_c_u[i * X_DIMENSION + 0].write(btint<32>().from_int(1));
                    in_c_d[i * X_DIMENSION + 0].write(btint<32>().from_int(1));
                }
            }
            // a in
            for (int i = 0, k = 0; i < X_DIMENSION; i++, k += 2) {
                if (steps >= 0 + k && steps < X_DIMENSION + i) {
                    in_a[0 * X_DIMENSION + i].write(m_a<32>[(X_DIMENSION - 1 - steps + i)][X_DIMENSION - 1 - i]);
                } else {
                    in_a[0 * X_DIMENSION + i].write(BTINT_ZERO(32));
                }
            }
            // ergebnis
            for (int i = 0; i < X_DIMENSION; i++) {
                if (steps >= 2 * X_DIMENSION - 1 && steps < 2 * X_DIMENSION + i) {
                    result_u[(2 * X_DIMENSION - 1 - steps + i) * X_DIMENSION + i] = out_c_u[i * X_DIMENSION + X_DIMENSION - 1].read();
                    result_d[(2 * X_DIMENSION - 1 - steps + i) * X_DIMENSION + i] = out_c_d[i * X_DIMENSION + X_DIMENSION - 1].read();
                }
            }
            // s verbindungen mit reg
            for (int i = 1; i < X_DIMENSION; i++) {
                for (int j = X_DIMENSION - 1 - i; j < X_DIMENSION - 1; j++) {
                    s_in[i * X_DIMENSION + j + 1] = reg[i * X_DIMENSION + j + 1];
                    reg[i * X_DIMENSION + j + 1] = s_out[i * X_DIMENSION + j].read();
                }
            }
            // s verbindungen ohne reg
            for (int i = 0; i < X_DIMENSION - 1; i++) {
                for (int j = 0; j < X_DIMENSION - 1 - i; j++) {
                    s_in[i * X_DIMENSION + j + 1].write(s_out[i * X_DIMENSION + j].read());
                }
            }
            // Schritte hochzaehlen
            steps++;
        } else if (op == 1) { // Matrix-Matrix-Multiplikation
            if (indexa[0] >= 3 * X_DIMENSION - 1) {
                done.write(true);
            } else {
                done.write(false);
            }

            for (int i = 0; i < X_DIMENSION; i++) {
                in_c_u[i * X_DIMENSION + 0].write(BTINT_ZERO(32));
            }

            for (int i = 0; i < X_DIMENSION; i++) {
                if (indexa[0] >= X_DIMENSION + i && indexa[0] < X_DIMENSION + X_DIMENSION + i) {
                    result_u[(indexa[0] - X_DIMENSION - i) * X_DIMENSION + i] = out_c_u[i * X_DIMENSION + X_DIMENSION - 1].read();
                }
            }
            if (!load_done) {
                // Load Matrix b to Reg
                for (int i = 0; i < X_DIMENSION; i++) {
                    s_mm[i].write(false);
                }
                for (int i = 0; i < X_DIMENSION; i++) {
                    in_a[0 * X_DIMENSION + i].write(m_b<32>[i][(X_DIMENSION - 1 - indexb)]);
                }
                if (indexb >= X_DIMENSION - 1) {
                    load_done = true;
                    for (int i = 0; i < X_DIMENSION; i++) {
                        s_mm[i].write(true);
                    }
                } else {
                    indexb += 1;
                }
            } else {
                for (int i = 0; i < X_DIMENSION; i++) {
                    s_mm[i].write(false);
                }
                for (int i = 0; i < X_DIMENSION; i++) {
                    if (indexa[i] < 0 || indexa[i] > X_DIMENSION - 1) {
                        in_a[0 * X_DIMENSION + i].write(BTINT_ZERO(32));
                    } else {
                        in_a[0 * X_DIMENSION + i].write(m_a<32>[(indexa[i])][i]);
                    }
                }
                // Indizes hochzaehlen
                for (int i = 0; i < X_DIMENSION; i++) {
                    indexa[i]++;
                }
            }
        } else { // Matrix-Vektor-Multiplikation
            if (indexa[X_DIMENSION - 1] >= X_DIMENSION + 1) {
                done.write(true);
            } else {
                done.write(false);
            }

            if (!load_done) {
                for (int i = 0; i < X_DIMENSION; i++) {
                    // Vektor
                    in_a[0 * X_DIMENSION + i].write(v<32>[i]);
                    for (int i = 0; i < X_DIMENSION; i++) {
                        s_mm[i].write(true);
                    }
                }
                load_done = true;
            } else {
                for (int i = 0; i < X_DIMENSION; i++) {
                    s_mm[i].write(false);
                }
                for (int i = 0; i < X_DIMENSION; i++) {
                    // Matrix
                    if (indexa[i] < 0 || indexa[i] > X_DIMENSION - 1) {
                        in_a[0 * X_DIMENSION + i].write(BTINT_ZERO(32));
                    } else {
                        in_a[0 * X_DIMENSION + i].write(m_a<32>[(indexa[i])][i]);
                    }
                }

                for (int i = 0; i < X_DIMENSION; i++) {
                    in_c_u[i * X_DIMENSION + 0].write(BTINT_ZERO(32));
                }

                if (indexa[X_DIMENSION - 1] >= 1 && indexa[X_DIMENSION - 1] <= X_DIMENSION) {
                    result_u[(indexa[X_DIMENSION - 1] - 1) * X_DIMENSION + 0] = out_c_u[0 * X_DIMENSION + X_DIMENSION - 1].read();
                }
                // Indizes hochzaehlen
                for (int i = 0; i < X_DIMENSION; i++) {
                    indexa[i]++;
                }
            }
        }
        wait(3 * MULTIPLIER_LOCK + ADDER_SUBTRACTOR_LOCK); // warte auf naechsten clk
    }
}
