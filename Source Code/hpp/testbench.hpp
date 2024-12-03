#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #include "../hpp/subtractor.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_clock clock;
        int counter;

        ADDER<T> *a;
        SUBTRACTOR<T> *s;

        ifstream input_dat;
        ofstream output_dat;

        sc_in<bool> testbench_clock;

        sc_signal<btint<T>> testbench_adder_a;
        sc_signal<btint<T>> testbench_adder_b;

        sc_signal<btint<T + 1>> testbench_adder_sum;

        sc_signal<btint<T>> testbench_subtractor_a;
        sc_signal<btint<T>> testbench_subtractor_b;

        sc_signal<btint<T + 1>> testbench_subtractor_sum;

        void count(void);
        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) : clock("main_clock", 10, SC_NS) {
            counter = 0;

            a = new ADDER<T>("a");
            a->adder_clock(testbench_clock);
            a->adder_a(testbench_adder_a);
            a->adder_b(testbench_adder_b);
            a->adder_sum(testbench_adder_sum);

            s = new SUBTRACTOR<T>("s");
            s->subtractor_clock(testbench_clock);
            s->subtractor_a(testbench_subtractor_a);
            s->subtractor_b(testbench_subtractor_b);
            s->subtractor_sum(testbench_subtractor_sum);

            input_dat.open("./dat/input.dat");
            output_dat.open("./dat/output.dat");

            this->testbench_clock(clock);

            SC_METHOD(count);
            sensitive << testbench_clock.pos();
            dont_initialize();

            SC_METHOD(source);
            sensitive << testbench_clock.pos();
            dont_initialize();

            SC_METHOD(sink);
            sensitive << testbench_clock.pos();
            dont_initialize();
        }

        ~TESTBENCH(void) {
            delete a;
            delete s;

            input_dat.close();
            output_dat.close();
        }
    };
    template class TESTBENCH<TRITS>;
#endif
