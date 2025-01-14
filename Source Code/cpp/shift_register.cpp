#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    btint<T> output;
    state.shift_right(1);
    state.btint_a[T - 1] = shift_register_input.read().btint_a[0];
    state.btint_b[T - 1] = shift_register_input.read().btint_b[0];
    shift_register_state.write(state);
    for(int i = 0; i < T; i++) {
        output.btint_a[i] = shift_register_input.read().btint_a[i + 1];
        output.btint_b[i] = shift_register_input.read().btint_b[i + 1];
    }
    shift_register_output.write(output);
}
