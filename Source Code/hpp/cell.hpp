#ifndef CELL_HPP
    #define CELL_HPP

    #include "multiplier.hpp"

    template <size_t T>
    SC_MODULE(CELL) {
        sc_in<bool> cell_clock;
        sc_in<bool> cell_reset;
        sc_in<btint<T>> cell_b_in;
        sc_in<btint<T>> cell_c_in;

        sc_out<btint<T>> cell_b_out;
        sc_out<btint<T>> cell_c_out;

        sc_signal<bool> zero;

        ADDER_SUBTRACTOR<T> *adder_subtractor;

        sc_signal<sc_biguint<2 * T + 1>> adder_subtractor_a;
        sc_signal<sc_biguint<2 * T + 1>> adder_subtractor_b;

        sc_signal<sc_biguint<2 * (T + 1) + 1>> adder_subtractor_sum;

        MULTIPLIER<T> *multiplier;

        sc_signal<btint<T>> multiplier_a;
        sc_signal<btint<T>> multiplier_b;

        sc_signal<btint<T * 2>> multiplier_product;

        btint<T> state;

        void compute(void);

        SC_CTOR(CELL) {
            zero.write(0);

            adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(zero);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            multiplier = new MULTIPLIER<T>("multiplier");
            multiplier->multiplier_clock(cell_clock);
            multiplier->multiplier_reset(zero);
            multiplier->multiplier_a(multiplier_a);
            multiplier->multiplier_b(multiplier_b);
            multiplier->multiplier_product(multiplier_product);

            SC_CTHREAD(compute, cell_clock.pos());
            reset_signal_is(cell_reset, true);
        }

        ~CELL(void) {
            delete adder_subtractor;
            delete multiplier;
        }
    };
    template class CELL<TRITS>;
#endif
