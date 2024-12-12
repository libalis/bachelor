#ifndef MULTIPLIER_REGISTER_HPP
    #define MULTIPLIER_REGISTER_HPP

    #include "../hpp/adder_subtractor.hpp"

    template <size_t T>
    SC_MODULE(MULTIPLIER_REGISTER) {
        int index;

        ADDER_SUBTRACTOR<2 * T - 1> *adder_subtractor;

        sc_signal<btint<2 * T - 1>> adder_subtractor_a;
        sc_signal<btint<2 * T - 1>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_subtract;

        sc_signal<btint<2 * T>> adder_subtractor_sum;

        sc_in<bool> multiplier_register_clock;

        sc_in<btint<T>> multiplier_register_a;
        sc_in<btint<T>> multiplier_register_b;

        sc_out<btint<2 * T>> multiplier_register_product;

        void source(void);
        void sink(void);

        SC_CTOR(MULTIPLIER_REGISTER) {
            index = 0;

            adder_subtractor = new ADDER_SUBTRACTOR<2 * T - 1>("adder_subtractor");
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
