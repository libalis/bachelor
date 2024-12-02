#ifndef MAIN_HPP
    #define MAIN_HPP

    #include <systemc.h>

    #include "../hpp/adder.hpp"
    #include "../hpp/testbench.hpp"

    template <size_t T>
    SC_MODULE(MAIN) {
        ADDER<T> *adder;
        TESTBENCH<T> *testbench;

        sc_clock main_clock;

        sc_signal<btint<T>> main_a;
        sc_signal<btint<T>> main_b;

        sc_signal<btint<T + 1>> main_sum;

        SC_CTOR(MAIN) : main_clock("main_clock", 10, SC_NS) {
            adder = new ADDER<T>("adder");
            adder->adder_a(main_a);
            adder->adder_b(main_b);
            adder->adder_sum(main_sum);

            testbench = new TESTBENCH<T>("testbench");
            testbench->testbench_clock(main_clock);
            testbench->testbench_a(main_a);
            testbench->testbench_b(main_b);
            testbench->testbench_sum(main_sum);
        }

        ~MAIN(void) {
            delete adder;
            delete testbench;
        }
    };
    template class MAIN<TRITS>;
#endif
