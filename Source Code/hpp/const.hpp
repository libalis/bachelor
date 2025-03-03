#include "btint.hpp"

#ifndef CONST_HPP
    #define CONST_HPP

    #ifndef X_DIMENSION
        #define X_DIMENSION (3)
    #endif

    #ifndef Y_DIMENSION
        #define Y_DIMENSION (3)
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> m[X_DIMENSION][Y_DIMENSION];
    #else
        const btint<T> m[X_DIMENSION][Y_DIMENSION] = {
            {btint<T>().from_int(-1), btint<T>().from_int(-1), btint<T>().from_int(-1)},
            {btint<T>().from_int(0), btint<T>().from_int(0), btint<T>().from_int(0)},
            {btint<T>().from_int(1), btint<T>().from_int(1), btint<T>().from_int(1)}
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> v[Y_DIMENSION];
    #else
        const btint<T> v[Y_DIMENSION] = {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3)};
    #endif
#endif
