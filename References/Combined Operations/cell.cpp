#include "cell.hpp"

template <size_t T>
void CELL<T>::compute(void) {
    btint<T + 1> sum;
    btint<2 * T> product;
    cell_a_out.write(cell_a_in.read());
    cell_c_out_u.write(BTINT_ZERO(T));
    // cell_c_out_d
    cell_s_out.write(cell_s_in.read());
    cell_op_out.write(cell_op_in.read());
    state_u = cell_a_in.read();
    // state_d
    wait();
    while(true) {
        sum = adder_subtractor_sum.read();
        product = multiplier_product.read();
        cell_a_out.write(cell_a_in.read());
        cell_s_out.write(cell_s_in.read());
        cell_op_out.write(cell_op_in.read());
        if(cell_op_in.read() == 1) {
            /*if(cell_s_mm.read()) {
                if(cell_s_in.read()) {
                    state_u = cell_c_in_u.read();
                    state_d = cell_c_in_d.read() * cell_a_in.read();
                    cell_c_out_u.write(cell_c_in_u.read());
                    cell_c_out_d.write(cell_c_in_d.read() * cell_a_in.read());
                } else {
                    if(cell_c_in_u.read() == 0) {
                        cell_c_out_u = -state_u * cell_a_in.read();
                        cell_c_out_d = state_d;
                    } else if(cell_a_in.read() == 0 || state_u == 0) {
                        cell_c_out_u = cell_c_in_u.read();
                        cell_c_out_d = cell_c_in_d.read();
                    } else {
                        cell_c_out_u = cell_c_in_u.read() * state_d - state_u * cell_a_in.read() * cell_c_in_d.read();
                        cell_c_out_d = cell_c_in_d.read() * state_d;
                    }
                }
            } else {
                cell_c_out_u = cell_c_in_u.read();
                cell_c_out_d = cell_c_in_d.read();
            }*/
        } else {
            if(cell_s_mm.read()) {
                state_u = cell_a_in.read();
                cell_c_out_u.write(BTINT_ZERO(T));
            } else {
                multiplier_a.write(state_u);
                multiplier_b.write(cell_a_in.read());
                adder_subtractor_a.write(product.range(T - 1, 0));
                adder_subtractor_b.write(cell_c_in_u.read());
                cell_c_out_u.write(sum.range(T - 1, 0));
            }
        }
        wait();
    }
}
