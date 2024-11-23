#include <systemc.h>
#include "../hpp/fa.hpp"
void fa::add() {
    Sum.write(op1.read() ^ op2.read() ^ Cin.read());
    Cout.write((op1.read() & op2.read()) | (op2.read() & Cin.read()) | (Cin.read() & op1.read()));
}
