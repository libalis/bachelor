#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include <systemc.h>

    SC_MODULE(TESTBENCH) {
        int counter;
        ofstream output_dat;

        sc_in<bool> clock;

        sc_out<bool> input0;
        sc_out<bool> input1;
        sc_out<bool> carry_in;

        sc_in<bool> sum;
        sc_in<bool> carry_out;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) {
            counter = 0;
            output_dat.open("./dat/output.dat");

            SC_METHOD(source);
            sensitive << clock.pos();
            dont_initialize();

            SC_METHOD(sink);
            sensitive << clock.pos();
            dont_initialize();
        }

        ~TESTBENCH(void) {
            output_dat.close();
        }
    };
#endif
