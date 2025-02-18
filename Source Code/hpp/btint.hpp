#ifndef BTINT_HPP
    #define BTINT_HPP

    #ifndef TRITS
        #define TRITS (8)
    #endif

    #include <algorithm>
    #include <systemc>

    using namespace std;
    using namespace sc_core;
    using namespace sc_dt;

    template <size_t T>
    struct btint {
        sc_biguint<T> btint_a;
        sc_biguint<T> btint_b;
        bool overflow = 0;

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
                if(i >= T) {
                    overflow = 1;
                    break;
                }
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

        btint<TRITS> check_overflow() const {
            btint value(to_int());
            value.overflow = overflow;
            bool overflow = 0;
            for(int i = TRITS; i < T; i++) {
                if(value.get_value(i)) {
                    value.overflow = 1;
                    break;
                }
                if(get_value(i)) {
                    overflow = 1;
                    break;
                }
            }
            if(value.overflow) {
                cout << "Possible Overflow" << endl;
            } else if(overflow) {
                cout << "Pseudo Overflow" << endl;
            } else {
                cout << "No Overflow" << endl;
            }
            return value;
        }

        btint shift_left(int index) const {
            btint value;
            value.btint_a = btint_a << index;
            value.btint_b = btint_b << index;
            value.set_value(0, 0);
            return value;
        }

        btint shift_right(int index) const {
            btint value;
            value.btint_a = btint_a >> index;
            value.btint_b = btint_b >> index;
            value.set_value(T - 1, 0);
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

        friend ostream &operator<<(ostream &os, const btint<T> &value) {
            for(int i = T - 1; i >= 0; i--) {
                os << value.get_value(i);
            }
            return os;
        }

        friend void sc_trace(sc_trace_file *&file, const btint<T> &value, string &name) {
            sc_trace(file, value.btint_a, name + ".btint_a");
            sc_trace(file, value.btint_b, name + ".btint_b");
            for(int i = 0; i < T; i++) {
                sc_trace(file, value.btint_a[i], name + ".btint_a[" + to_string(i) + "]");
                sc_trace(file, value.btint_b[i], name + ".btint_b[" + to_string(i) + "]");
            }
        }
    };

    template <size_t T>
    sc_biguint<2 * T + 1> btint_to_biguint(btint<T> input) {
        sc_biguint<2 * T + 1> output;
        for(int i = 0; i < T; i++) {
            output[2 * i] = input.btint_a[i];
            output[2 * i + 1] = input.btint_b[i];
        }
        output[2 * T] = input.overflow;
        return output;
    }

    template <size_t T>
    btint<T> biguint_to_btint(sc_biguint<2 * T + 1> input) {
        btint<T> output;
        for(int i = 0; i < T; i++) {
            output.btint_a[i] = input[2 * i];
            output.btint_b[i] = input[2 * i + 1];
        }
        output.overflow = input[2 * T];
        return output;
    }
#endif
