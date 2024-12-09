#include "../hpp/adder.hpp"

template <size_t T>
void ADDER<T>::source(void) {
    for(int i = 0; i < T; i++) {
        input_a[0][i] = adder_a.read().btint_a[i];
        input_a[1][i] = adder_a.read().btint_b[i];
        input_b[0][i] = adder_b.read().btint_a[i];
        input_b[1][i] = adder_b.read().btint_b[i];
    }
}

template <size_t T>
void ADDER<T>::sink(void) {
    btint<T + 1> sum;
    for(int i = 0; i < T + 1; i++) {
        sum.btint_a[i] = output_sum[0][i];
        sum.btint_b[i] = output_sum[1][i];
    }
    adder_sum.write(sum);
}
