#include "../hpp/tb.hpp"

void tb::source(void) {
    sc_int<16> tmp;

    inp.write(0);
    inp_vld.write(0);
    rst.write(1);
    wait();
    rst.write(0);
    wait();

    for(int i = 0; i < 64; i++) {
        if(i > 23 && i < 29)
            tmp = 256;
        else
            tmp = 0;
        inp_vld.write(1);
        inp.write(tmp);
        do {
            wait();
        } while (!inp_rdy.read());
        inp_vld.write(0);
    }
}

void tb::sink(void) {
    sc_int<16> indata;

    outp_rdy.write(0);

    for(int i = 0; i < 64; i++) {
        outp_rdy.write(1);
        do {
            wait();
        } while (!outp_vld.read());
        indata = outp.read();
        outp_rdy.write(0);

        cout << i << " :\t" << indata.to_int() << endl;
    }

    sc_stop();
}
