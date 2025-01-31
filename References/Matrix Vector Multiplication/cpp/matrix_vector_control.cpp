#include "../hpp/matrix_vector_control.hpp"
#include "../hpp/const.hpp"
#include "../../../Source Code/hpp/multiplier.hpp"

template <size_t T>
void MATRIX_VECTOR_CONTROL<T>::control(void) {
    #pragma HLS ARRAY_PARTITION variable=out_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=matrix complete dim=2
    #pragma HLS ARRAY_PARTITION variable=vector complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=mvc_result complete dim=1
    sc_int<T> result[X];
    sc_int<T> index[Y];
    bool vec_done;
    for(int i = 0; i < X; i++) {
        result[i] = 0;
    }
    for(int i = 0; i < Y; i++) {
        index[i] = 0 - i;
    }
    write_reg.write(false);
    done.write(false);
    vec_done = false;
    wait();
    while(true) {
        if(data_valid.read()) {
            for(int i = 0; i < X; i++) {
                mvc_result[i].write(result[i]);
            }
            if(index[Y-1] >= X + 1) {
                done.write(true);
            } else {
                done.write(false);
            }
            if(!vec_done) {
                for(int i = 0; i < Y; i++) {
                    sc_int<T> temp = vector[i].read();
                    in_b[i].write(temp);
                    write_reg.write(true);
                }
                vec_done = true;
            } else {
                write_reg.write(false);
                for(int i = 0; i < Y; i++) {
                    if(index[i] < 0 || index[i] > X-1) {
                        in_b[i].write(0);
                    } else {
                        sc_int<T> temp = matrix[index[i]][i].read();
                        in_b[i].write(temp);
                    }
                }
                in_c[0].write(0);
                for(int i = 1; i < Y; i++) {
                    in_c[i].write(out_c[i-1].read());
                }
                if(index[Y-1] >= 1 && index[Y-1] <= X) {
                    result[index[Y-1]-1] = out_c[Y-1].read();
                }
                for(int i = 0; i < Y; i++) {
                    index[i]++;
                }
            }
        }
        wait(MULTIPLIER_LOCK + Y);
    }
}
