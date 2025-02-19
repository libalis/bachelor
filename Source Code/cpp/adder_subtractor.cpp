#include "../hpp/adder_subtractor.hpp"

template <size_t T>
void ADDER_SUBTRACTOR<T>::source(void) {
    for(int i = 0; i < T; i++) {
        input_a[0][i].write(adder_subtractor_a.read()[2 * i]);
        input_a[1][i].write(adder_subtractor_a.read()[2 * i + 1]);
        input_b[0][i].write(adder_subtractor_b.read()[2 * i] ^ adder_subtractor_subtract.read());
        input_b[1][i].write(adder_subtractor_b.read()[2 * i + 1] ^ adder_subtractor_subtract.read());
    }
}

template <size_t T>
void ADDER_SUBTRACTOR<T>::sink(void) {
    BTINT<T + 1> sum;
    for(int i = 0; i < T + 1; i++) {
        sum[2 * i] = output_sum[0][i];
        sum[2 * i + 1] = output_sum[1][i];
    }
    sum[2 * (T + 1)] = sum[2 * T] + sum[2 * T + 1] - 1;
    adder_subtractor_sum.write(sum);
}
