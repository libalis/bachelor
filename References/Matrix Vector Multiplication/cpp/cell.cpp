#include "../hpp/cell.hpp"

template <size_t T>
void CELL<T>::compute(void) {
    cell_b_out.write(cell_b_in.read());
    cell_c_out.write(0);
    state = cell_b_in.read();
    wait();
    while(true) {
        cell_b_out.write(cell_b_in.read());
        multiplier_a.write(btint<T>(state));
        multiplier_b.write(btint<T>(cell_b_in.read()));
        adder_subtractor_a.write(multiplier_product.read());
        adder_subtractor_b.write(btint<T>(cell_c_in.read()));
        cell_c_out.write(adder_subtractor_sum.read().to_int());
        wait();
    }
}
