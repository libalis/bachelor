#include "const.hpp"
#include "control.hpp"

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

    sc_int<8> result_u[X * X];
    sc_int<8> result_d[X * X];
    sc_int<8> reg[X * X];
    sc_int<8> steps;
    sc_int<8> indexa[X];
    sc_int<8> indexb;
    bool load_done;
    // Reset
    for (int i = 0; i < X; i++) {
        indexa[i] = 0 - i;
        for (int j = 0; j < X; j++) {
            result_u[i * X + j] = 0;
            result_d[i * X + j] = 0;
            op_in[i * X + j].write(1);
        }
    }
    load_done = false;
    indexb = 0;
    steps = 0;
    done.write(false);
    wait();
    // Reset Ende
    while (true) {
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                out_result_u[i * X + j].write(result_u[i * X + j]);
                out_result_d[i * X + j].write(result_d[i * X + j]);
            }
        }
        // op in
        for (int j = 0; j < X; j++) {
            if (op == 0) {
                op_in[0 * X + j].write(1);
            } else {
                op_in[0 * X + j].write(0);
            }
        }
        // a und op verbindung
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X - 1; j++) {
                in_a[(j + 1) * X + i].write(out_a[j * X + i].read());
                op_in[(j + 1) * X + i].write(op_out[j * X + i].read());
            }
        }
        // c verbindungen
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X - 1; j++) {
                in_c_u[i * X + j + 1].write(out_c_u[i * X + j].read());
                in_c_d[i * X + j + 1].write(out_c_d[i * X + j].read());
            }
        }
        // Unterschiedlich je nach OP
        if (op == 0) { // Inversion
            for (int i = 0; i < X; i++) {
                if (steps >= 2 * X - 2 - i) {
                    s_mm[i].write(true);
                } else {
                    s_mm[i].write(false);
                }
            }
            if (steps >= 3 * X - 2) {
                done.write(true);
            } else {
                done.write(false);
            }
            // s und c in
            for (int i = 0; i < X; i++) {
                if (steps != X - 1) {
                    s_in[i * X + 0].write(0);
                    in_c_u[i * X + 0].write(0);
                    in_c_d[i * X + 0].write(0);
                } else {
                    s_in[i * X + 0].write(1);
                    in_c_u[i * X + 0].write(1);
                    in_c_d[i * X + 0].write(1);
                }
            }
            // a in
            for (int i = 0, k = 0; i < X; i++, k += 2) {
                if (steps >= 0 + k && steps < X + i) {
                    in_a[0 * X + i].write(matrixa[(X - 1 - steps + i)][X - 1 - i]);
                } else {
                    in_a[0 * X + i].write(0);
                }
            }
            // ergebnis
            for (int i = 0; i < X; i++) {
                if (steps >= 2 * X - 1 && steps < 2 * X + i) {
                    result_u[(2 * X - 1 - steps + i) * X + i] = out_c_u[i * X + X - 1].read();
                    result_d[(2 * X - 1 - steps + i) * X + i] = out_c_d[i * X + X - 1].read();
                }
            }
            // s verbindungen mit reg
            for (int i = 1; i < X; i++) {
                for (int j = X - 1 - i; j < X - 1; j++) {
                    s_in[i * X + j + 1] = reg[i * X + j + 1];
                    reg[i * X + j + 1] = s_out[i * X + j].read();
                }
            }
            // s verbindungen ohne reg
            for (int i = 0; i < X - 1; i++) {
                for (int j = 0; j < X - 1 - i; j++) {
                    s_in[i * X + j + 1].write(s_out[i * X + j].read());
                }
            }
            // Schritte hochzaehlen
            steps++;
        } else if (op == 1) { // Matrix-Matrix-Multiplikation
            if (indexa[0] >= 3 * X - 2) {
                done.write(true);
            } else {
                done.write(false);
            }

            for (int i = 0; i < X; i++) {
                in_c_u[i * X + 0].write(0);
            }

            for (int i = 0; i < X; i++) {
                if (indexa[0] >= X + i && indexa[0] < X + X + i) {
                    result_u[(indexa[0] - X - i) * X + i] = out_c_u[i * X + X - 1].read();
                }
            }
            if (!load_done) {
                // Load Matrix b to Reg
                for (int i = 0; i < X; i++) {
                    s_mm[i].write(false);
                }
                for (int i = 0; i < X; i++) {
                    in_a[0 * X + i].write(matrixb[i][(X - 1 - indexb)]);
                }
                if (indexb >= X - 1) {
                    load_done = true;
                    for (int i = 0; i < X; i++) {
                        s_mm[i].write(true);
                    }
                } else {
                    indexb += 1;
                }
            } else {
                for (int i = 0; i < X; i++) {
                    s_mm[i].write(false);
                }
                for (int i = 0; i < X; i++) {
                    if (indexa[i] < 0 || indexa[i] > X - 1) {
                        in_a[0 * X + i].write(0);
                    } else {
                        in_a[0 * X + i].write(matrixa[(indexa[i])][i]);
                    }
                }
                // Indizes hochzaehlen
                for (int i = 0; i < X; i++) {
                    indexa[i]++;
                }
            }
        } else { // Matrix-Vektor-Multiplikation
            if (indexa[X - 1] >= X) {
                done.write(true);
            } else {
                done.write(false);
            }

            if (!load_done) {
                for (int i = 0; i < X; i++) {
                    // Vektor
                    in_a[0 * X + i].write(vektor[i]);
                    for (int i = 0; i < X; i++) {
                        s_mm[i].write(true);
                    }
                }
                load_done = true;
            } else {
                for (int i = 0; i < X; i++) {
                    s_mm[i].write(false);
                }
                for (int i = 0; i < X; i++) {
                    // Matrix
                    if (indexa[i] < 0 || indexa[i] > X - 1) {
                        in_a[0 * X + i].write(0);
                    } else {
                        in_a[0 * X + i].write(matrixa[(indexa[i])][i]);
                    }
                }

                for (int i = 0; i < X; i++) {
                    in_c_u[i * X + 0].write(0);
                }

                if (indexa[X - 1] >= 1 && indexa[X - 1] <= X) {
                    result_u[(indexa[X - 1] - 1) * X + 0] = out_c_u[0 * X + X - 1].read();
                }
                // Indizes hochzaehlen
                for (int i = 0; i < X; i++) {
                    indexa[i]++;
                }
            }
        }
        wait(); // warte auf naechsten clk
    }
}
