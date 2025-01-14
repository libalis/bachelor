#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    btint<T> output;
    state = state.shift_right(1);
    state.set_value(T - 1, shift_register_input.read().get_value(0));
    shift_register_state.write(state);
    for(int i = 0; i < T; i++) {
        output.set_value(i, shift_register_input.read().get_value(i + 1));
    }
    shift_register_output.write(output);
}
