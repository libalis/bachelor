#ifndef REGISTER_HPP
    #define REGISTER_HPP

    #include <systemc.h>

    #include "../hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(REGISTER) {
        sc_in<bool> register_input[2][T + 1];

        sc_out<btint<T + 1>> register_output;

        void sink(void);

        SC_CTOR(REGISTER) {
            SC_METHOD(sink);
            for(int i = 0; i < 2; i++) {
                for(int j = 0; j < T + 1; j++) {
                    sensitive << register_input[i][j];
                }
            }
        }
    };
    template class REGISTER<TRITS>;
#endif
