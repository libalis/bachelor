#ifndef FA_REG_B_H
#define FA_REG_B_H
#include <systemc.h>
SC_MODULE(reg_B) {
    sc_in<bool> Ba[4], Bb[4], clk;
    sc_out<bool> subtract, B;
    sc_bv<4> reg_Ba, reg_Bb;
    int count;
    void output() {
        for(int i = 0; i < 4; i++) {
            reg_Ba[i] = Ba[i].read();
            reg_Bb[i] = Bb[i].read();
        }
        if(count < 4) {
            if(count >= 0) {
                B.write(!(reg_Ba[count].to_bool() ^ reg_Bb[count].to_bool()));
                subtract.write(!(Ba[count] || Bb[count]));
            }
            count++;
        }
        if(count == 4) {
            count = 0;
        }
    }
    SC_CTOR(reg_B) : count(-2) {
        SC_METHOD(output)
        sensitive << clk.pos();
    }
};
#endif
