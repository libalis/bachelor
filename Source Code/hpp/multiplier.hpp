#ifndef MULTIPLIER_HPP
    #define MULTIPLIER_HPP

    #include "adder_subtractor.hpp"
    #include "shift_register.hpp"

    SC_MODULE(MULTIPLIER) {
        btint<4> b;
        bool init;

        ADDER_SUBTRACTOR<4> *adder_subtractor;

        sc_signal<btint<4>> adder_subtractor_a;
        sc_signal<btint<4>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_subtract;

        sc_signal<btint<4 + 1>> adder_subtractor_sum;

        SHIFT_REGISTER *shift_register;

        sc_signal<btint<4 - 1>> shift_register_state;

        sc_in<bool> multiplier_clock;
        sc_in<btint<4>> multiplier_a;
        sc_in<btint<4>> multiplier_b;

        sc_out<btint<4 * 2>> multiplier_product;

        void source(void);
        void sink(void);

        SC_CTOR(MULTIPLIER) {
            init = 0;

            adder_subtractor = new ADDER_SUBTRACTOR<4>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            shift_register = new SHIFT_REGISTER("shift_register");
            shift_register->shift_register_clock(multiplier_clock);
            shift_register->shift_register_input(adder_subtractor_sum);
            shift_register->shift_register_state(shift_register_state);
            shift_register->shift_register_output(adder_subtractor_a);

            SC_METHOD(source);
            sensitive << multiplier_a << multiplier_b;

            SC_METHOD(sink);
            sensitive << multiplier_clock.pos();
            dont_initialize();
        }

        ~MULTIPLIER(void) {
            delete adder_subtractor;
            delete shift_register;
        }
    };
#endif
