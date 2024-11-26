#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    SC_MODULE(TESTBENCH) {
        ofstream output_dat;

        sc_in<bool> clock;
        sc_out<bool> reset;

        sc_out<bool> a, b, c_in;

        sc_out<bool> input_valid;
        sc_in<bool> input_ready;

        sc_in<bool> s, c_out;

        sc_in<bool> output_valid;
        sc_out<bool> output_ready;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            output_dat.open("./dat/output.dat");

            SC_CTHREAD(source, clock.pos());
            SC_CTHREAD(sink, clock.neg());
        }

        ~TESTBENCH(void) {
            output_dat.close();
        }
    };
#endif
