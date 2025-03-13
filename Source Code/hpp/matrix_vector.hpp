#ifndef MATRIX_VECTOR_HPP
    #define MATRIX_VECTOR_HPP

    #include "cell.hpp"
    #include "matrix_vector_control.hpp"
    #include "uart_transmitter.hpp"

    template <size_t T>
    SC_MODULE(MATRIX_VECTOR) {
        sc_in<bool> matrix_vector_clock;
        sc_in<bool> matrix_vector_reset;
        sc_in<bool> matrix_vector_valid;
        /*sc_in<btint<T>> matrix_vector_matrix[X_DIMENSION][Y_DIMENSION];
        sc_in<btint<T>> matrix_vector_vector[Y_DIMENSION];*/
        sc_signal<btint<T>> matrix_vector_matrix[X_DIMENSION][Y_DIMENSION];
        sc_signal<btint<T>> matrix_vector_vector[Y_DIMENSION];

        /*sc_out<btint<T>> matrix_vector_result[X_DIMENSION];*/
        sc_signal<btint<T>> matrix_vector_result[X_DIMENSION];
        sc_out<bool> matrix_vector_done;

        CELL<T> *cell[Y_DIMENSION];

        sc_signal<bool> cell_reset;
        sc_signal<btint<T>> cell_b_in[Y_DIMENSION];
        sc_signal<btint<T>> cell_c_in[Y_DIMENSION];

        sc_signal<btint<T>> cell_b_out[Y_DIMENSION];
        sc_signal<btint<T>> cell_c_out[Y_DIMENSION];

        MATRIX_VECTOR_CONTROL<T> *matrix_vector_control;

        UART_TRANSMITTER<T> *uart_transmitter;

        sc_out<bool> uart_transmitter_output[X_DIMENSION];

        void construct(void);

        SC_CTOR(MATRIX_VECTOR) {
            /*CONSTANT INPUT*/
            for(int y = 0; y < Y_DIMENSION; y++) {
                for(int x = 0; x < X_DIMENSION; x++) {
                    matrix_vector_matrix[x][y].write(m<T>[x][y]);
                }
                matrix_vector_vector[y].write(v<T>[y]);
            }

            for(int i = 0; i < Y_DIMENSION; i++) {
                cell[i] = new CELL<T>(("cell_" + to_string(i)).c_str());
            }

            matrix_vector_control = new MATRIX_VECTOR_CONTROL<T>("matrix_vector_control");

            uart_transmitter = new UART_TRANSMITTER<T>("uart_transmitter");
            uart_transmitter->uart_transmitter_clock(matrix_vector_clock);
            uart_transmitter->uart_transmitter_reset(matrix_vector_done);
            for(int i = 0; i < X_DIMENSION; i++) {
                uart_transmitter->uart_transmitter_input[i](matrix_vector_result[i]);
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                uart_transmitter->uart_transmitter_output[i](uart_transmitter_output[i]);
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
