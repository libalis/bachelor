#ifndef COMBINED_OPERATIONS_HPP
    #define COMBINED_OPERATIONS_HPP

    #include "cell.hpp"
    #include "controller.hpp"

    template <size_t T>
    SC_MODULE(COMBINED_OPERATIONS) {
        sc_in<bool> combined_operations_clock;
        sc_in<bool> combined_operations_reset;

        sc_out<bool> combined_operations_done;
        sc_out<btint<T>> combined_operations_result_u[X_DIMENSION][X_DIMENSION];
        sc_out<btint<T>> combined_operations_result_d[X_DIMENSION][X_DIMENSION];

        CELL<T> *cell[X_DIMENSION][X_DIMENSION];

        sc_signal<btint<T>> cell_a_in[X_DIMENSION][X_DIMENSION];
        sc_signal<btint<T>> cell_c_in_u[X_DIMENSION][X_DIMENSION];
        sc_signal<btint<T>> cell_c_in_d[X_DIMENSION][X_DIMENSION];
        sc_signal<bool> cell_s_in[X_DIMENSION][X_DIMENSION];
        sc_signal<bool> cell_s_mm[X_DIMENSION];

        sc_signal<btint<T>> cell_a_out[X_DIMENSION][X_DIMENSION];
        sc_signal<btint<T>> cell_c_out_u[X_DIMENSION][X_DIMENSION];
        sc_signal<btint<T>> cell_c_out_d[X_DIMENSION][X_DIMENSION];
        sc_signal<bool> cell_s_out[X_DIMENSION][X_DIMENSION];

        CONTROLLER<T> *controller;

        void construct(void);

        SC_CTOR(COMBINED_OPERATIONS) {
            for(int i = 0; i < X_DIMENSION; i++) {
                for(int j = 0; j < X_DIMENSION; j++) {
                    cell[i][j] = new CELL<T>(("cell_" + to_string(i) + "_" + to_string(j)).c_str());
                }
            }

            controller = new CONTROLLER<T>("controller");

            construct();
        }

        ~COMBINED_OPERATIONS(void) {
            for(int i = 0; i < X_DIMENSION; i++) {
                for(int j = 0; j < X_DIMENSION; j++) {
                    delete cell[i][j];
                }
            }

            delete controller;
        }
    };
    template class COMBINED_OPERATIONS<TRITS>;
#endif
