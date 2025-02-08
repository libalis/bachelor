#include "../hpp/testbench.hpp"

template <size_t T>
void TESTBENCH<T>::source(void) {
    testbench_valid.write(0);
    testbench_reset.write(1);
    wait();
    testbench_reset.write(0);
    wait();
    printf("Matrix:\n");
    for(int i = 0; i < X; i++) {
        for(int j = 0; j < Y; j++) {
            testbench_matrix[i][j].write(m<T>[i][j]);
            printf("%5.d ", m<T>[i][j].to_int());
        }
        printf("\n");
    }
    printf("Vektor:\n");
    for(int i = 0; i < Y; i++) {
        testbench_vector[i].write(v<T>[i]);
        printf("%5.d ", v<T>[i].to_int());
        printf("\n");
    }
    testbench_valid.write(1);
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    btint<T> indata[X];
    do {
        wait();
    } while(!testbench_done);
    wait();
    printf("Result:\n");
    for(int i = 0; i < X; i++) {
        indata[i] = testbench_result[i].read();
        printf("%5.d ", indata[i].to_int());
        printf("\n");
    }
    sc_stop();
}
