#ifndef FULLADDER_HPP
    #define FULLADDER_HPP

    #include <systemc.h>

    SC_MODULE(FULLADDER) {
        sc_in<bool> input0;
        sc_in<bool> input1;
        sc_in<bool> carry_in;

        sc_out<bool> sum;
        sc_out<bool> carry_out;

        void add(void);

        SC_CTOR(FULLADDER) {
            SC_METHOD(add);
            sensitive << input0 << input1 << carry_in;
        }
    };
#endif
