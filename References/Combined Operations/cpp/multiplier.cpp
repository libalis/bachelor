#include "../hpp/multiplier.hpp"

template <size_t T>
void MULTIPLIER<T>::multiply(void) {
    btint<T> input_a;
    btint<T> input_b;
    btint<T> a;
    btint<T> state;
    btint<2 * T> product;
    adder_subtractor_b.write(BTINT_ZERO(T));
    shift_register_reset.write(1);
    multiplier_product.write(BTINT_ZERO(2 * T));
    a_old = BTINT_ZERO(T);
    b_old = BTINT_ZERO(T);
    b = BTINT_ZERO(T);
    lock = MULTIPLIER_LOCK;
    wait();
    while(true) {
        input_a = multiplier_a.read();
        input_b = multiplier_b.read();
        a = adder_subtractor_a.read();
        state = shift_register_state.read();
        if(input_a.to_int() != a_old.to_int() || input_b.to_int() != b_old.to_int()) {
            adder_subtractor_b.write(BTINT_ZERO(T));
            shift_register_reset.write(1);
            multiplier_product.write(BTINT_ZERO(2 * T));
            a_old = multiplier_a.read();
            b_old = multiplier_b.read();
            b = multiplier_b.read();
            lock = MULTIPLIER_LOCK;
        } else if(lock > 0) {
            if(b.get_value(0)) {
                adder_subtractor_b.write(multiplier_a.read());
            } else {
                adder_subtractor_b.write(BTINT_ZERO(T));
            }
            adder_subtractor_subtract.write(b.get_value(0) == -1);
            b = b.shift_right(1);
            shift_register_reset.write(0);
            product = a.concatenate(state);
            for(int i = T; i < 2 * T; i++) {
                if(product.get_value(i)) {
                    product = product.set_overflow(product.get_value(i));
                }
            }
            multiplier_product.write(product);
        }
        if(lock > 0) {
            lock--;
        }
        wait();
    }
}
