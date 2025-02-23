#ifndef BTINT_HPP
    #define BTINT_HPP

    #ifndef TRITS
        #define TRITS (8)
    #endif

    #include <systemc>

    using namespace std;
    using namespace sc_core;
    using namespace sc_dt;

    template <size_t T>
    struct btint {
        sc_biguint<T> btint_a;
        sc_biguint<T> btint_b;
        sc_biguint<2> overflow;

        btint check_overflow(void) const {
            btint output = from_int(to_int());
            output.overflow = overflow;
            bool overflow = 0;
            for(int i = TRITS; i < T; i++) {
                if(output.get_value(i)) {
                    output = output.set_overflow(output.get_value(i));
                    break;
                }
                if(get_value(i)) {
                    overflow = 1;
                    break;
                }
            }
            if(output.get_overflow()) {
                cout << "Possible Overflow" << endl;
            } else if(overflow) {
                cout << "Pseudo Overflow" << endl;
            } else {
                cout << "No Overflow" << endl;
            }
            return output;
        }

        btint from_int(int value) const {
            btint output;
            for(int i = 0; i < T; i++) {
                output = output.set_value(i, 0);
            }
            bool isNegative = value < 0;
            if(isNegative) {
                value = -value;
            }
            int i = 0;
            while(value) {
                if(i >= T) {
                    output = output.set_overflow(1);
                    break;
                }
                if(value % 2) {
                    output = output.set_value(i++, 1);
                    value -= 1;
                } else {
                    output = output.set_value(i++, 0);
                }
                value /= 2;
            }
            if(isNegative) {
                for(int i = 0; i < T; i++) {
                    output = output.set_value(i, -output.get_value(i));
                }
                output = output.set_overflow(-1);
            }
            return output;
        }

        int get_overflow(void) const {
            return overflow[0] + overflow[1] - 1;
        }

        int get_value(int index) const {
            return btint_a[index] + btint_b[index] - 1;
        }

        btint<TRITS> range(int from, int to) const {
            btint<TRITS> output;
            output.btint_a = btint_a.range(from, to);
            output.btint_b = btint_b.range(from, to);
            output.overflow = overflow;
            return output;
        }

        btint set_overflow(int value) const {
            btint output;
            output.btint_a = btint_a;
            output.btint_b = btint_b;
            output.overflow = overflow;
            switch(value) {
                case -1:
                    output.overflow[0] = 0;
                    output.overflow[1] = 0;
                    break;
                case 0:
                    output.overflow[0] = 0;
                    output.overflow[1] = 1;
                    break;
                case 1:
                    output.overflow[0] = 1;
                    output.overflow[1] = 1;
                    break;
                default:
                    break;
            }
            return output;
        }

        btint set_value(int index, int value) const {
            btint output;
            output.btint_a = btint_a;
            output.btint_b = btint_b;
            output.overflow = overflow;
            switch(value) {
                case -1:
                    output.btint_a[index] = 0;
                    output.btint_b[index] = 0;
                    break;
                case 0:
                    output.btint_a[index] = 0;
                    output.btint_b[index] = 1;
                    break;
                case 1:
                    output.btint_a[index] = 1;
                    output.btint_b[index] = 1;
                    break;
                default:
                    break;
            }
            return output;
        }

        btint shift_left(int index) const {
            btint output;
            output.btint_a = btint_a;
            output.btint_b = btint_b;
            output.overflow = overflow;
            for(int i = 0; i < index; i++) {
                output.btint_a = output.btint_a << 1;
                output.btint_b = output.btint_b << 1;
                output = output.set_value(0, 0);
            }
            return output;
        }

        btint shift_right(int index) const {
            btint output;
            output.btint_a = btint_a;
            output.btint_b = btint_b;
            output.overflow = overflow;
            for(int i = 0; i < index; i++) {
                output.btint_a = output.btint_a >> 1;
                output.btint_b = output.btint_b >> 1;
                output = output.set_value(T - 1, 0);
            }
            return output;
        }

        int to_int(void) const {
            int output = 0;
            for(int i = T - 1; i >= 0; i--) {
                output = 2 * output + get_value(i);
            }
            return output;
        }

        bool operator==(const btint<T> &value) {
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

        friend inline void sc_trace(sc_trace_file *&file, const btint<T> &value, string &name) {
            sc_trace(file, value.btint_a, name + ".btint_a");
            sc_trace(file, value.btint_b, name + ".btint_b");
            for(int i = 0; i < T; i++) {
                sc_trace(file, value.btint_a[i], name + ".btint_a[" + to_string(i) + "]");
                sc_trace(file, value.btint_b[i], name + ".btint_b[" + to_string(i) + "]");
            }
        }
    };
#endif
