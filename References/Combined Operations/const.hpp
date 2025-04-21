#include "../../Source Code/hpp/btint.hpp"

#ifndef CONST_HPP
    #define CONST_HPP

    #ifndef X_DIMENSION
        #define X_DIMENSION (4)
    #endif

    #ifndef Y_DIMENSION
        #define Y_DIMENSION (4)
    #endif

    enum {
        INVERSION,
        MM_MULTIPLICATION,
        MV_MULTIPLICATION
    };

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> m_a[X_DIMENSION][Y_DIMENSION];
    #else
        const btint<T> m_a[X_DIMENSION][Y_DIMENSION] = {
            {btint<T>().from_int(1), btint<T>().from_int(0), btint<T>().from_int(0), btint<T>().from_int(0)},
            {btint<T>().from_int(0), btint<T>().from_int(2), btint<T>().from_int(0), btint<T>().from_int(0)},
            {btint<T>().from_int(0), btint<T>().from_int(0), btint<T>().from_int(3), btint<T>().from_int(0)},
            {btint<T>().from_int(0), btint<T>().from_int(0), btint<T>().from_int(0), btint<T>().from_int(4)}
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> m_b[X_DIMENSION][Y_DIMENSION];
    #else
        const btint<T> m_b[X_DIMENSION][Y_DIMENSION] = {
            {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3), btint<T>().from_int(4)},
            {btint<T>().from_int(2), btint<T>().from_int(3), btint<T>().from_int(4), btint<T>().from_int(5)},
            {btint<T>().from_int(3), btint<T>().from_int(4), btint<T>().from_int(5), btint<T>().from_int(6)},
            {btint<T>().from_int(4), btint<T>().from_int(5), btint<T>().from_int(6), btint<T>().from_int(7)}
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> v[Y_DIMENSION];
    #else
        const btint<T> v[Y_DIMENSION] = {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3), btint<T>().from_int(4)};
    #endif

    #ifdef INPUT_OUTPUT
        sc_biguint<2> op;
    #else
        const sc_biguint<2> op = MM_MULTIPLICATION;
    #endif
#endif
