#include "../hpp/testbench.hpp"

template <size_t T>
void TESTBENCH<T>::source(void) {
    #ifdef INPUT_OUTPUT
        io.read();
    #endif
    testbench_reset.write(1);
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < Y_DIMENSION; j++) {
            testbench_m_a[i][j].write(m_a<T>[i][j]);
        }
    }
    for(int i = 0; i < Y_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            testbench_m_b[i][j].write(m_b<T>[i][j]);
        }
    }
    for(int i = 0; i < Y_DIMENSION; i++) {
        testbench_v[i].write(v<T>[i]);
    }
    testbench_op.write(op);
    wait();
    testbench_reset.write(0);
    wait();
    if(testbench_op.read() == MATRIX_INVERSION) {
        cout << "Matrix-Inversion" << endl;
        cout << "Matrix-A:" << endl;
        for(int i = 0; i < MIN_DIMENSION; i++) {
            for(int j = 0; j < MIN_DIMENSION; j++) {
                cout << fixed << setprecision(3) << setw(7) << (float)testbench_m_a[i][j].read().to_int() << " ";
            }
            cout << endl;
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << testbench_m_a[i][j].read().btint_a[k] << testbench_m_a[i][j].read().btint_b[k];
                }
            }
        }
        cout << endl;
    } else if(testbench_op.read() == MATRIX_MATRIX_MULTIPLICATION) {
        cout << "Matrix-Matrix-Multiplication" << endl;
        cout << "Matrix-A:" << endl;
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                cout << setw(3) << testbench_m_a[i][j].read().to_int() << " ";
            }
            cout << endl;
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << testbench_m_a[i][j].read().btint_a[k] << testbench_m_a[i][j].read().btint_b[k];
                }
            }
        }
        cout << endl;
        cout << "Matrix-B:" << endl;
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                cout << setw(3) << testbench_m_b[i][j].read().to_int() << " ";
            }
            cout << endl;
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << testbench_m_b[i][j].read().btint_a[k] << testbench_m_b[i][j].read().btint_b[k];
                }
            }
        }
        cout << endl;
    } else {
        cout << "Matrix-Vector-Multiplication" << endl;
        cout << "Matrix-A:" << endl;
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                cout << setw(3) << testbench_m_a[i][j].read().to_int() << " ";
            }
            cout << endl;
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << testbench_m_a[i][j].read().btint_a[k] << testbench_m_a[i][j].read().btint_b[k];
                }
            }
        }
        cout << endl;
        cout << "Vector:" << endl;
        for(int i = 0; i < Y_DIMENSION; i++) {
            cout << setw(3) << testbench_v[i].read().to_int() << endl;
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int k = T - 1; k >= 0; k--) {
                cout << testbench_v[i].read().btint_a[k] << testbench_v[i].read().btint_b[k];
            }
        }
        cout << endl;
    }
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    btint<T> indata_u[X_DIMENSION][X_DIMENSION];
    btint<T> indata_d[X_DIMENSION][X_DIMENSION];
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            indata_u[i][j] = BTINT_ZERO(T);
            indata_d[i][j] = BTINT_ZERO(T);
        }
    }
    do {
        wait();
    } while(!testbench_done);
    wait();
    cout << "Result:" << endl;
    if(testbench_op.read() == MATRIX_INVERSION) {
        for(int i = 0; i < MIN_DIMENSION; i++) {
            for(int j = 0; j < MIN_DIMENSION; j++) {
                indata_u[i][j] = testbench_result_u[i][j].read();
                indata_d[i][j] = testbench_result_d[i][j].read();
                if(indata_d[i][j].to_int() == 0) {
                    cout << fixed << setprecision(3) << setw(7) << 0.0f << " ";
                } else {
                    cout << fixed << setprecision(3) << setw(7) << (float)indata_u[i][j].to_int() / indata_d[i][j].to_int() << " ";
                }
            }
            cout << endl;
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << indata_u[i][j].btint_a[k] << indata_u[i][j].btint_b[k];
                }
            }
        }
        cout << endl;
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << indata_d[i][j].btint_a[k] << indata_d[i][j].btint_b[k];
                }
            }
        }
    } else if(testbench_op.read() == MATRIX_MATRIX_MULTIPLICATION) {
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                indata_u[i][j] = testbench_result_u[i][j].read();
                cout << setw(3) << indata_u[i][j].to_int() << " ";
            }
            cout << endl;
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << indata_u[i][j].btint_a[k] << indata_u[i][j].btint_b[k];
                }
            }
        }
    } else {
        for(int i = 0; i < X_DIMENSION; i++) {
            indata_u[i][0] = testbench_result_u[i][0].read();
            cout << setw(3) << indata_u[i][0].to_int() << endl;
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k--) {
                    cout << indata_u[i][j].btint_a[k] << indata_u[i][j].btint_b[k];
                }
            }
        }
    }
    #ifdef INPUT_OUTPUT
        io.write(indata_u, indata_d);
    #endif
    sc_stop();
}
