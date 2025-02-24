#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    btint<T + 1> input;
    btint<T> state;
    shift_register_state.write(btint<T>().from_int(0));
    shift_register_output.write(btint<T>().from_int(0));
    wait();
    while(true) {
        input = shift_register_input.read();
        state = shift_register_state.read();
        state = state.shift_right(1);
        state = state.set_value(T - 1, input.get_value(0));
        shift_register_state.write(state);
        shift_register_output.write(input.range(T, 1));
        wait();
    }
}
