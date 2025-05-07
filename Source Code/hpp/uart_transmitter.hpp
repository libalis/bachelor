#ifndef UART_TRANSMITTER_HPP
    #define UART_TRANSMITTER_HPP

    #include "const.hpp"

    template <size_t T>
    SC_MODULE(UART_TRANSMITTER) {
        sc_in<bool> uart_transmitter_clock;
        sc_in<bool> uart_transmitter_reset_active_low;
        sc_in<btint<T>> uart_transmitter_input[X_DIMENSION][X_DIMENSION];
        sc_in<int>  uart_transmitter_column;

        sc_out<bool> uart_transmitter_output;

        void transmit(void);

        SC_CTOR(UART_TRANSMITTER) {
            SC_CTHREAD(transmit, uart_transmitter_clock.pos());
            reset_signal_is(uart_transmitter_reset_active_low, false);
        }
    };
    template class UART_TRANSMITTER<TRITS>;
#endif
