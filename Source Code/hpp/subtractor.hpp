#ifndef SUBTRACTOR_HPP
    #define SUBTRACTOR_HPP

    #include "../hpp/adder.hpp"

    template <size_t T>
    SC_MODULE(SUBTRACTOR) {
        ADDER<T> *a;

        sc_signal<btint<T>> adder_b;

        sc_in<btint<T>> subtractor_a;
        sc_in<btint<T>> subtractor_b;

        sc_out<btint<T + 1>> subtractor_sum;

        void source(void);

        SC_CTOR(SUBTRACTOR) {
            a = new ADDER<T>("a");
            a->adder_a(subtractor_a);
            a->adder_b(adder_b);
            a->adder_sum(subtractor_sum);

            SC_METHOD(source);
            sensitive << subtractor_a << subtractor_b;
        }

        ~SUBTRACTOR(void) {
            delete a;
        }
    };
    template class SUBTRACTOR<TRITS>;
#endif
