#ifndef REGISTER_HPP
    #define REGISTER_HPP

    #include "../hpp/btint.hpp"

    template <size_t T>
    SC_MODULE(REGISTER) {
        sc_in<bool> register_clock;

        sc_in<bool> register_input[2][T + 1];

        sc_out<btint<T + 1>> register_output;

        void sink(void);

        SC_CTOR(REGISTER) {
            SC_METHOD(sink);
            sensitive << register_clock.pos();
            dont_initialize();
        }
    };
    template class REGISTER<TRITS>;
#endif
