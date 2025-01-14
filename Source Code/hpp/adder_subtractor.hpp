#ifndef ADDER_SUBTRACTOR_HPP
    #define ADDER_SUBTRACTOR_HPP

    #include "btint.hpp"
    #include "fulladder.hpp"

    using namespace std;

    template <size_t T>
    SC_MODULE(ADDER_SUBTRACTOR) {
        sc_signal<bool> one;

        sc_signal<bool> input_a[2][T];
        sc_signal<bool> input_b[2][T];

        sc_signal<bool> output_sum[2][T + 1];

        FULLADDER *fulladder[2][T];

        sc_signal<bool> fulladder_sum[T];
        sc_signal<bool> fulladder_carry_out[T - 1];

        sc_in<btint<T>> adder_subtractor_a;
        sc_in<btint<T>> adder_subtractor_b;
        sc_in<bool> adder_subtractor_subtract;

        sc_out<btint<T + 1>> adder_subtractor_sum;

        void source(void);
        void sink(void);

        SC_CTOR(ADDER_SUBTRACTOR) {
            one.write(1);

            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T; j++) {
                    fulladder[i][j] = new FULLADDER(("fulladder_" + to_string(i) + "_" + to_string(j)).c_str());
                }
            }

            for(int i = 0; i < T; i++) {
                fulladder[0][i]->fulladder_a(input_a[0][i]);
                fulladder[0][i]->fulladder_b(input_b[0][i]);
                fulladder[0][i]->fulladder_carry_in(input_a[1][i]);
                fulladder[0][i]->fulladder_sum(fulladder_sum[i]);
                if(i == T - 1) {
                    fulladder[0][i]->fulladder_carry_out(output_sum[1][i + 1]);
                } else {
                    fulladder[0][i]->fulladder_carry_out(fulladder_carry_out[i]);
                }
            }

            for(int i = 0; i < T; i++) {
                if(i) {
                    fulladder[1][i]->fulladder_a(fulladder_carry_out[i - 1]);
                } else {
                    fulladder[1][i]->fulladder_a(one);
                }
                fulladder[1][i]->fulladder_b(fulladder_sum[i]);
                fulladder[1][i]->fulladder_carry_in(input_b[1][i]);
                fulladder[1][i]->fulladder_sum(output_sum[1][i]);
                fulladder[1][i]->fulladder_carry_out(output_sum[0][i + 1]);
            }

            SC_METHOD(source);
            sensitive << adder_subtractor_a << adder_subtractor_b << adder_subtractor_subtract;

            SC_METHOD(sink);
            for(int i = 0; i < T + 1; i++) {
                sensitive << output_sum[0][i];
                sensitive << output_sum[1][i];
            }
        }

        ~ADDER_SUBTRACTOR(void) {
            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T; j++) {
                    delete fulladder[i][j];
                }
            }
        }
    };
    template class ADDER_SUBTRACTOR<TRITS>;
#endif
