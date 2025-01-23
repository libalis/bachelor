#include "../hpp/multiplier.hpp"

template <size_t T>
void MULTIPLIER<T>::reset(void) {
    lock = MULTIPLIER_LOCK;
}

template <size_t T>
void MULTIPLIER<T>::multiply(void) {
    btint<T * 2> product;
    if(lock == MULTIPLIER_LOCK) {
        b = multiplier_b.read();
        adder_subtractor_b.write(btint<T>());
        shift_register_reset.write(1);
        multiplier_product.write(btint<T * 2>());
    } else if(lock > 0) {
        if(b.get_value(0)) {
            adder_subtractor_b.write(multiplier_a.read());
        } else {
            adder_subtractor_b.write(btint<T>());
        }
        adder_subtractor_subtract.write(b.get_value(0) == -1);
        b = b.shift_right(1);
        shift_register_reset.write(0);
        for(int i = 0; i < T - 1; i++) {
            product.set_value(i, shift_register_state.read().get_value(i));
        }
        for(int i = 0; i < T + 1; i++) {
            product.set_value(i + T - 1, sum.get_value(i));
        }
        multiplier_product.write(product);
    }
    sum = adder_subtractor_sum.read();
    lock--;
}
