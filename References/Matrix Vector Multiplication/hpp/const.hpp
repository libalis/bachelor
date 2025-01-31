#include <systemc.h>

#ifndef CONST_HPP
    #define CONST_HPP

    #define X (3)
    #define Y (4)

    template <size_t T>
    const sc_int<T> m[X][Y] = {
        {1, 2, 3, 4}, //m00, m01, m02, m03
        {2, 3, 4, 5}, //m10, m11, m12, m13
        {3, 4, 5, 6}  //m20, m21, m22, m23
    };

    template <size_t T>
    const sc_int<T> v[Y] = {1, 2, 3, 4};
#endif
