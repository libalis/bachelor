#include "../hpp/matrix_vector.hpp"

template <size_t T>
void MATRIX_VECTOR<T>::construct(void) {
    #pragma HLS ARRAY_PARTITION variable=in_matrix complete dim=2
    #pragma HLS ARRAY_PARTITION variable=in_vector complete dim=1
    #pragma HLS ARRAY_PARTITION variable=out_result complete dim=1
    #pragma HLS ARRAY_PARTITION variable=out_b complete dim=1
    #pragma HLS ARRAY_PARTITION variable=out_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_c complete dim=1
    matrix_vector_control->matrix_vector_control_clock(matrix_vector_clock);
    matrix_vector_control->matrix_vector_control_reset(matrix_vector_reset);
    matrix_vector_control->matrix_vector_control_valid(matrix_vector_valid);
    for(int i = 0; i < X; i++) {
        for(int j = 0; j < Y; j++) {
            matrix_vector_control->matrix_vector_control_matrix[i][j](matrix_vector_matrix[i][j]);
        }
    }
    for(int i = 0; i < Y; i++) {
        matrix_vector_control->matrix_vector_control_vector[i](matrix_vector_vector[i]);
    }
    for(int i = 0; i < X; i++) {
        matrix_vector_control->matrix_vector_control_result[i](matrix_vector_result[i]);
    }
    matrix_vector_control->matrix_vector_control_done(matrix_vector_done);
    matrix_vector_control->matrix_vector_control_reset_out(cell_reset);
    for(int i = 0, num = 48; i < Y; i++) {
        matrix_vector_control->matrix_vector_control_c_out[i](cell_c_out[i]);
        matrix_vector_control->matrix_vector_control_b_in[i](cell_b_in[i]);
        matrix_vector_control->matrix_vector_control_c_in[i](cell_c_in[i]);
    }
    cell_0->cell_clock(matrix_vector_clock);
    cell_0->cell_reset(cell_reset);
    cell_0->cell_b_in(cell_b_in[0]);
    cell_0->cell_c_in(cell_c_in[0]);
    cell_0->cell_b_out(cell_b_out[0]);
    cell_0->cell_c_out(cell_c_out[0]);
    cell_1->cell_clock(matrix_vector_clock);
    cell_1->cell_reset(cell_reset);
    cell_1->cell_b_in(cell_b_in[1]);
    cell_1->cell_c_in(cell_c_in[1]);
    cell_1->cell_b_out(cell_b_out[1]);
    cell_1->cell_c_out(cell_c_out[1]);
    cell_2->cell_clock(matrix_vector_clock);
    cell_2->cell_reset(cell_reset);
    cell_2->cell_b_in(cell_b_in[2]);
    cell_2->cell_c_in(cell_c_in[2]);
    cell_2->cell_b_out(cell_b_out[2]);
    cell_2->cell_c_out(cell_c_out[2]);
    cell_3->cell_clock(matrix_vector_clock);
    cell_3->cell_reset(cell_reset);
    cell_3->cell_b_in(cell_b_in[3]);
    cell_3->cell_c_in(cell_c_in[3]);
    cell_3->cell_b_out(cell_b_out[3]);
    cell_3->cell_c_out(cell_c_out[3]);
}
