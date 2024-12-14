#ifndef MULTIPLIER_REGISTER_HPP
    #define MULTIPLIER_REGISTER_HPP

    #include "../hpp/adder_subtractor.hpp"

    template <size_t T>
    SC_MODULE(MULTIPLIER_REGISTER) {
        int index;

        #ifndef FIXED_TRITS
            ADDER_SUBTRACTOR<2 * T - 1> *adder_subtractor;

            sc_signal<btint<2 * T - 1>> adder_subtractor_a;
            sc_signal<btint<2 * T - 1>> adder_subtractor_b;
        #else
            ADDER_SUBTRACTOR<T> *adder_subtractor;

            sc_signal<btint<T>> adder_subtractor_a;
            sc_signal<btint<T>> adder_subtractor_b;
        #endif
        sc_signal<bool> adder_subtractor_subtract;

        #ifndef FIXED_TRITS
            sc_signal<btint<2 * T>> adder_subtractor_sum;
        #else
            sc_signal<btint<T>> adder_subtractor_sum;
        #endif

        sc_in<bool> multiplier_register_clock;

        sc_in<btint<T>> multiplier_register_a;
        sc_in<btint<T>> multiplier_register_b;

        #ifndef FIXED_TRITS
            sc_out<btint<2 * T>> multiplier_register_product;
        #else
            sc_out<btint<T>> multiplier_register_product;
        #endif

        void source(void);
        void sink(void);

        SC_CTOR(MULTIPLIER_REGISTER) {
            index = 0;

            #ifndef FIXED_TRITS
                adder_subtractor = new ADDER_SUBTRACTOR<2 * T - 1>("adder_subtractor");
            #else
                adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
            #endif
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            SC_METHOD(source);
            sensitive << multiplier_register_a << multiplier_register_b;

            SC_METHOD(sink);
            sensitive << multiplier_register_clock.pos();
            dont_initialize();
        }

        ~MULTIPLIER_REGISTER(void) {
            delete adder_subtractor;
        }
    };
    template class MULTIPLIER_REGISTER<TRITS>;
#endif
