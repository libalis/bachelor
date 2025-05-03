#include "../hpp/testbench.hpp"

template <size_t T>
void TESTBENCH<T>::source(void) {
    testbench_reset.write(1);
    wait();
    testbench_reset.write(0);
    wait();
    if(op == MATRIX_INVERSION) {
        printf("Matrix-Inversion\n");
        printf("Matrix-A:\n");
        for(int i = 0; i < MIN_DIMENSION; i++) {
            for(int j = 0; j < MIN_DIMENSION; j++) {
                printf("%7.3f ", (float)m_a<T>[i][j].to_int());
            }
            printf("\n");
        }
    } else if(op == MATRIX_MATRIX_MULTIPLICATION) {
        printf("Matrix-Matrix-Multiplication\n");
        printf("Matrix-A:\n");
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                printf("%3d ", m_a<T>[i][j].to_int());
            }
            printf("\n");
        }
        printf("Matrix-B:\n");
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                printf("%3d ", m_b<T>[i][j].to_int());
            }
            printf("\n");
        }
    } else {
        printf("Matrix-Vector-Multiplication\n");
        printf("Matrix-A:\n");
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                printf("%3d ", m_a<T>[i][j].to_int());
            }
            printf("\n");
        }
        printf("Vector:\n");
        for(int i = 0; i < Y_DIMENSION; i++) {
            printf("%3d", v<T>[i].to_int());
            printf("\n");
        }
    }
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    btint<T> indata_u[X_DIMENSION][X_DIMENSION];
    btint<T> indata_d[X_DIMENSION][X_DIMENSION];
    do {
        wait();
    } while(!testbench_done);
    wait();
    printf("Result:\n");
    if(op == MATRIX_INVERSION) {
        for(int i = 0; i < MIN_DIMENSION; i++) {
            for(int j = 0; j < MIN_DIMENSION; j++) {
                indata_u[i][j] = testbench_result_u[i][j].read();
                indata_d[i][j] = testbench_result_d[i][j].read();
                if(indata_u[i][j].to_int() == 0) {
                    printf("%7.3f ", (float)0);
                } else {
                    printf("%7.3f ", (float)indata_u[i][j].to_int() / indata_d[i][j].to_int());
                }
            }
            printf("\n");
        }
    } else if(op == MATRIX_MATRIX_MULTIPLICATION) {
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                indata_u[i][j] = testbench_result_u[i][j].read();
                printf("%3d ", indata_u[i][j].to_int());
            }
            printf("\n");
        }
    } else {
        for(int i = 0; i < X_DIMENSION; i++) {
            indata_u[i][0] = testbench_result_u[i][0].read();
            printf("%3d ", indata_u[i][0].to_int());
            printf("\n");
        }
    }
    sc_stop();
}
