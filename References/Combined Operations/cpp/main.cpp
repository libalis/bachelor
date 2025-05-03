#include "../hpp/combined_operations.hpp"
#include "../hpp/testbench.hpp"
#include "../hpp/uart_transmitter.hpp"

template <size_t T>
SC_MODULE(SYSTEM) {
    COMBINED_OPERATIONS<T> *combined_operations;

    sc_signal<bool> combined_operations_reset;
    sc_signal<btint<T>> combined_operations_m_a[X_DIMENSION][Y_DIMENSION];
    sc_signal<btint<T>> combined_operations_m_b[Y_DIMENSION][X_DIMENSION];
    sc_signal<btint<T>> combined_operations_v[Y_DIMENSION];
    sc_signal<sc_biguint<2>> combined_operations_op;

    sc_signal<bool> combined_operations_done;
    sc_signal<btint<T>> combined_operations_result_u[X_DIMENSION][X_DIMENSION];
    sc_signal<btint<T>> combined_operations_result_d[X_DIMENSION][X_DIMENSION];

    TESTBENCH<T> *testbench;

    UART_TRANSMITTER<T> *uart_transmitter;

    sc_signal<bool> uart_transmitter_reset_active_low;
    sc_signal<btint<T>> uart_transmitter_input[X_DIMENSION][X_DIMENSION];

    sc_signal<bool> uart_transmitter_output;

    sc_clock system_clock;

    SC_CTOR(SYSTEM) : system_clock("system_clock", 10, SC_NS) {
        combined_operations = new COMBINED_OPERATIONS<T>("combined_operations");
        combined_operations->combined_operations_clock(system_clock);
        combined_operations->combined_operations_reset(combined_operations_reset);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                combined_operations->combined_operations_m_a[i][j](combined_operations_m_a[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                combined_operations->combined_operations_m_b[i][j](combined_operations_m_b[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            combined_operations->combined_operations_v[i](combined_operations_v[i]);
        }
        combined_operations->combined_operations_op(combined_operations_op);
        combined_operations->combined_operations_done(combined_operations_done);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                combined_operations->combined_operations_result_u[i][j](combined_operations_result_u[i][j]);
                combined_operations->combined_operations_result_d[i][j](combined_operations_result_d[i][j]);
            }
        }

        testbench = new TESTBENCH<T>("testbench");
        testbench->testbench_clock(system_clock);
        testbench->testbench_done(combined_operations_done);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                testbench->testbench_result_u[i][j](combined_operations_result_u[i][j]);
                testbench->testbench_result_d[i][j](combined_operations_result_d[i][j]);
            }
        }
        testbench->testbench_reset(combined_operations_reset);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                testbench->testbench_m_a[i][j](combined_operations_m_a[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                testbench->testbench_m_b[i][j](combined_operations_m_b[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            testbench->testbench_v[i](combined_operations_v[i]);
        }
        testbench->testbench_op(combined_operations_op);

        uart_transmitter = new UART_TRANSMITTER<T>("uart_transmitter");
        uart_transmitter->uart_transmitter_clock(system_clock);
        uart_transmitter->uart_transmitter_reset_active_low(uart_transmitter_reset_active_low);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                uart_transmitter->uart_transmitter_input[i][j](uart_transmitter_input[i][j]);
            }
        }
        uart_transmitter->uart_transmitter_output(uart_transmitter_output);
    }

    ~SYSTEM(void) {
        delete combined_operations;
        delete testbench;
        delete uart_transmitter;
    }
};

int sc_main(int argc, char *argv[]) {
    SYSTEM<TRITS> system("system");
    sc_start();
    return 0;
}
