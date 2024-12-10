#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include "../hpp/adder_subtractor.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_clock clock;
        bool eof;

        ifstream input_dat;
        ofstream output_dat;

        ADDER_SUBTRACTOR<T> *adder_subtractor;

        sc_signal<btint<T>> adder_subtractor_a;
        sc_signal<btint<T>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_add;

        sc_signal<btint<T + 1>> adder_subtractor_sum;

        sc_in<bool> testbench_clock;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) : clock("clock", 10, SC_NS) {
            eof = 0;

            input_dat.open("./dat/input.dat");
            output_dat.open("./dat/output.dat");

            adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_add(adder_subtractor_add);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            this->testbench_clock(clock);

            SC_METHOD(source);
            sensitive << testbench_clock.pos();
            dont_initialize();

            SC_METHOD(sink);
            sensitive << testbench_clock.pos();
            dont_initialize();
        }

        ~TESTBENCH(void) {
            input_dat.close();
            output_dat.close();

            delete adder_subtractor;
        }
    };
    template class TESTBENCH<TRITS>;
#endif
