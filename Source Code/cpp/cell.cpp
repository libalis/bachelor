#include "../hpp/cell.hpp"

template <size_t T>
void CELL<T>::compute(void) {
    btint<T + 1> sum;
    btint<2 * T> product;
    cell_b_out.write(cell_b_in.read());
    cell_c_out.write(btint<T>().from_int(0));
    state = cell_b_in.read();
    wait();
    while(true) {
        sum = adder_subtractor_sum.read();
        product = multiplier_product.read();
        cell_b_out.write(cell_b_in.read());
        multiplier_a.write(state);
        multiplier_b.write(cell_b_in.read());
        adder_subtractor_a.write(product.range(T - 1, 0));
        adder_subtractor_b.write(cell_c_in.read());
        cell_c_out.write(sum.range(T - 1, 0));
        wait();
    }
}
