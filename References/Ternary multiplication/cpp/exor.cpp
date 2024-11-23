#include "../hpp/exor.hpp"
void EXOR::exor() {
    for(int i=0; i<4; i++) {
        to_add_Ba[i].write(Ba[i].read()^Subtract.read());
        to_add_Bb[i].write(Bb[i].read()^Subtract.read());
    }
};
