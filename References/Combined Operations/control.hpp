#include <systemc.h>
#include "const.hpp"

SC_MODULE( kombi_control ) {
	sc_in< bool > clk;
	sc_in< bool > rst;
	sc_in< sc_int<8> > out_a[X*X];
	sc_in< sc_int<8> > out_c_u[X*X];
	sc_in< sc_int<8> > out_c_d[X*X];
	sc_in< bool > s_out[X*X];
	sc_in< bool > op_out[X*X];
	sc_out< sc_int<8> > in_a[X*X];
	sc_out< sc_int<8> > in_c_u[X*X];
	sc_out< sc_int<8> > in_c_d[X*X];
	sc_out< bool > s_in[X*X];
	sc_out< bool > op_in[X*X];
	sc_out< bool > s_mm[X];
	sc_out< bool > done;
	sc_out< sc_int<8> > out_result_u[X*X];
	sc_out< sc_int<8> > out_result_d[X*X];
	void func();
	SC_CTOR( kombi_control ) {
		SC_CTHREAD( func, clk.pos() );
		reset_signal_is( rst, true );
	}
};
