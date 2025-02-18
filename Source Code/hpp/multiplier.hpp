#ifndef MULTIPLIER_HPP
    #define MULTIPLIER_HPP

    #ifndef MULTIPLIER_LOCK
        #define MULTIPLIER_LOCK (T + 3)
    #endif

    #include "adder_subtractor.hpp"
    #include "shift_register.hpp"

    template <size_t T>
    SC_MODULE(MULTIPLIER) {
        sc_in<bool> multiplier_clock;
        sc_in<bool> multiplier_reset;
        sc_in<btint<T>> multiplier_a;
        sc_in<btint<T>> multiplier_b;

        sc_out<btint<T * 2>> multiplier_product;

        ADDER_SUBTRACTOR<T> *adder_subtractor;

        sc_signal<sc_biguint<2 * T + 1>> adder_subtractor_a;
        sc_signal<sc_biguint<2 * T + 1>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_subtract;

        sc_signal<sc_biguint<2 * (T + 1) + 1>> adder_subtractor_sum;

        SHIFT_REGISTER<T> *shift_register;

        sc_signal<bool> shift_register_reset;

        sc_signal<btint<T>> shift_register_state;

        btint<T> a_old;
        btint<T> b_old;
        btint<T> b;
        int lock;

        void multiply(void);

        SC_CTOR(MULTIPLIER) {
            adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            shift_register = new SHIFT_REGISTER<T>("shift_register");
            shift_register->shift_register_clock(multiplier_clock);
            shift_register->shift_register_reset(shift_register_reset);
            shift_register->shift_register_input(adder_subtractor_sum);
            shift_register->shift_register_state(shift_register_state);
            shift_register->shift_register_output(adder_subtractor_a);

            lock = 0;

            SC_CTHREAD(multiply, multiplier_clock.pos());
            reset_signal_is(multiplier_reset, true);
        }

        ~MULTIPLIER(void) {
            delete adder_subtractor;
            delete shift_register;
        }
    };
    template class MULTIPLIER<TRITS>;
#endif
