#ifndef CONTROLLER_HPP
    #define CONTROLLER_HPP

    #include "const.hpp"

    template <size_t T>
    SC_MODULE(CONTROLLER) {
        sc_in<bool> controller_clock;
        sc_in<bool> controller_reset;
        sc_in<btint<T>> controller_m_a[X_DIMENSION * Y_DIMENSION];
        sc_in<btint<T>> controller_m_b[Y_DIMENSION * X_DIMENSION];
        sc_in<btint<T>> controller_v[Y_DIMENSION];
        sc_in<sc_biguint<2>> controller_op;
        sc_in<btint<T>> controller_a_out[X_DIMENSION * Y_DIMENSION];
        sc_in<btint<T>> controller_c_out_u[X_DIMENSION * Y_DIMENSION];
        sc_in<btint<T>> controller_c_out_d[X_DIMENSION * Y_DIMENSION];
        sc_in<bool> controller_s_out[X_DIMENSION * Y_DIMENSION];

        sc_out<btint<T>> controller_a_in[X_DIMENSION * Y_DIMENSION];
        sc_out<btint<T>> controller_c_in_u[X_DIMENSION * Y_DIMENSION];
        sc_out<btint<T>> controller_c_in_d[X_DIMENSION * Y_DIMENSION];
        sc_out<bool> controller_s_in[X_DIMENSION * Y_DIMENSION];
        sc_out<bool> controller_s_mm[X_DIMENSION];
        sc_out<bool> controller_done;
        sc_out<btint<T>> controller_result_u[X_DIMENSION * X_DIMENSION];
        sc_out<btint<T>> controller_result_d[X_DIMENSION * X_DIMENSION];

        void control(void);

        SC_CTOR(CONTROLLER) {
            SC_CTHREAD(control, controller_clock.pos());
            reset_signal_is(controller_reset, true);
        }
    };
    template class CONTROLLER<TRITS>;
#endif
