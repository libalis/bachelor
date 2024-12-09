#ifndef ADDER_HPP
    #define ADDER_HPP

    #include "../hpp/btint.hpp"
    #include "../hpp/fulladder.hpp"

    using namespace std;

    template <size_t T>
    SC_MODULE(ADDER) {
        sc_signal<bool> one;

        sc_signal<bool> input_a[2][T];
        sc_signal<bool> input_b[2][T];

        sc_signal<bool> output_sum[2][T + 1];

        FULLADDER *fa[2][T];

        sc_signal<bool> fulladder_sum[T];
        sc_signal<bool> fulladder_carry_out[T - 1];

        sc_in<btint<T>> adder_a;
        sc_in<btint<T>> adder_b;

        sc_out<btint<T + 1>> adder_sum;

        void source(void);
        void sink(void);

        SC_CTOR(ADDER) {
            one.write(1);

            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T; j++) {
                    fa[i][j] = new FULLADDER(("fa_" + to_string(i) + "_" + to_string(j)).c_str());
                }
            }

            for(int i = 0; i < T; i++) {
                fa[0][i]->fulladder_a(input_a[0][i]);
                fa[0][i]->fulladder_b(input_b[0][i]);
                fa[0][i]->fulladder_carry_in(input_a[1][i]);
                fa[0][i]->fulladder_sum(fulladder_sum[i]);
                if(i == T - 1) {
                    fa[0][i]->fulladder_carry_out(output_sum[1][i + 1]);
                } else {
                    fa[0][i]->fulladder_carry_out(fulladder_carry_out[i]);
                }
            }

            for(int i = 0; i < T; i++) {
                if(i == 0) {
                    fa[1][i]->fulladder_a(one);
                } else {
                    fa[1][i]->fulladder_a(fulladder_carry_out[i - 1]);
                }
                fa[1][i]->fulladder_b(fulladder_sum[i]);
                fa[1][i]->fulladder_carry_in(input_b[1][i]);
                fa[1][i]->fulladder_sum(output_sum[1][i]);
                fa[1][i]->fulladder_carry_out(output_sum[0][i + 1]);
            }

            SC_METHOD(source);
            sensitive << adder_a << adder_b;

            SC_METHOD(sink);
            for(int i = 0; i < T + 1; i++) {
                sensitive << output_sum[0][i];
                sensitive << output_sum[1][i];
            }
        }

        ~ADDER(void) {
            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T; j++) {
                    delete fa[i][j];
                }
            }
        }
    };
    template class ADDER<TRITS>;
#endif
