#include "tb.hpp"

void testbench::source() {
    //Reset
    rst.write(1);
    wait();
    rst.write(0);
    wait();
    if(op == 0) {
        printf("Matrixinversion\n");
        printf("Matrix a:\n");
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                printf("%7.3f ", (float)matrixa[i][j].to_int());
            }
            printf("\n"); 
        }
    } else if (op == 1) {
        printf("Matrix-Matrix-Multiplikation\n");
        printf("Matrix a:\n");
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                printf("%3.d ",matrixa[i][j].to_int());
            }
            printf("\n"); 
        }
        printf("Matrix b:\n");
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                printf("%3.d ",matrixb[i][j].to_int());
            }
            printf("\n"); 
        }
    } else {
        printf("Matrix-Vektor-Multiplikation\n");
        printf("Matrix a:\n");
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                printf("%3.d ",matrixa[i][j].to_int());
            }
            printf("\n"); 
        }
        printf("Vektor:\n");
        for (int i = 0; i < X; i++) {
            printf("%3.d",vektor[i].to_int());
            printf("\n");
        } 
    }
    
}

void testbench::sink() {
    sc_int<8> indata_u[X][X];
    sc_int<8> indata_d[X][X];
    do
    {
        wait();
    } while (!done);

    wait();
    
    printf("Result:\n");
    if(op == 0) {
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                indata_u[i][j] = result_u[i][j].read();
                indata_d[i][j] = result_d[i][j].read();
                if (indata_u[i][j] == 0) {
                    printf("%7.3f ", (float)0);
                } else {
                    printf("%7.3f ", (float)indata_u[i][j].to_int()/indata_d[i][j].to_int());
                }
            }
            printf("\n");
        }
    } else if(op == 1) {
        for (int i = 0; i < X; i++) {
            for (int j = 0; j < X; j++) {
                indata_u[i][j] = result_u[i][j].read();
                printf("%3.d ",indata_u[i][j].to_int());
            }
            printf("\n");
        }
    } else {
        for (int i = 0; i < X; i++) {
            indata_u[i][0] = result_u[i][0].read();
            printf("%3.d ",indata_u[i][0].to_int());
            printf("\n");
        }
    }
    //End Simulation
    sc_stop();    
}
