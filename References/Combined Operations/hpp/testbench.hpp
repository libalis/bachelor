#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include "const.hpp"
    #include "io.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_in<bool> testbench_clock;
        sc_in<bool> testbench_done;
        sc_in<btint<T>> testbench_result_u[X_DIMENSION][X_DIMENSION];
        sc_in<btint<T>> testbench_result_d[X_DIMENSION][X_DIMENSION];

        sc_out<bool> testbench_reset;
        sc_out<btint<T>> testbench_m_a[X_DIMENSION][Y_DIMENSION];
        sc_out<btint<T>> testbench_m_b[Y_DIMENSION][X_DIMENSION];
        sc_out<btint<T>> testbench_v[Y_DIMENSION];
        sc_out<sc_biguint<2>> testbench_op;

        #ifdef INPUT_OUTPUT
            IO<T> io;
        #endif

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            SC_CTHREAD(source, testbench_clock.pos());
            SC_CTHREAD(sink, testbench_clock.pos());
        }
    };
    template class TESTBENCH<TRITS>;
#endif
