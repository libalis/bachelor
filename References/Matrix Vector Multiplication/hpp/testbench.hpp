#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    #include "../../../Source Code/hpp/btint.hpp"
    #include "const.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_in<bool> testbench_clock;
        sc_in<btint<T>> testbench_result[X];
        sc_in<bool> testbench_done;

        sc_out<bool> testbench_reset;
        sc_out<bool> testbench_valid;
        sc_out<btint<T>> testbench_matrix[X][Y];
        sc_out<btint<T>> testbench_vector[Y];

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            SC_CTHREAD(source, testbench_clock.pos());
            SC_CTHREAD(sink, testbench_clock.pos());
        }
    };
    template class TESTBENCH<TRITS>;
#endif
