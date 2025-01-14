#ifndef SHIFT_REGISTER_HPP
    #define SHIFT_REGISTER_HPP

    #include "btint.hpp"

    SC_MODULE(SHIFT_REGISTER) {
        btint<4> state;

        sc_in<bool> shift_register_clock;
        sc_in<btint<4 + 1>> shift_register_input;

        sc_out<btint<4 - 1>> shift_register_state;
        sc_out<btint<4>> shift_register_output;

        void shift(void);

        SC_CTOR(SHIFT_REGISTER) {
            SC_METHOD(shift);
            sensitive << shift_register_clock.pos();
            dont_initialize();
        }
    };
#endif
