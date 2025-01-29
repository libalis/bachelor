#include <systemc.h>

SC_MODULE( sys_cell ) {
	sc_in< sc_int<8> > b_in, c_in;
	sc_out< sc_int<8> > b_out, c_out;
	sc_in< bool > write_in;
	sc_int<8> reg;
	void func();
	SC_CTOR( sys_cell ) {
		SC_METHOD( func );
		sensitive << write_in << b_in << c_in;
	}
};

