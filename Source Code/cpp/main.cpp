#include "../hpp/matrix_vector.hpp"
#include "../hpp/testbench.hpp"

template <size_t T>
SC_MODULE(SYSTEM) {
    ADDER_SUBTRACTOR<T> *adder_subtractor;

    sc_signal<btint<T>> adder_subtractor_a;
    sc_signal<btint<T>> adder_subtractor_b;
    sc_signal<bool> adder_subtractor_subtract;

    sc_signal<btint<T + 1>> adder_subtractor_sum;

    MATRIX_VECTOR<T> *matrix_vector;

    sc_signal<bool> matrix_vector_reset;
    sc_signal<bool> matrix_vector_valid;
    sc_signal<btint<T>> matrix_vector_matrix[X_DIMENSION][Y_DIMENSION];
    sc_signal<btint<T>> matrix_vector_vector[Y_DIMENSION];

    sc_signal<btint<T>> matrix_vector_result[X_DIMENSION];
    sc_signal<bool> matrix_vector_done;

    TESTBENCH<T> *testbench;

    sc_clock system_clock;

    SC_CTOR(SYSTEM) : system_clock("system_clock", 10, SC_NS) {
        adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
        adder_subtractor->adder_subtractor_a(adder_subtractor_a);
        adder_subtractor->adder_subtractor_b(adder_subtractor_b);
        adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
        adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

        matrix_vector = new MATRIX_VECTOR<T>("matrix_vector");
        matrix_vector->matrix_vector_clock(system_clock);
        matrix_vector->matrix_vector_reset(matrix_vector_reset);
        matrix_vector->matrix_vector_valid(matrix_vector_valid);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                matrix_vector->matrix_vector_matrix[i][j](matrix_vector_matrix[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            matrix_vector->matrix_vector_vector[i](matrix_vector_vector[i]);
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            matrix_vector->matrix_vector_result[i](matrix_vector_result[i]);
        }
        matrix_vector->matrix_vector_done(matrix_vector_done);

        testbench = new TESTBENCH<T>("testbench");
        testbench->testbench_clock(system_clock);
        testbench->testbench_reset(matrix_vector_reset);
        testbench->testbench_valid(matrix_vector_valid);
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION; j++) {
                testbench->testbench_matrix[i][j](matrix_vector_matrix[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            testbench->testbench_vector[i](matrix_vector_vector[i]);
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            testbench->testbench_result[i](matrix_vector_result[i]);
        }
        testbench->testbench_done(matrix_vector_done);
    }

    ~SYSTEM(void) {
        delete adder_subtractor;
        delete matrix_vector;
        delete testbench;
    }
};

int sc_main(int argc, char *argv[]) {
    SYSTEM<TRITS> system("system");
    sc_start();
    return 0;
}
