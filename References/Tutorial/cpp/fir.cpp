#include "../hpp/fir.hpp"

void fir::fir_main(void) {
    sc_int<16> taps[5];

    for(int i = 0; i < 5; i++) {
        taps[i] = 0;
    }

    inp_rdy.write(0);
    outp_vld.write(0);
    outp.write(0);
    wait();

    while(true) {
        sc_int<16> in_val;
        sc_int<16> out_val;

        inp_rdy.write(1);
        wait(10000);
        do {
            wait();
        } while (!inp_vld.read());
        in_val = inp.read();
        inp_rdy.write(0);

        for(int i = 5-1; i > 0; i--) {
            taps[i] = taps[i-1];
        }
        taps[0] = in_val;

        for(int i = 0; i < 5; i++) {
            out_val += coef[i] * taps[i];
        }

        outp_vld.write(1);
        outp.write(out_val);
        do {
            wait();
        } while (!outp_rdy.read());
        outp_vld.write(0);
    }
}
