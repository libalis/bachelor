#include <systemc.h>

SC_MODULE( sys_cell ) {
	sc_in< sc_int<8> > a_in, c_in_u, c_in_d;
	sc_in< bool > s_in;
	sc_in< bool > s_mm;
	sc_in< bool > op_in;
	sc_out< sc_int<8> > a_out, c_out_u, c_out_d;
	sc_out< bool > s_out;
	sc_out< bool > op_out;

	sc_int<8> reg_u, reg_d;

	void func();

	SC_CTOR( sys_cell ) {
		SC_METHOD( func );
		sensitive << a_in << c_in_u << c_in_d << s_in << s_mm << op_in;
	}
};
