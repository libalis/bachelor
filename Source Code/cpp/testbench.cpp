#include <sstream>

#include "../hpp/testbench.hpp"

using namespace std;

template <size_t T>
void TESTBENCH<T>::count(void) {
    counter++;
}

template <size_t T>
void TESTBENCH<T>::source(void) {
    btint<T> a, b, *c = &a;
    string line, word;
    bool skip = false;
    int index = T - 1;
    while(getline(input_dat, line)) {
        stringstream ss(line);
        while(ss >> word) {
            for(char character : word) {
                if(skip) {
                    skip = false;
                } else {
                    switch(character) {
                        case '-':
                            c->btint_a[index] = 0;
                            c->btint_b[index] = 0;
                            skip = true;
                            index = (index == 0) ? T - 1 : index - 1;
                            break;
                        case '0':
                            c->btint_a[index] = 0;
                            c->btint_b[index] = 1;
                            index = (index == 0) ? T - 1 : index - 1;
                            break;
                        case '1':
                            c->btint_a[index] = 1;
                            c->btint_b[index] = 1;
                            index = (index == 0) ? T - 1 : index - 1;
                            break;
                        case '+':
                            c = &b;
                            break;
                        default:
                            break;
                    }
                }
            }
        }
        testbench_a.write(a);
        testbench_b.write(b);
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
    if(counter != 0 && counter % 2 == 0) {
        cout << "@" << sc_time_stamp() << "\t" << testbench_a.read() << " + " << testbench_b.read() << " = " << testbench_sum.read() << endl;
        output_dat << testbench_a.read() << " + " << testbench_b.read() << " = " << testbench_sum.read() << endl;
    }
    if(counter == 2) {
        cout << "@" << sc_time_stamp() << endl;
        sc_stop();
    }
}
