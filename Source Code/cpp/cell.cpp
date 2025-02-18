#include "../hpp/cell.hpp"

template <size_t T>
void CELL<T>::compute(void) {
    cell_b_out.write(cell_b_in.read());
    cell_c_out.write(0);
    state = cell_b_in.read();
    wait();
    while(true) {
        cell_b_out.write(cell_b_in.read());
        multiplier_a.write(state);
        multiplier_b.write(cell_b_in.read());
        adder_subtractor_a.write(btint_to_biguint<T>(multiplier_product.read()));
        adder_subtractor_b.write(btint_to_biguint<T>(cell_c_in.read()));
        cell_c_out.write(biguint_to_btint<T>(adder_subtractor_sum.read()));
        wait();
    }
}
