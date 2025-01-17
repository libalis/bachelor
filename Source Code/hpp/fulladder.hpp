#ifndef FULLADDER_HPP
    #define FULLADDER_HPP

    #include <systemc>

    using namespace sc_core;

    SC_MODULE(FULLADDER) {
        sc_in<bool> fulladder_a;
        sc_in<bool> fulladder_b;
        sc_in<bool> fulladder_carry_in;

        sc_out<bool> fulladder_sum;
        sc_out<bool> fulladder_carry_out;

        void add(void);

        SC_CTOR(FULLADDER) {
            SC_METHOD(add);
            sensitive << fulladder_a << fulladder_b << fulladder_carry_in;
        }
    };
#endif
