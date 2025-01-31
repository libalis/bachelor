#include "../hpp/testbench.hpp"

template <size_t T>
void TESTBENCH<T>::source(void) {
    valid.write(0);
    rst.write(1);
    wait();
    rst.write(0);
    wait();
    printf("Matrix:\n");
    for(int i = 0; i < X; i++) {
        for(int j = 0; j < Y; j++) {
            tb_matrix[i][j].write(m<T>[i][j]);
            printf("%3.d ",m<T>[i][j].to_int());
        }
        printf("\n");
    }
    printf("Vektor:\n");
    for(int i = 0; i < Y; i++) {
        tb_vector[i].write(v<T>[i]);
        printf("%3.d ",v<T>[i].to_int());
        printf("\n");
    }
    valid.write(1);
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    sc_int<T> indata[X];
    do {
        wait();
    } while(!done);
    wait();
    printf("Result:\n");
    for(int i = 0; i < X; i++) {
        indata[i] = result[i].read();
        printf("%3.d ",indata[i].to_int());
        printf("\n");
    }
    sc_stop();
}
