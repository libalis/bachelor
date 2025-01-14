#include "../hpp/multiplier.hpp"

void MULTIPLIER::source(void) {
    init = 1;
}

void MULTIPLIER::sink(void) {
    btint<4 * 2> product;
    if(init) {
        adder_subtractor_b.write(btint<4>());
        b = multiplier_b.read();
        init = 0;
        return;
    }
    adder_subtractor_subtract.write(!(b.btint_a[0] && b.btint_b[0]));
    if(b.btint_a[0] ^ b.btint_b[0]) {
        adder_subtractor_b.write(btint<4>());
    } else {
        adder_subtractor_b.write(multiplier_a.read());
    }
    for(int i = 1; i < 4; i++) {
        b.btint_a[i - 1] = b.btint_a[i];
        b.btint_b[i - 1] = b.btint_b[i];
    }
    for(int i = 0; i < 4 + 1; i++) {
        product.btint_a[i + 4 - 1] = adder_subtractor_sum.read().btint_a[i];
        product.btint_b[i + 4 - 1] = adder_subtractor_sum.read().btint_b[i];
    }
    for(int i = 0; i < 4 - 1; i++) {
        product.btint_a[i] = shift_register_state.read().btint_a[i];
        product.btint_b[i] = shift_register_state.read().btint_b[i];
    }
    multiplier_product.write(product);
}
