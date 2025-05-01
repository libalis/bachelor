#include "../hpp/uart_transmitter.hpp"

template <size_t T>
void UART_TRANSMITTER<T>::transmit(void) {
    btint<T> input[X_DIMENSION];
    uart_transmitter_output.write(1);
    wait();
    while(true) {
        for(int i = 0; i < X_DIMENSION; i++) {
            input[i] = uart_transmitter_input[i].read();
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = T - 1; j >= 0; j -= 4) {
                uart_transmitter_output.write(0);
                wait();
                for(int k = 0; k < 4; k++) {
                    uart_transmitter_output.write(input[i].btint_a[0]);
                    wait();
                    uart_transmitter_output.write(input[i].btint_b[0]);
                    input[i] = input[i].shift_right(1);
                    wait();
                }
                for(int k = 0; k < 2; k++) {
                    uart_transmitter_output.write(1);
                    wait();
                }
            }
        }
    }
}
