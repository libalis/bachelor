#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include "const.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_in<bool> testbench_clock;
        sc_in<bool> testbench_done;
        sc_in<btint<T>> testbench_result_u[X_DIMENSION][X_DIMENSION];
        sc_in<btint<T>> testbench_result_d[X_DIMENSION][X_DIMENSION];

        sc_out<bool> testbench_reset;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            SC_CTHREAD(source, testbench_clock.pos());
            SC_CTHREAD(sink, testbench_clock.pos());
        }
    };
    template class TESTBENCH<TRITS>;
#endif
