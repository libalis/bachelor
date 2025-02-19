#include "../hpp/multiplier.hpp"

template <size_t T>
void MULTIPLIER<T>::multiply(void) {
    btint<T * 2> product;
    lock = MULTIPLIER_LOCK;
    a_old = multiplier_a.read();
    b_old = multiplier_b.read();
    b = multiplier_b.read();
    adder_subtractor_b.write(btint_to_biguint<T>(btint<T>()));
    shift_register_reset.write(1);
    multiplier_product.write(btint<T * 2>());
    wait();
    while(true) {
        if(a_old.to_int() != multiplier_a.read().to_int() || b_old.to_int() != multiplier_b.read().to_int()) {
            lock = MULTIPLIER_LOCK;
            a_old = multiplier_a.read();
            b_old = multiplier_b.read();
            b = multiplier_b.read();
            adder_subtractor_b.write(btint_to_biguint<T>(btint<T>()));
            shift_register_reset.write(1);
            multiplier_product.write(btint<T * 2>());
        } else if(lock > 0) {
            if(b.get_value(0)) {
                adder_subtractor_b.write(btint_to_biguint<T>(multiplier_a.read()));
            } else {
                adder_subtractor_b.write(btint_to_biguint<T>(btint<T>()));
            }
            adder_subtractor_subtract.write(b.get_value(0) == -1);
            b = b.shift_right(1);
            shift_register_reset.write(0);
            for(int i = 0; i < T; i++) {
                product.set_value(i, biguint_to_btint<T>(shift_register_state.read()).get_value(i));
            }
            for(int i = 0; i < T; i++) {
                product.set_value(i + T, biguint_to_btint<T>(adder_subtractor_a.read()).get_value(i));
            }
            multiplier_product.write(product);
        }
        if(lock > 0) {
            lock--;
        }
        wait();
    }
}
