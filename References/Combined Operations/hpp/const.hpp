#include "btint.hpp"

#ifndef CONST_HPP
    #define CONST_HPP

    #ifndef X_DIMENSION
        #define X_DIMENSION (4)
    #endif

    #ifndef Y_DIMENSION
        #define Y_DIMENSION (3)
    #endif

    #ifndef MIN_DIMENSION
        #define MIN_DIMENSION ((X_DIMENSION) < (Y_DIMENSION) ? (X_DIMENSION) : (Y_DIMENSION))
    #endif

    enum {
        MATRIX_INVERSION,
        MATRIX_MATRIX_MULTIPLICATION,
        MATRIX_VECTOR_MULTIPLICATION
    };

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> m_a[X_DIMENSION][Y_DIMENSION];
    #else
        const btint<T> m_a[X_DIMENSION][Y_DIMENSION] = {
            {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3)},
            {btint<T>().from_int(0), btint<T>().from_int(3), btint<T>().from_int(2)},
            {btint<T>().from_int(0), btint<T>().from_int(0), btint<T>().from_int(3)},
            {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3)}
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> m_b[Y_DIMENSION][X_DIMENSION];
    #else
        const btint<T> m_b[Y_DIMENSION][X_DIMENSION] = {
            {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3), btint<T>().from_int(4)},
            {btint<T>().from_int(2), btint<T>().from_int(3), btint<T>().from_int(4), btint<T>().from_int(5)},
            {btint<T>().from_int(3), btint<T>().from_int(4), btint<T>().from_int(5), btint<T>().from_int(6)}
        };
    #endif

    template <size_t T>
    #ifdef INPUT_OUTPUT
        btint<T> v[Y_DIMENSION];
    #else
        const btint<T> v[Y_DIMENSION] = {btint<T>().from_int(1), btint<T>().from_int(2), btint<T>().from_int(3)};
    #endif

    #ifdef INPUT_OUTPUT
        sc_biguint<2> op;
    #else
        const sc_biguint<2> op = MATRIX_INVERSION;
    #endif
#endif
