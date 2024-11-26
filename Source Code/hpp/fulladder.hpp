#ifndef FULLADDER_HPP
    #define FULLADDER_HPP

    #include <systemc.h>

    SC_MODULE(FULLADDER) {
        sc_in<bool> clock, reset;

        sc_in<bool> a, b, c_in;

        sc_in<bool> input_valid;
        sc_out<bool> input_ready;

        sc_out<bool> s, c_out;

        sc_out<bool> output_valid;
        sc_in<bool> output_ready;

        void add(void);

        SC_CTOR(FULLADDER) {
            SC_CTHREAD(add, clock.pos());
            reset_signal_is(reset, true);
        }
    };
#endif
