#include "../hpp/combined_operations.hpp"
#include "../hpp/utils.hpp"

template <size_t T>
void COMBINED_OPERATIONS<T>::construct(void) {
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < Y_DIMENSION; j++) {
            cell[i][j]->cell_clock(combined_operations_clock);
            cell[i][j]->cell_reset(combined_operations_reset);
            cell[i][j]->cell_op(combined_operations_op);
            cell[i][j]->cell_a_in(cell_a_in[i][j]);
            cell[i][j]->cell_c_in_u(cell_c_in_u[i][j]);
            cell[i][j]->cell_c_in_d(cell_c_in_d[i][j]);
            cell[i][j]->cell_s_in(cell_s_in[i][j]);
            cell[i][j]->cell_s_mm(cell_s_mm[i]);
            cell[i][j]->cell_a_out(cell_a_out[i][j]);
            cell[i][j]->cell_c_out_u(cell_c_out_u[i][j]);
            cell[i][j]->cell_c_out_d(cell_c_out_d[i][j]);
            cell[i][j]->cell_s_out(cell_s_out[i][j]);
        }
    }
    controller->controller_clock(combined_operations_clock);
    controller->controller_reset(combined_operations_reset);
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < Y_DIMENSION; j++) {
            controller->controller_m_a[get_idx(i, j, Y_DIMENSION)](combined_operations_m_a[i][j]);
        }
    }
    for(int i = 0; i < Y_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            controller->controller_m_b[get_idx(i, j, X_DIMENSION)](combined_operations_m_b[i][j]);
        }
    }
    for(int i = 0; i < Y_DIMENSION; i++) {
        controller->controller_v[i](combined_operations_v[i]);
    }
    controller->controller_op(combined_operations_op);
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < Y_DIMENSION; j++) {
            controller->controller_a_out[get_idx(i, j, Y_DIMENSION)](cell_a_out[i][j]);
            controller->controller_c_out_u[get_idx(i, j, Y_DIMENSION)](cell_c_out_u[i][j]);
            controller->controller_c_out_d[get_idx(i, j, Y_DIMENSION)](cell_c_out_d[i][j]);
            controller->controller_s_out[get_idx(i, j, Y_DIMENSION)](cell_s_out[i][j]);
            controller->controller_a_in[get_idx(i, j, Y_DIMENSION)](cell_a_in[i][j]);
            controller->controller_c_in_u[get_idx(i, j, Y_DIMENSION)](cell_c_in_u[i][j]);
            controller->controller_c_in_d[get_idx(i, j, Y_DIMENSION)](cell_c_in_d[i][j]);
            controller->controller_s_in[get_idx(i, j, Y_DIMENSION)](cell_s_in[i][j]);
        }
    }
    for(int i = 0; i < X_DIMENSION; i++) {
        controller->controller_s_mm[i](cell_s_mm[i]);
    }
    controller->controller_done(combined_operations_done);
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < X_DIMENSION; j++) {
            controller->controller_result_u[get_idx(i, j, X_DIMENSION)](combined_operations_result_u[i][j]);
            controller->controller_result_d[get_idx(i, j, X_DIMENSION)](combined_operations_result_d[i][j]);
        }
    }
}
