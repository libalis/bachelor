#include "btint.hpp"

#ifndef CONST_HPP
    #define CONST_HPP

    #ifndef X_DIMENSION
        #define X_DIMENSION (3)
    #endif

    #ifndef Y_DIMENSION
        #define Y_DIMENSION (4)
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> m[X_DIMENSION][Y_DIMENSION];
    #else
        const btint<T> m[X_DIMENSION][Y_DIMENSION] = {
            {m<T>[0][0].from_int(1), m<T>[0][1].from_int(2), m<T>[0][2].from_int(3), m<T>[0][3].from_int(4)},
            {m<T>[1][0].from_int(2), m<T>[1][1].from_int(3), m<T>[1][2].from_int(4), m<T>[1][3].from_int(5)},
            {m<T>[2][0].from_int(3), m<T>[2][1].from_int(4), m<T>[2][2].from_int(5), m<T>[2][3].from_int(6)}
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> v[Y_DIMENSION];
    #else
        const btint<T> v[Y_DIMENSION] = {v<T>[0].from_int(1), v<T>[1].from_int(2), v<T>[2].from_int(3), v<T>[3].from_int(4)};
    #endif
#endif
