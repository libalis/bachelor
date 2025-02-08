#ifndef MATRIX_VECTOR_HPP
    #define MATRIX_VECTOR_HPP

    #include <systemc.h>

    #include "cell.hpp"
    #include "matrix_vector_control.hpp"

    template <size_t T>
    SC_MODULE(MATRIX_VECTOR) {
        sc_in<bool> matrix_vector_clock;
        sc_in<bool> matrix_vector_reset;
        sc_in<bool> matrix_vector_valid;
        sc_in<btint<T>> matrix_vector_matrix[X][Y];
        sc_in<btint<T>> matrix_vector_vector[Y];

        sc_out<btint<T>> matrix_vector_result[X];
        sc_out<bool> matrix_vector_done;

        CELL<T> *cell[Y];

        sc_signal<bool> cell_reset;
        sc_signal<btint<T>> cell_b_in[Y];
        sc_signal<btint<T>> cell_c_in[Y];

        sc_signal<btint<T>> cell_b_out[Y];
        sc_signal<btint<T>> cell_c_out[Y];

        MATRIX_VECTOR_CONTROL<T> *matrix_vector_control;

        void construct(void);

        SC_CTOR(MATRIX_VECTOR) {
            matrix_vector_control = new MATRIX_VECTOR_CONTROL<T>("matrix_vector_control");

            for(int i = 0; i < Y; i++) {
                cell[i] = new CELL<T>(("cell_" + to_string(i)).c_str());
            }

            construct();
        }

        ~MATRIX_VECTOR(void) {
            delete matrix_vector_control;

            for(int i = 0; i < Y; i++) {
                delete cell[i];
            }
        }
    };
    template class MATRIX_VECTOR<TRITS>;
#endif
