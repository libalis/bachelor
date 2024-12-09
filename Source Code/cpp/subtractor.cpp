#include "../hpp/subtractor.hpp"

template <size_t T>
void SUBTRACTOR<T>::source(void) {
    btint<T> b;
    for(int i = 0; i < T; i++) {
        b.btint_a[i] = !subtractor_b.read().btint_a[i];
        b.btint_b[i] = !subtractor_b.read().btint_b[i];
    }
    adder_b.write(b);
}
