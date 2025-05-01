#include "../hpp/cell.hpp"
#include "../hpp/const.hpp"

template <size_t T>
void CELL<T>::compute(void) {
    btint<T + 1> sum;
    btint<2 * T> product[4];
    cell_a_out.write(cell_a_in.read());
    cell_c_out_u.write(BTINT_ZERO(T));
    cell_c_out_d.write(BTINT_ZERO(T));
    cell_s_out.write(cell_s_in.read());
    state_u = cell_a_in.read();
    state_d = BTINT_ZERO(T);
    wait();
    while(1) {
        sum = adder_subtractor_sum.read();
        for(int i = 0; i < 4; i++) {
            product[i] = multiplier_product[i].read();
        }
        cell_a_out.write(cell_a_in.read());
        cell_s_out.write(cell_s_in.read());
        if(op == INVERSION) {
            if(cell_s_mm.read()) {
                if(cell_s_in.read()) {
                    state_u = cell_c_in_u.read();
                    multiplier_reset[0].write(0);
                    multiplier_a[0].write(cell_c_in_d.read());
                    multiplier_b[0].write(cell_a_in.read());
                    state_d = product[0].range(T - 1, 0);
                    cell_c_out_u.write(cell_c_in_u.read());
                    cell_c_out_d.write(product[0].range(T - 1, 0));
                } else {
                    if(cell_c_in_u.read().to_int() == 0) {
                        multiplier_reset[0].write(0);
                        multiplier_a[0].write(state_u.negate());
                        multiplier_b[0].write(cell_a_in.read());
                        cell_c_out_u.write(product[0].range(T - 1, 0));
                        cell_c_out_d.write(state_d);
                    } else if(cell_a_in.read().to_int() == 0 || state_u.to_int() == 0) {
                        cell_c_out_u.write(cell_c_in_u.read());
                        cell_c_out_d.write(cell_c_in_d.read());
                    } else {
                        multiplier_reset[0].write(0);
                        multiplier_a[0].write(cell_c_in_u.read());
                        multiplier_b[0].write(state_d);
                        multiplier_reset[1].write(0);
                        multiplier_a[1].write(state_u);
                        multiplier_b[1].write(cell_a_in.read());
                        multiplier_reset[2].write(0);
                        multiplier_a[2].write(product[1].range(T - 1, 0));
                        multiplier_b[2].write(cell_c_in_d.read());
                        adder_subtractor_a.write(product[0].range(T - 1, 0));
                        adder_subtractor_b.write(product[2].range(T - 1, 0));
                        adder_subtractor_subtract.write(1);
                        cell_c_out_u.write(sum.range(T - 1, 0));
                        multiplier_reset[3].write(0);
                        multiplier_a[3].write(cell_c_in_d.read());
                        multiplier_b[3].write(state_d);
                        cell_c_out_d.write(product[3].range(T - 1, 0));
                    }
                }
            } else {
                cell_c_out_u.write(cell_c_in_u.read());
                cell_c_out_d.write(cell_c_in_d.read());
            }
        } else {
            if(cell_s_mm.read()) {
                state_u = cell_a_in.read();
                cell_c_out_u.write(BTINT_ZERO(T));
            } else {
                multiplier_reset[0].write(0);
                multiplier_a[0].write(state_u);
                multiplier_b[0].write(cell_a_in.read());
                adder_subtractor_a.write(product[0].range(T - 1, 0));
                adder_subtractor_b.write(cell_c_in_u.read());
                adder_subtractor_subtract.write(0);
                cell_c_out_u.write(sum.range(T - 1, 0));
            }
        }
        wait();
    }
}
