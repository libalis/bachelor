#include "../hpp/cell.hpp"
#include "../hpp/const.hpp"

template <size_t T>
void CELL<T>::compute(void) {
    btint<T> zero = btint<T>().from_int(0);
    btint<2 * T + 1> sum;
    btint<2 * T> product[MULTIPLIER_COUNT];
    btint<T> c_in_u;
    btint<T> a_in;
    cell_a_out.write(zero);
    cell_c_out_u.write(zero);
    cell_c_out_d.write(zero);
    cell_s_out.write(0);
    state_u = zero;
    state_d = zero;
    wait();
    while(1) {
        sum = adder_subtractor_sum.read();
        for(int i = 0; i < MULTIPLIER_COUNT; i++) {
            product[i] = multiplier_product[i].read();
        }
        c_in_u = cell_c_in_u.read();
        a_in = cell_a_in.read();
        cell_a_out.write(cell_a_in.read());
        cell_s_out.write(cell_s_in.read());
        if(cell_op.read() == MATRIX_INVERSION) {
            if(cell_s_mm.read()) {
                if(cell_s_in.read()) {
                    state_u = cell_c_in_u.read();
                    multiplier_reset[0].write(0);
                    multiplier_a[0].write(cell_c_in_d.read());
                    multiplier_b[0].write(cell_a_in.read());
                    state_d = product[0].reduce();
                    cell_c_out_u.write(cell_c_in_u.read());
                    cell_c_out_d.write(product[0].reduce());
                } else {
                    if(c_in_u.to_int() == 0) {
                        multiplier_reset[0].write(0);
                        multiplier_a[0].write(state_u.negate());
                        multiplier_b[0].write(cell_a_in.read());
                        cell_c_out_u.write(product[0].reduce());
                        cell_c_out_d.write(state_d);
                    } else if(a_in.to_int() == 0 || state_u.to_int() == 0) {
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
                        multiplier_a[2].write(product[1].reduce());
                        multiplier_b[2].write(cell_c_in_d.read());
                        adder_subtractor_a.write(product[0]);
                        adder_subtractor_b.write(product[2]);
                        adder_subtractor_subtract.write(1);
                        cell_c_out_u.write(sum.reduce());
                        multiplier_reset[3].write(0);
                        multiplier_a[3].write(cell_c_in_d.read());
                        multiplier_b[3].write(state_d);
                        cell_c_out_d.write(product[3].reduce());
                    }
                }
            } else {
                cell_c_out_u.write(cell_c_in_u.read());
                cell_c_out_d.write(cell_c_in_d.read());
            }
        } else {
            if(cell_s_mm.read()) {
                state_u = cell_a_in.read();
                cell_c_out_u.write(zero);
            } else {
                multiplier_reset[0].write(0);
                multiplier_a[0].write(state_u);
                multiplier_b[0].write(cell_a_in.read());
                adder_subtractor_a.write(product[0]);
                adder_subtractor_b.write(c_in_u.expand());
                adder_subtractor_subtract.write(0);
                cell_c_out_u.write(sum.reduce());
            }
        }
        wait();
    }
}
