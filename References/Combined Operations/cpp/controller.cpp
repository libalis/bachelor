#include "../hpp/controller.hpp"
#include "../hpp/multiplier.hpp"

template <size_t T>
void CONTROLLER<T>::control(void) {
    btint<T> result_u[X_DIMENSION][X_DIMENSION];
    btint<T> result_d[X_DIMENSION][X_DIMENSION];
    bool state[X_DIMENSION][X_DIMENSION];
    int steps;
    int index_a[Y_DIMENSION];
    int index_b;
    bool load_done;
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < Y_DIMENSION; j++) {
            controller_a_in[i][j].write(BTINT_ZERO(T));
            controller_c_in_u[i][j].write(BTINT_ZERO(T));
            controller_c_in_d[i][j].write(BTINT_ZERO(T));
            controller_s_in[i][j].write(0);
        }
    }
    for(int i = 0; i < X_DIMENSION; i++) {
        controller_s_mm[i].write(0);
    }
    controller_done.write(0);
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            controller_result_u[i][j].write(BTINT_ZERO(T));
            controller_result_d[i][j].write(BTINT_ZERO(T));
        }
    }
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            result_u[i][j] = BTINT_ZERO(T);
            result_d[i][j] = BTINT_ZERO(T);
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
                controller_result_u[i][j].write(result_u[i][j]);
                controller_result_d[i][j].write(result_d[i][j]);
            }
        }
        for(int i = 0; i < Y_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION - 1; j++) {
                controller_a_in[j + 1][i].write(controller_a_out[j][i].read());
            }
        }
        for(int i = 0; i < X_DIMENSION; i++) {
            for(int j = 0; j < Y_DIMENSION - 1; j++) {
                controller_c_in_u[i][j + 1].write(controller_c_out_u[i][j].read());
                controller_c_in_d[i][j + 1].write(controller_c_out_d[i][j].read());
            }
        }
        if(op == INVERSION) {
            for(int i = 0; i < X_DIMENSION; i++) {
                if(steps >= 2 * X_DIMENSION - 2 - i) {
                    controller_s_mm[i].write(1);
                } else {
                    controller_s_mm[i].write(0);
                }
            }
            if(steps >= 3 * X_DIMENSION - 1) {
                controller_done.write(1);
            } else {
                controller_done.write(0);
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                if(steps != X_DIMENSION - 1) {
                    controller_s_in[i][0].write(0);
                    controller_c_in_u[i][0].write(BTINT_ZERO(T));
                    controller_c_in_d[i][0].write(BTINT_ZERO(T));
                } else {
                    controller_s_in[i][0].write(1);
                    controller_c_in_u[i][0].write(btint<T>().from_int(1));
                    controller_c_in_d[i][0].write(btint<T>().from_int(1));
                }
            }
            for(int i = 0, k = 0; i < X_DIMENSION; i++, k += 2) {
                if(steps >= 0 + k && steps < X_DIMENSION + i) {
                    controller_a_in[0][i].write(m_a<T>[X_DIMENSION - 1 - steps + i][X_DIMENSION - 1 - i]);
                } else {
                    controller_a_in[0][i].write(BTINT_ZERO(T));
                }
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                if(steps >= 2 * X_DIMENSION - 1 && steps < 2 * X_DIMENSION + i) {
                    result_u[2 * X_DIMENSION - 1 - steps + i][i] = controller_c_out_u[i][X_DIMENSION - 1].read();
                    result_d[2 * X_DIMENSION - 1 - steps + i][i] = controller_c_out_d[i][X_DIMENSION - 1].read();
                }
            }
            for(int i = 1; i < X_DIMENSION; i++) {
                for(int j = X_DIMENSION - 1 - i; j < X_DIMENSION - 1; j++) {
                    controller_s_in[i][j + 1] = state[i][j + 1];
                    state[i][j + 1] = controller_s_out[i][j].read();
                }
            }
            for(int i = 0; i < X_DIMENSION - 1; i++) {
                for(int j = 0; j < X_DIMENSION - 1 - i; j++) {
                    controller_s_in[i][j + 1].write(controller_s_out[i][j].read());
                }
            }
            steps++;
        } else if(op == MATRIX_MATRIX_MULTIPLICATION) {
            if(index_a[0] >= 2 * X_DIMENSION + Y_DIMENSION - 1) {
                controller_done.write(1);
            } else {
                controller_done.write(0);
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                controller_c_in_u[i][0].write(BTINT_ZERO(T));
            }
            for(int i = 0; i < X_DIMENSION; i++) {
                if(index_a[0] >= Y_DIMENSION + i && index_a[0] < X_DIMENSION + Y_DIMENSION + i) {
                    result_u[index_a[0] - Y_DIMENSION - i][i] = controller_c_out_u[i][Y_DIMENSION - 1].read();
                }
            }
            if(!load_done) {
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(0);
                }
                for(int i = 0; i < Y_DIMENSION; i++) {
                    controller_a_in[0][i].write(m_b<T>[i][X_DIMENSION - 1 - index_b]);
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
                for(int i = 0; i < Y_DIMENSION; i++) {
                    if(index_a[i] < 0 || index_a[i] > X_DIMENSION - 1) {
                        controller_a_in[0][i].write(BTINT_ZERO(T));
                    } else {
                        controller_a_in[0][i].write(m_a<T>[index_a[i]][i]);
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
                for(int i = 0; i < Y_DIMENSION; i++) {
                    controller_a_in[0][i].write(v<T>[i]);
                }
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(1);
                }
                load_done = 1;
            } else {
                for(int i = 0; i < X_DIMENSION; i++) {
                    controller_s_mm[i].write(0);
                }
                for(int i = 0; i < Y_DIMENSION; i++) {
                    if(index_a[i] < 0 || index_a[i] > X_DIMENSION - 1) {
                        controller_a_in[0][i].write(BTINT_ZERO(T));
                    } else {
                        controller_a_in[0][i].write(m_a<T>[index_a[i]][i]);
                    }
                }
                for(int i = 0; i < Y_DIMENSION; i++) {
                    controller_c_in_u[i][0].write(BTINT_ZERO(T));
                }
                if(index_a[Y_DIMENSION - 1] >= 1 && index_a[Y_DIMENSION - 1] <= X_DIMENSION) {
                    result_u[index_a[Y_DIMENSION - 1] - 1][0] = controller_c_out_u[0][Y_DIMENSION - 1].read();
                }
                for(int i = 0; i < Y_DIMENSION; i++) {
                    index_a[i]++;
                }
            }
        }
        wait(3 * MULTIPLIER_LOCK + ADDER_SUBTRACTOR_LOCK);
    }
}
