#include "../hpp/matrix_vector_control.hpp"
#include "../hpp/const.hpp"
#include "../hpp/multiplier.hpp"

template <size_t T>
void MATRIX_VECTOR_CONTROL<T>::control(void) {
    #pragma HLS ARRAY_PARTITION variable=out_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=matrix complete dim=2
    #pragma HLS ARRAY_PARTITION variable=vector complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=mvc_result complete dim=1
    btint<T> result[X];
    int index[Y];
    bool vec_done;
    for(int i = 0; i < X; i++) {
        result[i] = 0;
    }
    for(int i = 0; i < Y; i++) {
        index[i] = 0 - i;
    }
    matrix_vector_control_reset_out.write(false);
    matrix_vector_control_done.write(false);
    vec_done = false;
    wait();
    while(true) {
        if(matrix_vector_control_valid.read()) {
            for(int i = 0; i < X; i++) {
                matrix_vector_control_result[i].write(result[i]);
            }
            if(index[Y-1] >= X + 1) {
                matrix_vector_control_done.write(true);
            } else {
                matrix_vector_control_done.write(false);
            }
            if(!vec_done) {
                for(int i = 0; i < Y; i++) {
                    btint<T> temp = matrix_vector_control_vector[i].read();
                    matrix_vector_control_b_in[i].write(temp);
                    matrix_vector_control_reset_out.write(true);
                }
                vec_done = true;
            } else {
                matrix_vector_control_reset_out.write(false);
                for(int i = 0; i < Y; i++) {
                    if(index[i] < 0 || index[i] > X-1) {
                        matrix_vector_control_b_in[i].write(0);
                    } else {
                        btint<T> temp = matrix_vector_control_matrix[index[i]][i].read();
                        matrix_vector_control_b_in[i].write(temp);
                    }
                }
                matrix_vector_control_c_in[0].write(0);
                for(int i = 1; i < Y; i++) {
                    matrix_vector_control_c_in[i].write(matrix_vector_control_c_out[i-1].read());
                }
                if(index[Y-1] >= 1 && index[Y-1] <= X) {
                    result[index[Y-1]-1] = matrix_vector_control_c_out[Y-1].read();
                }
                for(int i = 0; i < Y; i++) {
                    index[i]++;
                }
            }
        }
        wait(MULTIPLIER_LOCK + Y);
    }
}
