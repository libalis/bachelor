#include "../hpp/shift_register.hpp"

void SHIFT_REGISTER::shift(void) {
    btint<4> output;
    for(int i = 0; i < 4 - 1; i++) {
        state.btint_a[i] = state.btint_a[i + 1];
        state.btint_b[i] = state.btint_b[i + 1];
    }
    state.btint_a[3] = shift_register_input.read().btint_a[0];
    state.btint_b[3] = shift_register_input.read().btint_b[0];
    shift_register_state.write(state);
    for(int i = 0; i < 4; i++) {
        output.btint_a[i] = shift_register_input.read().btint_a[i + 1];
        output.btint_b[i] = shift_register_input.read().btint_b[i + 1];
    }
    shift_register_output.write(output);
}
