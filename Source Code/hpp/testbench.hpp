#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    #include "../hpp/adder.hpp"
    #include "../hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        int counter;
        sc_clock clock;
        ADDER<T> *a;
        ofstream output_dat;

        sc_in<bool> testbench_clock;

        sc_signal<btint<T>> testbench_a;
        sc_signal<btint<T>> testbench_b;

        sc_signal<btint<T + 1>> testbench_sum;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) : clock("main_clock", 10, SC_NS) {
            counter = 0;

            a = new ADDER<T>("a");
            a->adder_clock(testbench_clock);
            a->adder_a(testbench_a);
            a->adder_b(testbench_b);
            a->adder_sum(testbench_sum);

            output_dat.open("./dat/output.dat");

            this->testbench_clock(clock);

            SC_METHOD(source);
            sensitive << testbench_clock.pos();

            SC_METHOD(sink);
            sensitive << testbench_clock.pos();
        }

        ~TESTBENCH(void) {
            delete a;

            output_dat.close();
        }
    };
    template class TESTBENCH<TRITS>;
#endif
