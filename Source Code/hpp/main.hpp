#ifndef MAIN_HPP
    #define MAIN_HPP

    #include <systemc.h>

    #include "../hpp/testbench.hpp"
    #include "../hpp/fulladder.hpp"

    SC_MODULE(MAIN) {
        TESTBENCH *tb;
        FULLADDER *fa;

        sc_clock clock_signal;
        sc_signal<bool> reset_signal;

        sc_signal<bool> a_signal, b_signal, c_in_signal;

        sc_signal<bool> input_valid_signal, input_ready_signal;

        sc_signal<bool> s_signal, c_out_signal;

        sc_signal<bool> output_valid_signal, output_ready_signal;

        SC_CTOR(MAIN) : clock_signal("clock_signal", 10, SC_NS) {
            tb = new TESTBENCH("tb");
            tb->clock(clock_signal);
            tb->reset(reset_signal);
            tb->a(a_signal);
            tb->b(b_signal);
            tb->c_in(c_in_signal);
            tb->input_valid(input_valid_signal);
            tb->input_ready(input_ready_signal);
            tb->s(s_signal);
            tb->c_out(c_out_signal);
            tb->output_valid(output_valid_signal);
            tb->output_ready(output_ready_signal);

            fa = new FULLADDER("fa");
            fa->clock(clock_signal);
            fa->reset(reset_signal);
            fa->a(a_signal);
            fa->b(b_signal);
            fa->c_in(c_in_signal);
            fa->input_valid(input_valid_signal);
            fa->input_ready(input_ready_signal);
            fa->s(s_signal);
            fa->c_out(c_out_signal);
            fa->output_valid(output_valid_signal);
            fa->output_ready(output_ready_signal);
        }

        ~MAIN(void) {
            delete tb;
            delete fa;
        }
    };
#endif
