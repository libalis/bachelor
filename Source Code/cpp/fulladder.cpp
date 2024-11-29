#include "../hpp/fulladder.hpp"

void FULLADDER::add(void) {
    sum.write(input0.read() ^ input1.read() ^ carry_in.read());
    carry_out.write((input0.read() & input1.read()) | (carry_in.read() & (input0.read() ^ input1.read())));
}
