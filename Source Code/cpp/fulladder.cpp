#include "../hpp/fulladder.hpp"

void FULLADDER::add(void) {
    bool a_value, b_value, c_in_value;
    bool s_value, c_out_value;

    input_ready.write(0);
    s.write(0);
    c_out.write(0);
    output_valid.write(0);
    wait();

    while(true) {
        input_ready.write(1);
        do {
            wait();
        } while(!input_valid.read());
        a_value = a.read();
        b_value = b.read();
        c_in_value = c_in.read();
        input_ready.write(0);

        s_value = a_value ^ b_value ^ c_in_value;
        c_out_value = (a_value & b_value) | (c_in_value & (a_value ^ b_value));

        output_valid.write(1);
        s.write(s_value);
        c_out.write(c_out_value);
        do {
            wait();
        } while(!output_ready.read());
        output_valid.write(0);
    }
}
