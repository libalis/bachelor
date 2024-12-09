#include "../hpp/testbench.hpp"

using namespace std;

template <size_t T>
void TESTBENCH<T>::source(void) {
    string line;
    if(getline(input_dat, line)) {
        btint<T> a, b, *c = &a;
        int index = T - 1;
        for(int i = 0; i < line.length(); i++) {
            switch(line[i]) {
                case '-':
                    if(line[i + 1] == '1') {
                        c->btint_a[index] = 0;
                        c->btint_b[index--] = 0;
                        i++;
                    } else {
                        add = 0;
                        c->shift_right(index);
                        c = &b;
                        index = T - 1;
                    }
                    break;
                case '+':
                    add = 1;
                    c->shift_right(index);
                    c = &b;
                    index = T - 1;
                    break;
                case '0':
                    c->btint_a[index] = 0;
                    c->btint_b[index--] = 1;
                    break;
                case '1':
                    c->btint_a[index] = 1;
                    c->btint_b[index--] = 1;
                    break;
                default:
                    break;
            }
        }
        c->shift_right(index);
        if(add) {
            adder_a.write(a);
            adder_b.write(b);
        } else {
            subtractor_a.write(a);
            subtractor_b.write(b);
        }
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
    } else if(add) {
        cout << "@" << sc_time_stamp() << "\t" << adder_a.read() << " + " << adder_b.read() << " = " << adder_sum.read() << endl;
        output_dat << adder_a.read() << " + " << adder_b.read() << " = " << adder_sum.read() << endl;
        cout << "\t(" << adder_a.read().to_int() << " + " << adder_b.read().to_int() << " = " << adder_sum.read().to_int() << ")" << endl;
        output_dat << "(" << adder_a.read().to_int() << " + " << adder_b.read().to_int() << " = " << adder_sum.read().to_int() << ")" << endl;
    } else {
        cout << "@" << sc_time_stamp() << "\t" << subtractor_a.read() << " - " << subtractor_b.read() << " = " << subtractor_sum.read() << endl;
        output_dat << subtractor_a.read() << " - " << subtractor_b.read() << " = " << subtractor_sum.read() << endl;
        cout << "\t(" << subtractor_a.read().to_int() << " - " << subtractor_b.read().to_int() << " = " << subtractor_sum.read().to_int() << ")" << endl;
        output_dat << "(" << subtractor_a.read().to_int() << " - " << subtractor_b.read().to_int() << " = " << subtractor_sum.read().to_int() << ")" << endl;
    }
}
