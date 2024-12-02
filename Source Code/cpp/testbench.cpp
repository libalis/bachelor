#include "../hpp/testbench.hpp"

template <size_t T>
void TESTBENCH<T>::source(void) {
    btint<T> a;
    a.btint_a[1] = 0;
    a.btint_b[1] = 0;
    a.btint_a[3] = 1;
    a.btint_b[3] = 1;
    btint<T> b;
    b.btint_a[0] = 1;
    b.btint_b[0] = 1;
    b.btint_a[1] = 1;
    b.btint_b[1] = 1;
    b.btint_a[2] = 1;
    b.btint_b[2] = 1;
    testbench_a.write(a);
    testbench_b.write(b);
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
    cout << "@" << sc_time_stamp() << "\t" << testbench_a.read() << " + " << testbench_b.read() << " = " << testbench_sum.read() << endl;
    if(testbench_sum.read() == sum) {
        sc_stop();
    }
}
