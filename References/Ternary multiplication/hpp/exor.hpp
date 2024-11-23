#ifndef FA_EXOR_H
#define FA_EXOR_H
#include <systemc.h>
SC_MODULE(EXOR) {
        sc_in<bool> Ba[4], Bb[4];
        sc_in<bool> Subtract;
        sc_out<bool> to_add_Ba[4], to_add_Bb[4];
        void exor();
        SC_CTOR(EXOR) {
            SC_METHOD(exor);
            for(int i=0; i<4; i++) {
                sensitive << Ba[i] << Bb[i];
            }
            sensitive << Subtract;
        }
};
#endif
