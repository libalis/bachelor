#ifndef MATRIX_VECTOR_CONTROL_HPP
    #define MATRIX_VECTOR_CONTROL_HPP

    #include <systemc.h>

    #include "const.hpp"
    #include "../../../Source Code/hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(MATRIX_VECTOR_CONTROL) {
        sc_in<bool> clk;
        sc_in<bool> rst;
        sc_in<sc_int<T>> out_c[Y];
        sc_in<sc_int<T>> matrix[X][Y];
        sc_in<sc_int<T>> vector[Y];
        sc_in<bool> data_valid;
        sc_out<bool> write_reg;
        sc_out<sc_int<T>> in_b[Y];
        sc_out<sc_int<T>> in_c[Y];
        sc_out<bool> done;
        sc_out<sc_int<T>> mvc_result[X];
        void control(void);
        SC_CTOR(MATRIX_VECTOR_CONTROL) {
            SC_CTHREAD(control, clk.pos());
            reset_signal_is(rst, true);
        }
    };
    template class MATRIX_VECTOR_CONTROL<TRITS>;
#endif
