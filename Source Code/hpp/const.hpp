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
            {1, 2, 3, 4}, //m00, m01, m02, m03
            {2, 3, 4, 5}, //m10, m11, m12, m13
            {3, 4, 5, 6}  //m20, m21, m22, m23
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> v[Y_DIMENSION];
    #else
        const btint<T> v[Y_DIMENSION] = {1, 2, 3, 4};
    #endif
#endif
