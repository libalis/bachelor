#include "../hpp/multiplier.hpp"

template <size_t T>
void MULTIPLIER<T>::multiply(void) {
    btint<T * 2> product;
    if(multiplier_reset.read()) {
        b = multiplier_b.read();
        adder_subtractor_b.write(btint<T>());
        multiplier_product.write(btint<T * 2>());
    } else {
        adder_subtractor_subtract.write(b.get_value(0) == -1);
        if(b.get_value(0)) {
            adder_subtractor_b.write(multiplier_a.read());
        } else {
            adder_subtractor_b.write(btint<T>());
        }
        b = b.shift_right(1);
        for(int i = 0; i < T + 1; i++) {
            product.set_value(i + T - 1, adder_subtractor_sum.read().get_value(i));
        }
        for(int i = 0; i < T - 1; i++) {
            product.set_value(i, shift_register_state.read().get_value(i));
        }
        multiplier_product.write(product);
    }
}
