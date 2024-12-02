#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    #include "../hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        ofstream testbench_output_dat;

        sc_in<bool> testbench_clock;

        sc_out<btint<T>> testbench_a;
        sc_out<btint<T>> testbench_b;

        sc_in<btint<T + 1>> testbench_sum;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            testbench_output_dat.open("./dat/output.dat");

            SC_METHOD(source);
            sensitive << testbench_clock.pos();

            SC_METHOD(sink);
            sensitive << testbench_sum;
        }

        ~TESTBENCH(void) {
            testbench_output_dat.close();
        }
    };
    template class TESTBENCH<TRITS>;
#endif
