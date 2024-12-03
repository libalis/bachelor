#include "../hpp/testbench.hpp"

using namespace std;

template <size_t T>
void TESTBENCH<T>::count(void) {
    counter++;
}

template <size_t T>
void TESTBENCH<T>::source(void) {
    btint<T> a, b, *c;
    bool subtract;
    string line;
    int index;
    while(getline(input_dat, line)) {
        c = &a;
        subtract = 0;
        index = T - 1;
        for(int i = 0; i < line.length(); i++) {
            switch(line[i]) {
                case '-':
                    if(line[i + 1] == '1') {
                        c->btint_a[index] = 0;
                        c->btint_b[index] = 0;
                        index--;
                        i++;
                    } else {
                        c = &b;
                        subtract = 1;
                        index = T - 1;
                    }
                    break;
                case '0':
                    c->btint_a[index] = 0;
                    c->btint_b[index] = 1;
                    index--;
                    break;
                case '1':
                    c->btint_a[index] = 1;
                    c->btint_b[index] = 1;
                    index--;
                    break;
                case '+':
                    c = &b;
                    index = T - 1;
                    break;
                default:
                    break;
            }
        }
        if(!subtract) {
            testbench_adder_a.write(a);
            testbench_adder_b.write(b);
        } else {
            testbench_subtractor_a.write(a);
            testbench_subtractor_b.write(b);
        }
    }
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    btint<T + 1> sum;
    sum.btint_a[0] = 0;
    sum.btint_b[0] = 0;
    sum.btint_a[1] = 1;
    sum.btint_b[1] = 1;
    sum.btint_a[2] = 1;
    sum.btint_b[2] = 1;
    sum.btint_a[3] = 0;
    sum.btint_b[3] = 0;
    sum.btint_a[4] = 1;
    sum.btint_b[4] = 1;
    cout << "@" << sc_time_stamp() << "\t" << testbench_adder_a.read() << " + " << testbench_adder_b.read() << " = " << testbench_adder_sum.read() << endl;
    output_dat << testbench_adder_a.read() << " + " << testbench_adder_b.read() << " = " << testbench_adder_sum.read() << endl;
    cout << "\t(" << testbench_adder_a.read().to_int() << " + " << testbench_adder_b.read().to_int() << " = " << testbench_adder_sum.read().to_int() << ")" << endl;
    output_dat << "(" << testbench_adder_a.read().to_int() << " + " << testbench_adder_b.read().to_int() << " = " << testbench_adder_sum.read().to_int() << ")" << endl;
    cout << "@" << sc_time_stamp() << "\t" << testbench_subtractor_a.read() << " - " << testbench_subtractor_b.read() << " = " << testbench_subtractor_sum.read() << endl;
    output_dat << testbench_subtractor_a.read() << " - " << testbench_subtractor_b.read() << " = " << testbench_subtractor_sum.read() << endl;
    cout << "\t(" << testbench_subtractor_a.read().to_int() << " - " << testbench_subtractor_b.read().to_int() << " = " << testbench_subtractor_sum.read().to_int() << ")" << endl;
    output_dat << "(" << testbench_subtractor_a.read().to_int() << " - " << testbench_subtractor_b.read().to_int() << " = " << testbench_subtractor_sum.read().to_int() << ")" << endl;
    if(counter == 2) {
        cout << "@" << sc_time_stamp() << endl;
        sc_stop();
    }
}
