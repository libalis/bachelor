#include "../hpp/tb.hpp"

void tb::source(void) {
    inp.write(0);
    rst.write(1);
    wait();
    rst.write(0);
    wait();

    sc_int<16> tmp;
    for(int i = 0; i < 64; i++) {
        if(i > 23 && i < 29)
            tmp = 256;
        else
            tmp = 0;
        inp.write(tmp);
        wait();
    }
}

void tb::sink(void) {
    sc_int<16> indata;
    for(int i = 0; i < 64; i++) {
        indata = outp.read();
        wait();

        cout << i << " :\t" << indata.to_int() << endl;
    }

    sc_stop();
}
