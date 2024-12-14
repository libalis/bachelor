#include "../hpp/multiplier_register.hpp"

template <size_t T>
void MULTIPLIER_REGISTER<T>::source(void) {
    index = 0;
}

template <size_t T>
void MULTIPLIER_REGISTER<T>::sink(void) {
    if(index > T) {
        return;
    }
    if(index) {
        adder_subtractor_a.write((btint<2 * T - 1>)adder_subtractor_sum.read());
    } else {
        adder_subtractor_a.write(btint<2 * T - 1>());
    }
    if(multiplier_register_b.read().value(index)) {
        adder_subtractor_b.write(((btint<2 * T - 1>)multiplier_register_a.read()).shift_left(index));
        adder_subtractor_subtract.write(multiplier_register_b.read().value(index) == 1 ? 0 : 1);
    } else {
        adder_subtractor_b.write(btint<2 * T - 1>());
        adder_subtractor_subtract.write(0);
    }
    if(index == T) {
        multiplier_register_product.write(adder_subtractor_sum.read());
    }
    index++;
}
