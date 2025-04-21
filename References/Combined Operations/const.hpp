#include <systemc.h>

#ifndef CONST_HPP
    #define CONST_HPP

    #define X 3

    const sc_int<8> matrixa[X][X] = {
        {1, 6, 12}, // a00, a01, a02
        {0, 2, 4},  // a10, a11, a12
        {0, 0, 3}   // a20, a21, a22
    };

    const sc_int<8> matrixb[X][X] = {
        {1, 2, 3}, // a00, a01, a02
        {2, 3, 4}, // a10, a11, a12
        {3, 4, 5}  // a20, a21, a22
    };

    const sc_int<8> vektor[X] = {1, 2, 3};

    const sc_int<2> op = 0; // 0 Inversion, 1 MM-Multiplikation, 2 MV-Multiplikation
#endif
