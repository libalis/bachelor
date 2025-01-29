#include <systemc.h> 
#include "matrix_vector_control.hpp"
#include "cell.hpp"

SC_MODULE( matrix_vector ) {
	sc_in< sc_int<8> > in_matrix[X][Y];
	sc_in< sc_int<8> > in_vector[Y];
	sc_out< sc_int<8> > out_result[X];
	sc_signal< sc_int<8> > out_b[Y];
	sc_signal< sc_int<8> > out_c[Y];
	sc_signal< sc_int<8> > in_b[Y];
	sc_signal< sc_int<8> > in_c[Y];
	sc_signal< bool > out_write;
	sc_signal< bool > in_write;
	sc_signal< bool > done;
	sc_in< bool > valid_in;
	sc_out< bool > done_out;
	sc_in< bool > in_clk;
	sc_in< bool > in_rst;
	//Modul Deklaration
	matrix_vector_control mvc;
	void func_mv();
	//define cells
	sys_cell c0;
	sys_cell c1;
	sys_cell c2;
	sys_cell c3;
	SC_CTOR(matrix_vector): mvc("mvc"), c0("c0"), c1("c1"), c2("c2"), c3("c3") {
		func_mv();
	}
};
