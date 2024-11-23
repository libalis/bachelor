#include "../hpp/reg.hpp"
void reg::get_adder_B() {
    if(counter == 0) {
        for(int i = 0; i < 4; i++) {
            reg_Ba[i] = Aa[i]->read();
            reg_Bb[i] = Ab[i]->read();
        }
    } else {
        for(int i = 0; i < 4; i++) {
            reg_Ba[i] = Aa[i]->read() && B->read();
            reg_Bb[i] = Ab[i]->read() && B->read();
        }
    }
    for(int i = 0; i < 4; i++) {
        out_Ba[i]->write(reg_Ba[i].to_bool());
        out_Bb[i]->write(reg_Bb[i].to_bool());
    }
    counter=(counter+1)%4;
    next_trigger(clk.posedge_event());
}
