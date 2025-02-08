#ifndef MATRIX_VECTOR_HPP
    #define MATRIX_VECTOR_HPP

    #include "cell.hpp"
    #include "matrix_vector_control.hpp"

    template <size_t T>
    SC_MODULE(MATRIX_VECTOR) {
        sc_in<bool> matrix_vector_clock;
        sc_in<bool> matrix_vector_reset;
        sc_in<bool> matrix_vector_valid;
        sc_in<btint<T>> matrix_vector_matrix[X_DIMENSION][Y_DIMENSION];
        sc_in<btint<T>> matrix_vector_vector[Y_DIMENSION];

        sc_out<btint<T>> matrix_vector_result[X_DIMENSION];
        sc_out<bool> matrix_vector_done;

        CELL<T> *cell[Y_DIMENSION];

        sc_signal<bool> cell_reset;
        sc_signal<btint<T>> cell_b_in[Y_DIMENSION];
        sc_signal<btint<T>> cell_c_in[Y_DIMENSION];

        sc_signal<btint<T>> cell_b_out[Y_DIMENSION];
        sc_signal<btint<T>> cell_c_out[Y_DIMENSION];

        MATRIX_VECTOR_CONTROL<T> *matrix_vector_control;

        void construct(void);

        SC_CTOR(MATRIX_VECTOR) {
            matrix_vector_control = new MATRIX_VECTOR_CONTROL<T>("matrix_vector_control");

            for(int i = 0; i < Y_DIMENSION; i++) {
                cell[i] = new CELL<T>(("cell_" + to_string(i)).c_str());
            }

            construct();
        }

        ~MATRIX_VECTOR(void) {
            delete matrix_vector_control;

            for(int i = 0; i < Y_DIMENSION; i++) {
                delete cell[i];
            }
        }
    };
    template class MATRIX_VECTOR<TRITS>;
#endif
