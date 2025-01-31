#include "../../Source Code/hpp/multiplier.hpp"

SC_MODULE(cell) {
    sc_in<bool> cell_clock;
    sc_in<bool> cell_reset;
    sc_in<sc_int<8>> cell_b_in;
    sc_in<sc_int<8>> cell_c_in;

    sc_out<sc_int<8>> cell_b_out;
    sc_out<sc_int<8>> cell_c_out;

    sc_signal<bool> zero;

    ADDER_SUBTRACTOR<8> *adder_subtractor;

    sc_signal<btint<8>> adder_subtractor_a;
    sc_signal<btint<8>> adder_subtractor_b;

    sc_signal<btint<8 + 1>> adder_subtractor_sum;

    MULTIPLIER<8> *multiplier;

    sc_signal<btint<8>> multiplier_a;
    sc_signal<btint<8>> multiplier_b;

    sc_signal<btint<8 * 2>> multiplier_product;

    sc_int<8> state;

    void compute(void);

    SC_CTOR(cell) {
        zero.write(0);

        adder_subtractor = new ADDER_SUBTRACTOR<8>("adder_subtractor");
        adder_subtractor->adder_subtractor_a(adder_subtractor_a);
        adder_subtractor->adder_subtractor_b(adder_subtractor_b);
        adder_subtractor->adder_subtractor_subtract(zero);
        adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

        multiplier = new MULTIPLIER<8>("multiplier");
        multiplier->multiplier_clock(cell_clock);
        multiplier->multiplier_reset(zero);
        multiplier->multiplier_a(multiplier_a);
        multiplier->multiplier_b(multiplier_b);
        multiplier->multiplier_product(multiplier_product);

        SC_CTHREAD(compute, cell_clock.pos());
        reset_signal_is(cell_reset, true);
    }

    ~cell(void) {
        delete adder_subtractor;
        delete multiplier;
    }
};
