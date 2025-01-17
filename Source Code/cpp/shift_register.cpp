#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    btint<T> output;
    if(shift_register_reset.read()) {
        for(int i = 0; i < T; i++) {
            state.set_value(i, 0);
        }
        shift_register_state.write(btint<T - 1>());
        shift_register_output.write(btint<T>());
    } else {
        state = state.shift_right(1);
        state.set_value(T - 1, shift_register_input.read().get_value(0));
        shift_register_state.write(state);
        for(int i = 0; i < T; i++) {
            output.set_value(i, shift_register_input.read().get_value(i + 1));
        }
        shift_register_output.write(output);
    }
}
