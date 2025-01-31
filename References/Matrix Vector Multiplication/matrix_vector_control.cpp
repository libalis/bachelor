#include "matrix_vector_control.hpp"
#include "const.hpp"
void matrix_vector_control::func() {
    #pragma HLS ARRAY_PARTITION variable=out_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=matrix complete dim=2
    #pragma HLS ARRAY_PARTITION variable=vector complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_b complete dim=1
    #pragma HLS ARRAY_PARTITION variable=in_c complete dim=1
    #pragma HLS ARRAY_PARTITION variable=mvc_result complete dim=1
    sc_int<8> result[X];
    sc_int<8> index[Y];
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
            if(index[Y-1] >= X) {
                done.write(true);
            } else {
                done.write(false);
            }
            if(!vec_done) {
                for(int i = 0; i < Y; i++) {
                    sc_int<8> temp = vector[i].read();
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
                        sc_int<8> temp = matrix[index[i]][i].read();
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
        wait();
    }
}
