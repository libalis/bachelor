#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include "../hpp/subtractor.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_clock clock;

        bool add;
        bool eof;

        ifstream input_dat;
        ofstream output_dat;

        ADDER<T> *a;

        sc_signal<btint<T>> adder_a;
        sc_signal<btint<T>> adder_b;

        sc_signal<btint<T + 1>> adder_sum;

        SUBTRACTOR<T> *s;

        sc_signal<btint<T>> subtractor_a;
        sc_signal<btint<T>> subtractor_b;

        sc_signal<btint<T + 1>> subtractor_sum;

        sc_in<bool> testbench_clock;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) : clock("main_clock", 10, SC_NS) {
            add = 0;
            eof = 0;

            input_dat.open("./dat/input.dat");
            output_dat.open("./dat/output.dat");

            a = new ADDER<T>("a");
            a->adder_a(adder_a);
            a->adder_b(adder_b);
            a->adder_sum(adder_sum);

            s = new SUBTRACTOR<T>("s");
            s->subtractor_a(subtractor_a);
            s->subtractor_b(subtractor_b);
            s->subtractor_sum(subtractor_sum);

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

            delete a;
            delete s;
        }
    };
    template class TESTBENCH<TRITS>;
#endif
