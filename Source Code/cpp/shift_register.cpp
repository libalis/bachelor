#include "../hpp/shift_register.hpp"

template <size_t T>
void SHIFT_REGISTER<T>::shift(void) {
    btint<T> zero = btint<T>().from_int(0);
    btint<T + 1> input;
    btint<T> state;
    shift_register_state.write(zero);
    shift_register_output.write(zero);
    wait();
    while(true) {
        input = shift_register_input.read();
        state = shift_register_state.read();
        state = state.shift_right(1);
        state = state.set_value(T - 1, input.get_value(0));
        shift_register_state.write(state);
        input = input.shift_right(1);
        shift_register_output.write(input.reduce());
        wait();
    }
}
