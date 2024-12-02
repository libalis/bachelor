#include "../hpp/register.hpp"

template <size_t T>
void REGISTER<T>::sink(void) {
    btint<T + 1> output;
    for(int i = 0; i < T + 1; i++) {
        output.btint_a[i] = register_input[0][i];
        output.btint_b[i] = register_input[1][i];
    }
    register_output.write(output);
}
