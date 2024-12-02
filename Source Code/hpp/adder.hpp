#ifndef ADDER_HPP
    #define ADDER_HPP

    #include <systemc.h>

    #include "../hpp/btint.hpp"
    #include "../hpp/fulladder.hpp"
    #include "../hpp/register.hpp"

    template <size_t T>
    SC_MODULE(ADDER) {
        FULLADDER *fa[2][T];
        REGISTER<T> *r;

        sc_signal<bool> fulladder_a[2][T];
        sc_signal<bool> fulladder_b[2][T];
        sc_signal<bool> fulladder_carry_in[2][T];

        sc_signal<bool> fulladder_sum[2][T];
        sc_signal<bool> fulladder_carry_out[2][T];

        sc_signal<bool> register_input[2][T + 1];
        sc_signal<btint<T + 1>> register_output;

        sc_signal<bool> zero;
        sc_signal<bool> one;

        sc_signal<bool> input_a[2][T];
        sc_signal<bool> input_b[2][T];

        sc_in<btint<T>> adder_a;
        sc_in<btint<T>> adder_b;

        sc_out<btint<T + 1>> adder_sum;

        void source(void);
        void sink(void);

        SC_CTOR(ADDER) {
            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T; j++) {
                    fa[i][j] = new FULLADDER(("fa_" + std::to_string(i) + "_" + std::to_string(j)).c_str());
                }
            }

            r = new REGISTER<T>("r");

            for(int i = 0; i < T; i++) {
                fa[0][i]->fulladder_a(input_a[0][i]);
                fa[0][i]->fulladder_b(input_b[0][i]);
                fa[0][i]->fulladder_carry_in(input_a[1][i]);
                fa[0][i]->fulladder_sum(fulladder_sum[0][i]);
                fa[0][i]->fulladder_carry_out(fulladder_carry_out[0][i]);
            }

            for(int i = 0; i < T; i++) {
                if(i == 0) {
                    fa[1][i]->fulladder_a(one);
                } else {
                    fa[1][i]->fulladder_a(fulladder_carry_out[0][i - 1]);
                }
                fa[1][i]->fulladder_b(fulladder_sum[0][i]);
                fa[1][i]->fulladder_carry_in(input_b[1][i]);
                fa[1][i]->fulladder_sum(register_input[1][i]);
                fa[1][i]->fulladder_carry_out(register_input[0][i + 1]);
            }

            for(int i = 0; i < T + 1; i++) {
                if(i == 0) {
                    r->register_input[0][i](zero);
                } else {
                    r->register_input[0][i](register_input[0][i]);
                }
                if(i == T) {
                    r->register_input[1][i](fulladder_carry_out[0][i - 1]);
                } else {
                    r->register_input[1][i](register_input[1][i]);
                }
            }

            r->register_output(register_output);

            SC_METHOD(source);
            sensitive << adder_a << adder_b;

            SC_METHOD(sink);
            sensitive << register_output;
        }

        ~ADDER(void) {
            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T; j++) {
                    delete fa[i][j];
                }
            }

            delete r;
        }
    };
    template class ADDER<TRITS>;
#endif
