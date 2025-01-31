#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    #include "const.hpp"
    #include "../../../Source Code/hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_in<bool> clk;
        sc_out<bool> rst;
        sc_out<bool> valid;
        sc_in<bool> done;
        sc_in<btint<T>> result[X];
        sc_out<btint<T>> tb_matrix[X][Y];
        sc_out<btint<T>> tb_vector[Y];
        void source(void);
        void sink(void);
        SC_CTOR(TESTBENCH) {
            SC_CTHREAD(source, clk.pos());
            SC_CTHREAD(sink, clk.pos());
        }
    };
    template class TESTBENCH<TRITS>;
#endif
