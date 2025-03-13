#include "../hpp/uart_transmitter.hpp"

template <size_t T>
void UART_TRANSMITTER<T>::transmit(void) {
    btint<T> input[X_DIMENSION];
    for(int i = 0; i < X_DIMENSION; i++) {
        uart_transmitter_output[i].write(1);
    }
    wait();
    while(true) {
        for(int i = 0; i < X_DIMENSION; i++) {
            input[i] = uart_transmitter_input[i].read();
        }
        for(int i = 0; i < T; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                uart_transmitter_output[j].write(0);
            }
            wait();
            for(int j = 0; j < X_DIMENSION; j++) {
                uart_transmitter_output[j].write(input[j].btint_a[0]);
            }
            wait();
            for(int j = 0; j < X_DIMENSION; j++) {
                uart_transmitter_output[j].write(input[j].btint_b[0]);
            }
            for(int j = 0; j < X_DIMENSION; j++) {
                input[j] = input[j].shift_right(1);
            }
            wait();
            for(int j = 0; j < 2; j++) {
                for(int k = 0; k < X_DIMENSION; k++) {
                    uart_transmitter_output[k].write(1);
                }
                wait();
            }
        }
    }
}
