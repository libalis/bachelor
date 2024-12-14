#ifndef TESTBENCH_HPP
    #define TESTBENCH_HPP

    #ifndef INPUT_DAT
        #define INPUT_DAT ("./dat/input.dat")
    #endif

    #ifndef OUTPUT_DAT
        #define OUTPUT_DAT ("./dat/output.dat")
    #endif

    #include "../hpp/multiplier.hpp"

    template <size_t T>
    SC_MODULE(TESTBENCH) {
        sc_clock clock;
        bool multiply;
        int lock;
        bool eof;

        ifstream input_dat;
        ofstream output_dat;

        ADDER_SUBTRACTOR<T> *adder_subtractor;

        sc_signal<btint<T>> adder_subtractor_a;
        sc_signal<btint<T>> adder_subtractor_b;
        sc_signal<bool> adder_subtractor_subtract;

        #ifndef FIXED_TRITS
            sc_signal<btint<T + 1>> adder_subtractor_sum;
        #else
            sc_signal<btint<T>> adder_subtractor_sum;
        #endif

        MULTIPLIER<T> *multiplier;

        sc_signal<btint<T>> multiplier_a;
        sc_signal<btint<T>> multiplier_b;

        #ifndef FIXED_TRITS
            sc_signal<btint<2 * T>> multiplier_product;
        #else
            sc_signal<btint<T>> multiplier_product;
        #endif

        sc_in<bool> testbench_clock;

        void source(void);
        void sink(void);

        SC_CTOR(TESTBENCH) : clock("clock", 10, SC_NS) {
            multiply = 0;
            lock = 0;
            eof = 0;

            input_dat.open(INPUT_DAT);
            output_dat.open(OUTPUT_DAT);

            adder_subtractor = new ADDER_SUBTRACTOR<T>("adder_subtractor");
            adder_subtractor->adder_subtractor_a(adder_subtractor_a);
            adder_subtractor->adder_subtractor_b(adder_subtractor_b);
            adder_subtractor->adder_subtractor_subtract(adder_subtractor_subtract);
            adder_subtractor->adder_subtractor_sum(adder_subtractor_sum);

            multiplier = new MULTIPLIER<T>("multiplier");
            multiplier->multiplier_clock(clock);
            multiplier->multiplier_a(multiplier_a);
            multiplier->multiplier_b(multiplier_b);
            multiplier->multiplier_product(multiplier_product);

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
