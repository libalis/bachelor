#ifndef MAIN_HPP
    #define MAIN_HPP

    #include <systemc.h>

    #include "../hpp/testbench.hpp"
    #include "../hpp/fulladder.hpp"

    SC_MODULE(MAIN) {
        TESTBENCH *tb;
        FULLADDER *fa;

        sc_clock clock_signal;

        sc_signal<bool> input0_signal;
        sc_signal<bool> input1_signal;
        sc_signal<bool> carry_in_signal;

        sc_signal<bool> sum_signal;
        sc_signal<bool> carry_out_signal;

        SC_CTOR(MAIN) : clock_signal("clock_signal", 10, SC_NS) {
            tb = new TESTBENCH("tb");
            tb->clock(clock_signal);
            tb->input0(input0_signal);
            tb->input1(input1_signal);
            tb->carry_in(carry_in_signal);
            tb->sum(sum_signal);
            tb->carry_out(carry_out_signal);

            fa = new FULLADDER("fa");
            fa->input0(input0_signal);
            fa->input1(input1_signal);
            fa->carry_in(carry_in_signal);
            fa->sum(sum_signal);
            fa->carry_out(carry_out_signal);
        }

        ~MAIN(void) {
            delete tb;
            delete fa;
        }
    };
#endif
