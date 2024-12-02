#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    #include "../hpp/adder.hpp"
    #include "../hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_clock clock;
        int counter;

        ADDER<T> *a;

        ifstream input_dat;
        ofstream output_dat;

        sc_in<bool> testbench_clock;

        sc_signal<btint<T>> testbench_a;
        sc_signal<btint<T>> testbench_b;

        sc_signal<btint<T + 1>> testbench_sum;

        void count(void);
        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) : clock("main_clock", 10, SC_NS) {
            counter = 0;

            a = new ADDER<T>("a");
            a->adder_clock(testbench_clock);
            a->adder_a(testbench_a);
            a->adder_b(testbench_b);
            a->adder_sum(testbench_sum);

            input_dat.open("./dat/input.dat");
            output_dat.open("./dat/output.dat");

            this->testbench_clock(clock);

            SC_METHOD(count);
            sensitive << testbench_clock.pos();
            dont_initialize();

            SC_METHOD(source);
            sensitive << testbench_clock.pos();
            dont_initialize();

            SC_METHOD(sink);
            sensitive << testbench_clock.pos();
            dont_initialize();
        }

        ~TESTBENCH(void) {
            delete a;

            input_dat.close();
            output_dat.close();
        }
    };
    template class TESTBENCH<TRITS>;
#endif
