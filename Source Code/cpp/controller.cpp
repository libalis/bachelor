#include "../hpp/controller.hpp"
#include "../hpp/multiplier.hpp"
#include "../hpp/utils.hpp"

template <size_t T>
void CONTROLLER<T>::control(void) {
    btint<T> zero = btint<T>().from_int(0);
    btint<T> one = btint<T>().from_int(1);
    btint<T> result_u[X_DIMENSION * X_DIMENSION];
    btint<T> result_d[X_DIMENSION * X_DIMENSION];
    bool state[X_DIMENSION * X_DIMENSION];
    int steps;
    int index_a[Y_DIMENSION];
    int index_b;
    bool load_done;
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            result_u[get_idx(i, j, X_DIMENSION)] = zero;
            result_d[get_idx(i, j, X_DIMENSION)] = zero;
            state[get_idx(i, j, X_DIMENSION)] = 0;
        }
    }
    steps = 0;
    for(int i = 0; i < Y_DIMENSION; i++) {
        index_a[i] = 0 - i - 1;
    }
    index_b = 0;
    load_done = 0;
    wait();
    while(1) {
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < X_DIMENSION; j++) {
                controller_result_u[get_idx(i, j, X_DIMENSION)].write(result_u[get_idx(i, j, X_DIMENSION)]);
                controller_result_d[get_idx(i, j, X_DIMENSION)].write(result_d[get_idx(i, j, X_DIMENSION)]);
            }
        }
        if(controller_op.read() == MATRIX_INVERSION) {
            for(int i = 0; i < MIN_DIMENSION; i++) {
                if(steps >= 2 * MIN_DIMENSION - 2 - i) {
                    controller_s_mm[i].write(1);
                } else {
                    controller_s_mm[i].write(0);
                }
            }
            if(steps >= 3 * MIN_DIMENSION - 1) {
                controller_done.write(1);
            } else {
                controller_done.write(0);
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                for(int j = 0; j < Y_DIMENSION; j++) {
                    if(j == 0 && j < MIN_DIMENSION) {
                        if(steps != MIN_DIMENSION - 1) {
                            controller_s_in[get_idx(i, j, Y_DIMENSION)].write(0);
                            controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(zero);
                            controller_c_in_d[get_idx(i, j, Y_DIMENSION)].write(zero);
                        } else {
                            controller_s_in[get_idx(i, j, Y_DIMENSION)].write(1);
                            controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(one);
                            controller_c_in_d[get_idx(i, j, Y_DIMENSION)].write(one);
                        }
                    } else {
                        controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(controller_c_out_u[get_idx(i, j - 1, Y_DIMENSION)].read());
                        controller_c_in_d[get_idx(i, j, Y_DIMENSION)].write(controller_c_out_d[get_idx(i, j - 1, Y_DIMENSION)].read());
                    }
                }
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                if(i == 0) {
                    int k = 0;
                    for(int j = 0; j < MIN_DIMENSION; j++) {
                        if(steps >= 0 + k && steps < MIN_DIMENSION + j) {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_m_a[get_idx(MIN_DIMENSION - 1 - steps + j, MIN_DIMENSION - 1 - j, Y_DIMENSION)].read());
                        } else {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(zero);
                        }
                        k += 2;
                    }
                } else {
                    for(int j = 0; j < Y_DIMENSION; j++) {
                        controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_a_out[get_idx(i - 1, j, Y_DIMENSION)].read());
                    }
                }
            }
            for(int i = 0; i < MIN_DIMENSION; i++) {
                if(steps >= 2 * MIN_DIMENSION - 1 && steps < 2 * MIN_DIMENSION + i) {
                    result_u[get_idx(2 * MIN_DIMENSION - 1 - steps + i, i, X_DIMENSION)] = controller_c_out_u[get_idx(i, MIN_DIMENSION - 1, Y_DIMENSION)].read();
                    result_d[get_idx(2 * MIN_DIMENSION - 1 - steps + i, i, X_DIMENSION)] = controller_c_out_d[get_idx(i, MIN_DIMENSION - 1, Y_DIMENSION)].read();
                }
            }
            for(int i = 1; i < MIN_DIMENSION; i++) {
                for(int j = MIN_DIMENSION - 1 - i; j < MIN_DIMENSION - 1; j++) {
                    controller_s_in[get_idx(i, j + 1, Y_DIMENSION)].write(state[get_idx(i, j + 1, X_DIMENSION)]);
                    state[get_idx(i, j + 1, X_DIMENSION)] = controller_s_out[get_idx(i, j, Y_DIMENSION)].read();
                }
            }
            for(int i = 0; i < MIN_DIMENSION - 1; i++) {
                for(int j = 0; j < MIN_DIMENSION - 1 - i; j++) {
                    controller_s_in[get_idx(i, j + 1, Y_DIMENSION)].write(controller_s_out[get_idx(i, j, Y_DIMENSION)].read());
                }
            }
            steps++;
        } else if(controller_op.read() == MATRIX_MATRIX_MULTIPLICATION) {
            if(index_a[0] >= 2 * X_DIMENSION + Y_DIMENSION - 1) {
                controller_done.write(1);
            } else {
                controller_done.write(0);
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                for(int j = 0; j < Y_DIMENSION; j++) {
                    if(j == 0) {
                        controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(zero);
                    } else {
                        controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(controller_c_out_u[get_idx(i, j - 1, Y_DIMENSION)].read());
                    }
                }
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                if(index_a[0] >= Y_DIMENSION + i && index_a[0] < X_DIMENSION + Y_DIMENSION + i) {
                    result_u[get_idx(index_a[0] - Y_DIMENSION - i, i, X_DIMENSION)] = controller_c_out_u[get_idx(i, Y_DIMENSION - 1, Y_DIMENSION)].read();
                }
            }
            if(!load_done) {
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(0);
                }
                for(int i = 0; i < X_DIMENSION; i++) {
                    for(int j = 0; j < Y_DIMENSION; j++) {
                        if(i == 0) {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_m_b[get_idx(j, X_DIMENSION - 1 - index_b, X_DIMENSION)].read());
                        } else {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_a_out[get_idx(i - 1, j, Y_DIMENSION)].read());
                        }
                    }
                }
                if(index_b >= X_DIMENSION - 1) {
                    load_done = 1;
                    for(int i = 0; i < X_DIMENSION; i++) {
                        controller_s_mm[i].write(1);
                    }
                } else {
                    index_b++;
                }
            } else {
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(0);
                }
                for(int i = 0; i < X_DIMENSION; i++) {
                    for(int j = 0; j < Y_DIMENSION; j++) {
                        if(i == 0) {
                            if(index_a[j] < 0 || index_a[j] > X_DIMENSION - 1) {
                                controller_a_in[get_idx(i, j, Y_DIMENSION)].write(zero);
                            } else {
                                controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_m_a[get_idx(index_a[j], j, Y_DIMENSION)].read());
                            }
                        } else {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_a_out[get_idx(i - 1, j, Y_DIMENSION)].read());
                        }
                    }
                }
                for(int i = 0; i < Y_DIMENSION; i++) {
                    index_a[i]++;
                }
            }
        } else {
            if(index_a[Y_DIMENSION - 1] >= X_DIMENSION + 1) {
                controller_done.write(1);
            } else {
                controller_done.write(0);
            }
            if(!load_done) {
                for(int i = 0; i < X_DIMENSION; i++) {
                    for(int j = 0; j < Y_DIMENSION; j++) {
                        if(i == 0) {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_v[j].read());
                        } else {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_a_out[get_idx(i - 1, j, Y_DIMENSION)].read());
                        }
                    }
                }
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(1);
                }
                load_done = 1;
            } else {
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(0);
                }
                for(int i = 0; i < X_DIMENSION; i++) {
                    for(int j = 0; j < Y_DIMENSION; j++) {
                        if(i == 0) {
                            if(index_a[j] < 0 || index_a[j] > X_DIMENSION - 1) {
                                controller_a_in[get_idx(i, j, Y_DIMENSION)].write(zero);
                            } else {
                                controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_m_a[get_idx(index_a[j], j, Y_DIMENSION)].read());
                            }
                        } else {
                            controller_a_in[get_idx(i, j, Y_DIMENSION)].write(controller_a_out[get_idx(i - 1, j, Y_DIMENSION)].read());
                        }
                    }
                }
                for(int i = 0; i < X_DIMENSION; i++) {
                    for(int j = 0; j < Y_DIMENSION; j++) {
                        if(j == 0) {
                            controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(zero);
                        } else {
                            controller_c_in_u[get_idx(i, j, Y_DIMENSION)].write(controller_c_out_u[get_idx(i, j - 1, Y_DIMENSION)].read());
                        }
                    }
                }
                if(index_a[Y_DIMENSION - 1] >= 1 && index_a[Y_DIMENSION - 1] <= X_DIMENSION) {
                    result_u[get_idx(index_a[Y_DIMENSION - 1] - 1, 0, X_DIMENSION)] = controller_c_out_u[get_idx(0, Y_DIMENSION - 1, Y_DIMENSION)].read();
                }
                for(int i = 0; i < Y_DIMENSION; i++) {
                    index_a[i]++;
                }
            }
        }
        wait(3 * MULTIPLIER_LOCK + ADDER_SUBTRACTOR_LOCK);
    }
}
