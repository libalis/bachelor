#ifndef BTINT_HPP
    #define BTINT_HPP

    #ifndef TRITS
        #define TRITS (4)
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
                set_value(i, 0);
            }
        }

        template <size_t U>
        btint(const btint<U> &value) {
            for(int i = 0; i < min(T, U); i++) {
                set_value(i, value.get_value(i));
            }
            for(int i = min(T, U); i < T; i++) {
                set_value(i, 0);
            }
        }

        btint(int value) {
            for(int i = 0; i < T; i++) {
                set_value(i, 0);
            }
            bool isNegative = value < 0;
            if(isNegative) {
                value = -value;
            }
            int i = 0;
            while(value) {
                if(value % 2) {
                    set_value(i++, 1);
                    value -= 1;
                } else {
                    set_value(i++, 0);
                }
                value /= 2;
            }
            if(isNegative) {
                for(int i = 0; i < T; i++) {
                    set_value(i, -get_value(i));
                }
            }
        }

        btint shift_left(int index) {
            for(int i = 0; i < index; i++) {
                for(int j = T - 1; j > 0; j--) {
                    set_value(j, get_value(j - 1));
                }
                set_value(0, 0);
            }
            return *this;
        }

        btint shift_right(int index) {
            for(int i = 0; i < index; i++) {
                for(int j = 0; j < T - 1; j++) {
                    set_value(j, get_value(j + 1));
                }
                set_value(T - 1, 0);
            }
            return *this;
        }

        btint set_value(int index, int decimal_value) {
            switch(decimal_value) {
                case -1:
                    btint_a[index] = 0;
                    btint_b[index] = 0;
                    break;
                case 0:
                    btint_a[index] = 0;
                    btint_b[index] = 1;
                    break;
                case 1:
                    btint_a[index] = 1;
                    btint_b[index] = 1;
                    break;
                default:
                    break;
            }
            return *this;
        }

        int get_value(int index) const {
            return btint_a[index] + btint_b[index] - 1;
        }

        int to_int() const {
            int value = 0;
            for(int i = T - 1; i >= 0; i--) {
                value = value * 2 + get_value(i);
            }
            return value;
        }

        bool operator==(const btint<T> &value) const {
            for(int i = 0; i < T; i++) {
                if(get_value(i) != value.get_value(i)) {
                    return false;
                }
            }
            return true;
        }
    };

    template <size_t T>
    ostream &operator<<(ostream &os, const btint<T> &value) {
        for(int i = T - 1; i >= 0; i--) {
            os << value.get_value(i);
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
