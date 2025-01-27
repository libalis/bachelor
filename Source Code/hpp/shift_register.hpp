#ifndef SHIFT_REGISTER_HPP
    #define SHIFT_REGISTER_HPP

    #include "btint.hpp"

    template <size_t T>
    SC_MODULE(SHIFT_REGISTER) {
        sc_in<bool> shift_register_clock;
        sc_in<bool> shift_register_reset;
        sc_in<btint<T + 1>> shift_register_input;

        sc_out<btint<T>> shift_register_state;
        sc_out<btint<T>> shift_register_output;

        void shift(void);

        SC_CTOR(SHIFT_REGISTER) {
            SC_CTHREAD(shift, shift_register_clock.pos());
            reset_signal_is(shift_register_reset, true);
        }
    };
    template class SHIFT_REGISTER<TRITS>;
#endif
