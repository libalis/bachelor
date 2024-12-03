#include "../hpp/subtractor.hpp"

template <size_t T>
void SUBTRACTOR<T>::source(void) {
    btint<T> output;
    for(int i = 0; i < T; i++) {
        output.btint_a[i] = !subtractor_b.read().btint_a[i];
        output.btint_b[i] = !subtractor_b.read().btint_b[i];
    }
    b.write(output);
}
