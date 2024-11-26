#include "../hpp/testbench.hpp"

void TESTBENCH::source(void) {
    reset.write(1);
    a.write(0);
    b.write(0);
    c_in.write(0);
    input_valid.write(0);
    wait();

    reset.write(0);
    wait();

    for(int i = 0; i <= 1; i++) {
        for(int j = 0; j <= 1; j++) {
            for(int k = 0; k <= 1; k++) {
                input_valid.write(1);
                a.write(i);
                b.write(j);
                c_in.write(k);
                do {
                    wait();
                } while(!input_ready.read());
                input_valid.write(0);

                cout << "@" << sc_time_stamp() << "\ta: " << i << ", b: " << j << ", c_in: " << k << endl;
                output_dat << "a: " << i << ", b: " << j << ", c_in: " << k << endl;
            }
        }
    }
}

void TESTBENCH::sink(void) {
    bool s_value, c_out_value;

    output_ready.write(0);
    wait();

    for(int i = 0; i <= 1; i++) {
        for(int j = 0; j <= 1; j++) {
            for(int k = 0; k <= 1; k++) {
                output_ready.write(1);
                do {
                    wait();
                } while(!output_valid.read());
                s_value = s.read();
                c_out_value = c_out.read();
                output_ready.write(0);

                cout << "@" << sc_time_stamp() << "\ts: " << s_value << ", c_out: " << c_out_value << endl;
                output_dat << "s: " << s_value << ", c_out: " << c_out_value << endl;
            }
        }
    }

    cout << "@" << sc_time_stamp() << endl;
    sc_stop();
}
