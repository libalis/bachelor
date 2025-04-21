#include <systemc.h> 
#include "control.hpp"
#include "cell.hpp"

SC_MODULE( kombi ) {
	sc_in< bool > in_clk;
	sc_in< bool > in_rst;
	sc_out< bool > done_out;
	sc_out< sc_int<8> > out_result_u[X*X];
	sc_out< sc_int<8> > out_result_d[X*X];
	//Lokale Signale
	sc_signal< sc_int<8> > out_a[X*X];
	sc_signal< sc_int<8> > out_c_u[X*X];
	sc_signal< sc_int<8> > out_c_d[X*X];
	sc_signal< sc_int<8> > in_a[X*X];
	sc_signal< sc_int<8> > in_c_u[X*X];
	sc_signal< sc_int<8> > in_c_d[X*X];
	sc_signal< bool > s_in[X*X];
	sc_signal< bool > s_out[X*X];
	sc_signal< bool > op_in[X*X];
	sc_signal< bool > op_out[X*X];
	sc_signal< bool > s_mm[X];
	void func();
	//Module Deklaration
	kombi_control kombic;
	//define cells
	sys_cell c0;
	sys_cell c1;
	sys_cell c2;
	sys_cell c3;
	sys_cell c4;
	sys_cell c5;
	sys_cell c6;
	sys_cell c7;
	sys_cell c8;
	SC_CTOR( kombi ): kombic("kombic"), c0("c0"), c1("c1"), c2("c2"), c3("c3"), c4("c4"), c5("c5"), c6("c6"), c7("c7"), c8("c8") {
		func();
	}
};
