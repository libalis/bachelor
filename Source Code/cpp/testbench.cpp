#include "../hpp/testbench.hpp"

void TESTBENCH::source(void) {
    bool inputs[8][3] = {{0, 0, 0},
                         {0, 0, 1},
                         {0, 1, 0},
                         {0, 1, 1},
                         {1, 0, 0},
                         {1, 0, 1},
                         {1, 1, 0},
                         {1, 1, 1}};
    input0.write(inputs[counter][0]);
    input1.write(inputs[counter][1]);
    carry_in.write(inputs[counter][2]);
    counter++;
}

void TESTBENCH::sink(void) {
    if(counter == 0) {
        next_trigger();
    } else if(counter == 9) {
        cout << "@" << sc_time_stamp() << endl;
        sc_stop();
    } else {
        cout << "@" << sc_time_stamp() << "\t" << input0.read() << " + " << input1.read() << " + " << carry_in.read() << " = " << sum.read() << ", carry: " << carry_out.read() << endl;
        output_dat << input0.read() << " + " << input1.read() << " + " << carry_in.read() << " = " << sum.read() << ", carry: " << carry_out.read() << endl;
    }
}
