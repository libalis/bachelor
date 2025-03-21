#ifndef MATRIX_VECTOR_CONTROL_HPP
    #define MATRIX_VECTOR_CONTROL_HPP

    #include "const.hpp"

    template <size_t T>
    SC_MODULE(MATRIX_VECTOR_CONTROL) {
        sc_in<bool> matrix_vector_control_clock;
        sc_in<bool> matrix_vector_control_reset;
        sc_in<bool> matrix_vector_control_valid;
        sc_in<btint<T>> matrix_vector_control_matrix[X_DIMENSION][Y_DIMENSION];
        sc_in<btint<T>> matrix_vector_control_vector[Y_DIMENSION];
        sc_in<btint<T>> matrix_vector_control_c_out[Y_DIMENSION];

        sc_out<btint<T>> matrix_vector_control_result[X_DIMENSION];
        sc_out<btint<T>> matrix_vector_control_b_in[Y_DIMENSION];
        sc_out<btint<T>> matrix_vector_control_c_in[Y_DIMENSION];
        sc_out<bool> matrix_vector_control_reset_out;
        sc_out<bool> matrix_vector_control_done;

        bool valid_old;

        void control(void);

        SC_CTOR(MATRIX_VECTOR_CONTROL) {
            SC_CTHREAD(control, matrix_vector_control_clock.pos());
            reset_signal_is(matrix_vector_control_reset, true);
        }
    };
    template class MATRIX_VECTOR_CONTROL<TRITS>;
#endif
