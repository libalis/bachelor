#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    BTINT<T> output;
    shift_register_state.write(btint_reset<T>());
    shift_register_output.write(btint_reset<T>());
    wait();
    while(true) {
        shift_register_state.write(btint_set_value<T>(btint_shift_right<T>(shift_register_state.read(), 1), T - 1, btint_get_value<T + 1>(shift_register_input.read(), 0)));
        for(int i = 0; i < T; i++) {
            output = btint_set_value<T>(output, i, btint_get_value<T + 1>(shift_register_input.read(), i + 1));
        }
        shift_register_output.write(output);
        wait();
    }
}
