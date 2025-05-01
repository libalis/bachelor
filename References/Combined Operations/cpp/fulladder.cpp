#include "../hpp/fulladder.hpp"

void FULLADDER::add(void) {
    fulladder_sum.write(fulladder_a.read() ^ fulladder_b.read() ^ fulladder_carry_in.read());
    fulladder_carry_out.write((fulladder_a.read() & fulladder_b.read()) | (fulladder_carry_in.read() & (fulladder_a.read() ^ fulladder_b.read())));
}
