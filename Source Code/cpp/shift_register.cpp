#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    shift_register_state.write(shift_register_state.read().from_int(0));
    shift_register_output.write(shift_register_output.read().from_int(0));
    wait();
    while(true) {
        shift_register_state.write(shift_register_state.read().shift_right(1).set_value(T - 1, shift_register_input.read().get_value(0)));
        shift_register_output.write(shift_register_input.read().range(T, 1));
        wait();
    }
}
