#include "../hpp/testbench.hpp"

using namespace std;

template <size_t T>
void TESTBENCH<T>::source(void) {
    string line;
    if(getline(input_dat, line)) {
        btint<T> a, b, *c = &a;
        for(int i = 0; i < line.length(); i++) {
            switch(line[i]) {
                case '-':
                    if(line[i + 1] == '1') {
                        c->shift_left(1);
                        c->btint_a[0] = 0;
                        c->btint_b[0] = 0;
                        i++;
                    } else {
                        adder_subtractor_add.write(0);
                        c = &b;
                    }
                    break;
                case '+':
                    adder_subtractor_add.write(1);
                    c = &b;
                    break;
                case '0':
                    c->shift_left(1);
                    c->btint_a[0] = 0;
                    c->btint_b[0] = 1;
                    break;
                case '1':
                    c->shift_left(1);
                    c->btint_a[0] = 1;
                    c->btint_b[0] = 1;
                    break;
                default:
                    break;
            }
        }
        adder_subtractor_a.write(a);
        adder_subtractor_b.write(b);
    } else {
        eof = 1;
    }
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    if(sc_time_stamp() == SC_ZERO_TIME) {
        cout << "@" << sc_time_stamp() << endl;
    } else if(eof) {
        cout << "@" << sc_time_stamp() << endl;
        sc_stop();
    } else {
        cout << "@" << sc_time_stamp() << "\t" << adder_subtractor_a.read() << (adder_subtractor_add.read() ? " + " : " - ") << adder_subtractor_b.read() << " = " << adder_subtractor_sum.read() << endl;
        output_dat << adder_subtractor_a.read() << (adder_subtractor_add.read() ? " + " : " - ") << adder_subtractor_b.read() << " = " << adder_subtractor_sum.read() << endl;
        cout << "\t(" << adder_subtractor_a.read().to_int() << (adder_subtractor_add.read() ? " + " : " - ") << adder_subtractor_b.read().to_int() << " = " << adder_subtractor_sum.read().to_int() << ")" << endl;
        output_dat << "(" << adder_subtractor_a.read().to_int() << (adder_subtractor_add.read() ? " + " : " - ") << adder_subtractor_b.read().to_int() << " = " << adder_subtractor_sum.read().to_int() << ")" << endl;
    }
}
