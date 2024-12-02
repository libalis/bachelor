#include "../hpp/adder.hpp"

template <size_t T>
void ADDER<T>::source(void) {
    zero.write(0);
    one.write(1);
    for(int i = 0; i < T; i++) {
        input_a[0][i] = adder_a.read().btint_a[i];
        input_a[1][i] = adder_a.read().btint_b[i];
        input_b[0][i] = adder_b.read().btint_a[i];
        input_b[1][i] = adder_b.read().btint_b[i];
    }
}

template <size_t T>
void ADDER<T>::sink(void) {
    adder_sum.write(register_output.read());
}
