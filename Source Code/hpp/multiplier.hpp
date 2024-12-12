#ifndef MULTIPLIER_HPP
    #define MULTIPLIER_HPP

    #include "../hpp/multiplier_register.hpp"

    template <size_t T>
    SC_MODULE(MULTIPLIER) {
        MULTIPLIER_REGISTER<T> *multiplier_register;

        sc_in<bool> multiplier_clock;

        sc_in<btint<T>> multiplier_a;
        sc_in<btint<T>> multiplier_b;

        sc_out<btint<2 * T>> multiplier_product;

        SC_CTOR(MULTIPLIER) {
            multiplier_register = new MULTIPLIER_REGISTER<T>("multiplier_register");
            multiplier_register->multiplier_register_clock(multiplier_clock);
            multiplier_register->multiplier_register_a(multiplier_a);
            multiplier_register->multiplier_register_b(multiplier_b);
            multiplier_register->multiplier_register_product(multiplier_product);
        }

        ~MULTIPLIER(void) {
            delete multiplier_register;
        }
    };
    template class MULTIPLIER<TRITS>;
#endif
