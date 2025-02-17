#include "../hpp/matrix_vector.hpp"
#include "../hpp/testbench.hpp"

template <size_t T>
SC_MODULE(SYSTEM) {
    FULLADDER *fulladder;

    sc_signal<bool> fulladder_a;
    sc_signal<bool> fulladder_b;
    sc_signal<bool> fulladder_carry_in;

    sc_signal<bool> fulladder_sum;
    sc_signal<bool> fulladder_carry_out;

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
        fulladder = new FULLADDER("fulladder");
        fulladder->fulladder_a(fulladder_a);
        fulladder->fulladder_b(fulladder_b);
        fulladder->fulladder_carry_in(fulladder_carry_in);
        fulladder->fulladder_sum(fulladder_sum);
        fulladder->fulladder_carry_out(fulladder_carry_out);

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
        delete fulladder;
        delete matrix_vector;
        delete testbench;
    }
};

int sc_main(int argc, char *argv[]) {
    SYSTEM<TRITS> system("system");
    sc_start();
    return 0;
}
