#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    btint<T> output;
    shift_register_state.write(btint<T>());
    shift_register_output.write(btint<T>());
    wait();
    while(true) {
        shift_register_state.write(shift_register_state.read().shift_right(1).set_value(T - 1, shift_register_input.read().get_value(0)));
        for(int i = 0; i < T; i++) {
            output.set_value(i, shift_register_input.read().get_value(i + 1));
        }
        shift_register_output.write(output);
        wait();
    }
}
