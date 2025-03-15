#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #ifndef INPUT_DAT
        #define INPUT_DAT ("./dat/input.dat")
    #endif

    #ifndef OUTPUT_DAT
        #define OUTPUT_DAT ("./dat/output.dat")
    #endif

    #ifdef INPUT_OUTPUT
        #include <fstream>
    #endif

    #include "const.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_in<bool> testbench_clock;
        sc_in<btint<T>> testbench_result[X_DIMENSION];
        sc_in<bool> testbench_done;

        sc_out<bool> testbench_reset;
        sc_out<bool> testbench_valid;
        sc_out<btint<T>> testbench_matrix[X_DIMENSION][Y_DIMENSION];
        sc_out<btint<T>> testbench_vector[Y_DIMENSION];

        sc_in<bool> uart_transmitter_output;

        #ifdef INPUT_OUTPUT
            ifstream input_dat;
            ofstream output_dat;
        #endif

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            #ifdef INPUT_OUTPUT
                input_dat.open(INPUT_DAT);
                output_dat.open(OUTPUT_DAT);
            #endif

            SC_CTHREAD(source, testbench_clock.pos());
            SC_CTHREAD(sink, testbench_clock.pos());
        }

        ~TESTBENCH(void) {
            #ifdef INPUT_OUTPUT
                input_dat.close();
                output_dat.close();
            #endif
        }
    };
    template class TESTBENCH<TRITS>;
#endif
