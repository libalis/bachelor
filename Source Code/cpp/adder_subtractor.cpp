#include "../hpp/adder_subtractor.hpp"

template <size_t T>
void ADDER_SUBTRACTOR<T>::source(void) {
    for(int i = 0; i < T; i++) {
        input_a[0][i].write(adder_subtractor_a.read().btint_a[i]);
        input_a[1][i].write(adder_subtractor_a.read().btint_b[i]);
        input_b[0][i].write(!(adder_subtractor_b.read().btint_a[i] ^ adder_subtractor_add.read()));
        input_b[1][i].write(!(adder_subtractor_b.read().btint_b[i] ^ adder_subtractor_add.read()));
    }
}

template <size_t T>
void ADDER_SUBTRACTOR<T>::sink(void) {
    btint<T + 1> sum;
    for(int i = 0; i < T + 1; i++) {
        sum.btint_a[i] = output_sum[0][i];
        sum.btint_b[i] = output_sum[1][i];
    }
    adder_subtractor_sum.write(sum);
}
