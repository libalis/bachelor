#include "../hpp/uart_transmitter.hpp"

template <size_t T>
void UART_TRANSMITTER<T>::transmit(void) {
    btint<T> input[X_DIMENSION][X_DIMENSION];
    uart_transmitter_output.write(1);
    wait();
    while(true) {
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                input[i][j] = uart_transmitter_input[i][j].read();
            }
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                for(int k = T - 1; k >= 0; k -= 4) {
                    uart_transmitter_output.write(0);
                    wait();
                    for(int l = 0; l < 4; l++) {
                        uart_transmitter_output.write(input[i][j].btint_a[0]);
                        wait();
                        uart_transmitter_output.write(input[i][j].btint_b[0]);
                        input[i][j] = input[i][j].shift_right(1);
                        wait();
                    }
                    for(int l = 0; l < 2; l++) {
                        uart_transmitter_output.write(1);
                        wait();
                    }
                }
            }
        }
    }
}
