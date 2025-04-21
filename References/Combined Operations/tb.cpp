#include "tb.hpp"

void testbench::source() {
    // Reset
    rst.write(1);
    wait();
    rst.write(0);
    wait();
    if (op == 0) {
        printf("Matrixinversion\n");
        printf("Matrix a:\n");
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                printf("%7.3f ", (float)m_a<8>[i][j].to_int());
            }
            printf("\n");
        }
    } else if (op == 1) {
        printf("Matrix-Matrix-Multiplikation\n");
        printf("Matrix a:\n");
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                printf("%3d ", m_a<8>[i][j].to_int());
            }
            printf("\n");
        }
        printf("Matrix b:\n");
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                printf("%3d ", m_b<8>[i][j].to_int());
            }
            printf("\n");
        }
    } else {
        printf("Matrix-Vektor-Multiplikation\n");
        printf("Matrix a:\n");
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                printf("%3d ", m_a<8>[i][j].to_int());
            }
            printf("\n");
        }
        printf("Vektor:\n");
        for (int i = 0; i < X_DIMENSION; i++) {
            printf("%3d", v<8>[i].to_int());
            printf("\n");
        }
    }
}

void testbench::sink() {
    btint<8> indata_u[X_DIMENSION][X_DIMENSION];
    btint<8> indata_d[X_DIMENSION][X_DIMENSION];
    do {
        wait();
    } while (!done);

    wait();

    printf("Result:\n");
    if (op == 0) {
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                indata_u[i][j] = result_u[i][j].read();
                indata_d[i][j] = result_d[i][j].read();
                if (indata_u[i][j].to_int() == 0) {
                    printf("%7.3f ", (float)0);
                } else {
                    printf("%7.3f ", (float)indata_u[i][j].to_int() / indata_d[i][j].to_int());
                }
            }
            printf("\n");
        }
    } else if (op == 1) {
        for (int i = 0; i < X_DIMENSION; i++) {
            for (int j = 0; j < X_DIMENSION; j++) {
                indata_u[i][j] = result_u[i][j].read();
                printf("%3d ", indata_u[i][j].to_int());
            }
            printf("\n");
        }
    } else {
        for (int i = 0; i < X_DIMENSION; i++) {
            indata_u[i][0] = result_u[i][0].read();
            printf("%3d ", indata_u[i][0].to_int());
            printf("\n");
        }
    }
    // End Simulation
    sc_stop();
}
