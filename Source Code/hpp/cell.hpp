#ifndef CELL_HPP
    #define CELL_HPP

    #ifndef MULTIPLIER_COUNT
        #define MULTIPLIER_COUNT (4)
    #endif

    #include "multiplier.hpp"

    template <size_t T>
    SC_MODULE(CELL) {
        sc_in<bool> cell_clock;
        sc_in<bool> cell_reset;
        sc_in<sc_biguint<2>> cell_op;
        sc_in<btint<T>> cell_a_in;
        sc_in<btint<T>> cell_c_in_u;
        sc_in<btint<T>> cell_c_in_d;
        sc_in<bool> cell_s_in;
        sc_in<bool> cell_s_mm;

        sc_out<btint<T>> cell_a_out;
        sc_out<btint<T>> cell_c_out_u;
        sc_out<btint<T>> cell_c_out_d;
        sc_out<bool> cell_s_out;

        ADDER_SUBTRACTOR<2 * T> *adder_subtractor;

        sc_signal<btint<2 * T>> adder_subtractor_a;
        sc_signal<btint<2 * T>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_subtract;

        sc_signal<btint<2 * T + 1>> adder_subtractor_sum;

        MULTIPLIER<T> *multiplier[MULTIPLIER_COUNT];

        sc_signal<bool> multiplier_reset[MULTIPLIER_COUNT];
        sc_signal<btint<T>> multiplier_a[MULTIPLIER_COUNT];
        sc_signal<btint<T>> multiplier_b[MULTIPLIER_COUNT];

        sc_signal<btint<2 * T>> multiplier_product[MULTIPLIER_COUNT];

        btint<T> state_u;
        btint<T> state_d;

        void compute(void);

        SC_CTOR(CELL) {
            adder_subtractor = new ADDER_SUBTRACTOR<2 * T>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            for(int i = 0; i < MULTIPLIER_COUNT; i++) {
                multiplier[i] = new MULTIPLIER<T>(("multiplier_" + to_string(i)).c_str());
                multiplier[i]->multiplier_clock(cell_clock);
                multiplier[i]->multiplier_reset(multiplier_reset[i]);
                multiplier[i]->multiplier_a(multiplier_a[i]);
                multiplier[i]->multiplier_b(multiplier_b[i]);
                multiplier[i]->multiplier_product(multiplier_product[i]);
            }

            SC_CTHREAD(compute, cell_clock.pos());
            reset_signal_is(cell_reset, 1);
        }

        ~CELL(void) {
            delete adder_subtractor;

            for(int i = 0; i < MULTIPLIER_COUNT; i++) {
                delete multiplier[i];
            }
        }
    };
    template class CELL<TRITS>;
#endif
