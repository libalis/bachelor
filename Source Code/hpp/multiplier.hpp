#ifndef MULTIPLIER_HPP
    #define MULTIPLIER_HPP

    #include "adder_subtractor.hpp"
    #include "shift_register.hpp"

    template <size_t T>
    SC_MODULE(MULTIPLIER) {
        btint<T> b;
        btint<T + 1> sum;

        ADDER_SUBTRACTOR<T> *adder_subtractor;

        sc_signal<btint<T>> adder_subtractor_a;
        sc_signal<btint<T>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_subtract;

        sc_signal<btint<T + 1>> adder_subtractor_sum;

        SHIFT_REGISTER<T> *shift_register;

        sc_signal<btint<T - 1>> shift_register_state;

        sc_in<bool> multiplier_clock;
        sc_in<bool> multiplier_reset;
        sc_in<btint<T>> multiplier_a;
        sc_in<btint<T>> multiplier_b;

        sc_out<btint<T * 2>> multiplier_product;

        void multiply(void);

        SC_CTOR(MULTIPLIER) {
            adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            shift_register = new SHIFT_REGISTER<T>("shift_register");
            shift_register->shift_register_clock(multiplier_clock);
            shift_register->shift_register_reset(multiplier_reset);
            shift_register->shift_register_input(adder_subtractor_sum);
            shift_register->shift_register_state(shift_register_state);
            shift_register->shift_register_output(adder_subtractor_a);

            SC_METHOD(multiply);
            sensitive << multiplier_clock.pos();
            dont_initialize();
        }

        ~MULTIPLIER(void) {
            delete adder_subtractor;
            delete shift_register;
        }
    };
    template class MULTIPLIER<TRITS>;
#endif
