#ifndef BTINT_HPP
    #define BTINT_HPP

    #ifndef TRITS
        #define TRITS (4)
    #endif

    #include <algorithm>
    #include <systemc>

    using namespace std;
    using namespace sc_core;
    using namespace sc_dt;

    template <size_t T>
    struct btint {
        sc_uint<T> btint_a;
        sc_uint<T> btint_b;

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
            btint value;
            value.btint_a = btint_a << index;
            value.btint_b = btint_b << index;
            return value;
        }

        btint shift_right(int index) {
            btint value;
            value.btint_a = btint_a >> index;
            value.btint_b = btint_b >> index;
            return value;
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
