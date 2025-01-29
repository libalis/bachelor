#include "matrix_vector.hpp"

void matrix_vector::func_mv(){
#pragma HLS ARRAY_PARTITION variable=in_matrix complete dim=2
#pragma HLS ARRAY_PARTITION variable=in_vector complete dim=1
#pragma HLS ARRAY_PARTITION variable=out_result complete dim=1
#pragma HLS ARRAY_PARTITION variable=out_b complete dim=1
#pragma HLS ARRAY_PARTITION variable=out_c complete dim=1
#pragma HLS ARRAY_PARTITION variable=in_b complete dim=1
#pragma HLS ARRAY_PARTITION variable=in_c complete dim=1

	mvc.clk(in_clk);
	mvc.rst(in_rst);
	mvc.data_valid(valid_in);
	for (int i = 0; i < X; i++) {
		for (int j = 0; j < Y; j++) {
			mvc.matrix[i][j](in_matrix[i][j]);
		}
	}
	for (int i = 0; i < Y; i++) {
		mvc.vector[i](in_vector[i]);
	}
	for (int i = 0; i < X; i++) {
		mvc.mvc_result[i](out_result[i]);
	}
	mvc.done( done_out );
	mvc.write_reg( in_write );

	for (int i = 0, num = 48; i < Y; i++) {
		//connect control
		mvc.out_c[i]( out_c[i] );
		mvc.in_b[i]( in_b[i] );
		mvc.in_c[i]( in_c[i] );
	}
	//connect cells
	c0.write_in( in_write );
	c0.b_in( in_b[0] );
	c0.c_in( in_c[0] );
	c0.c_out( out_c[0] );
	//Leer
	c0.b_out( out_b[0] );

	c1.write_in( in_write );
	c1.b_in( in_b[1] );
	c1.c_in( in_c[1] );
	c1.c_out( out_c[1] );
	//Leer
	c1.b_out( out_b[1] );

	c2.write_in( in_write );
	c2.b_in( in_b[2] );
	c2.c_in( in_c[2] );
	c2.c_out( out_c[2] );
	//Leer
	c2.b_out( out_b[2] );

	c3.write_in( in_write );
	c3.b_in( in_b[3] );
	c3.c_in( in_c[3] );
	c3.c_out( out_c[3] );
	//Leer
	c3.b_out( out_b[3] );
	//end connecting cells
  }
