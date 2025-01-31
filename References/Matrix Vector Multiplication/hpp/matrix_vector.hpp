#ifndef MATRIX_VECTOR_HPP
    #define MATRIX_VECTOR_HPP

    #include <systemc.h>

    #include "matrix_vector_control.hpp"
    #include "cell.hpp"

    template <size_t T>
    SC_MODULE(MATRIX_VECTOR) {
        sc_in<sc_int<T>> in_matrix[X][Y];
        sc_in<sc_int<T>> in_vector[Y];
        sc_out<sc_int<T>> out_result[X];
        sc_signal<sc_int<T>> out_b[Y];
        sc_signal<sc_int<T>> out_c[Y];
        sc_signal<sc_int<T>> in_b[Y];
        sc_signal<sc_int<T>> in_c[Y];
        sc_signal<bool> out_write;
        sc_signal<bool> in_write;
        sc_signal<bool> done;
        sc_in<bool> valid_in;
        sc_out<bool> done_out;
        sc_in<bool> in_clk;
        sc_in<bool> in_rst;
        MATRIX_VECTOR_CONTROL<T> mvc;
        CELL<T> c0;
        CELL<T> c1;
        CELL<T> c2;
        CELL<T> c3;
        void construct(void);
        SC_CTOR(MATRIX_VECTOR) : mvc("mvc"), c0("c0"), c1("c1"), c2("c2"), c3("c3") {
            construct();
        }
    };
    template class MATRIX_VECTOR<TRITS>;
#endif
