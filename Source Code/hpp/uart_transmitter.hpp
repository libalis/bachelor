#ifndef UART_TRANSMITTER_HPP
    #define UART_TRANSMITTER_HPP

    #ifndef UART_TRANSMITTER_LOCK
        #define UART_TRANSMITTER_LOCK (5 * T)
    #endif

    #include "const.hpp"

    template <size_t T>
    SC_MODULE(UART_TRANSMITTER) {
        sc_in<bool> uart_transmitter_clock;
        sc_in<bool> uart_transmitter_reset;
        sc_in<btint<T>> uart_transmitter_input[X_DIMENSION];

        sc_out<bool> uart_transmitter_output[X_DIMENSION];

        void transmit(void);

        SC_CTOR(UART_TRANSMITTER) {
            SC_CTHREAD(transmit, uart_transmitter_clock.pos());
            reset_signal_is(uart_transmitter_reset, false);
        }
    };
    template class UART_TRANSMITTER<TRITS>;
#endif
