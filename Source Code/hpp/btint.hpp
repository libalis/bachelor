#ifndef BTINT_HPP
    #define BTINT_HPP

    #ifndef TRITS
        #define TRITS (32)
    #endif

    #include <algorithm>
    #include <systemc.h>

    using namespace std;

    template <size_t T>
    struct btint {
        bool btint_a[T];
        bool btint_b[T];

        btint() {
            for(int i = 0; i < T; i++) {
                btint_a[i] = 0;
                btint_b[i] = 1;
            }
        }

        template <size_t U>
        btint(const btint<U> &value) {
            for(int i = 0; i < min(T, U); i++) {
                btint_a[i] = value.btint_a[i];
                btint_b[i] = value.btint_b[i];
            }
            for(int i = min(T, U); i < T; i++) {
                btint_a[i] = 0;
                btint_b[i] = 1;
            }
        }

        btint(int value) {
            for(int i = 0; i < T; i++) {
                btint_a[i] = 0;
                btint_b[i] = 1;
            }
            bool isNegative = value < 0;
            if(isNegative) {
                value = -value;
            }
            int index = 0;
            while(value) {
                if(value % 2) {
                    btint_a[index] = 1;
                    btint_b[index++] = 1;
                    value -= 1;
                } else {
                    btint_a[index] = 0;
                    btint_b[index++] = 1;
                }
                value /= 2;
            }
            if(isNegative) {
                for(int i = 0; i < T; i++) {
                    if(this->value(i)) {
                        btint_a[i] = !btint_a[i];
                        btint_b[i] = !btint_b[i];
                    }
                }
            }
        }

        btint<T> shift_left(int index) const {
            btint<T> value = *this;
            for(int i = 0; i < index; i++) {
                for(int j = T - 1; j > 0; j--) {
                    value.btint_a[j] = value.btint_a[j - 1];
                    value.btint_b[j] = value.btint_b[j - 1];
                }
                value.btint_a[0] = 0;
                value.btint_b[0] = 1;
            }
            return value;
        }

        bool operator==(const btint<T> &value) const {
            for(int i = 0; i < T; i++) {
                if(btint_a[i] != value.btint_a[i] || btint_b[i] != value.btint_b[i]) {
                    return false;
                }
            }
            return true;
        }

        int value(int index) const {
            return btint_a[index] + btint_b[index] - 1;
        }

        int to_int() const {
            int value = 0;
            for(int i = T - 1; i >= 0; i--) {
                value = value * 2 + this->value(i);
            }
            return value;
        }
    };

    template <size_t T>
    ostream &operator<<(ostream &os, const btint<T> &value) {
        for(int i = T - 1; i >= 0; i--) {
            os << value.btint_a[i] + value.btint_b[i] - 1;
        }
        return os;
    }

    template <size_t T>
    void sc_trace(sc_trace_file *&file, const btint<T> &value, string &name) {
        for(int i = 0; i < T; i++) {
            sc_trace(file, value.btint_a[i], name + ".btint_a[" + to_string(i) + "]");
            sc_trace(file, value.btint_b[i], name + ".btint_b[" + to_string(i) + "]");
        }
    }
#endif
