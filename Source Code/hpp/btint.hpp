#ifndef BTINT_HPP
    #define BTINT_HPP

    #ifndef TRITS
        #define TRITS (64)
    #endif

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

        bool operator==(const btint<T> &rhs) const {
            for(int i = 0; i < T; i++) {
                if(btint_a[i] != rhs.btint_a[i] || btint_b[i] != rhs.btint_b[i]) {
                    return false;
                }
            }
            return true;
        }

        int to_int() const {
            int value = 0;
            for(int i = T - 1; i >= 0; i--) {
                value = value * 2 + btint_a[i] + btint_b[i] - 1;
            }
            return value;
        }

        void shift_left(int index) {
            for(int i = 0; i < index; i++) {
                for(int j = T - 1; j > 0; j--) {
                    btint_a[j] = btint_a[j - 1];
                    btint_b[j] = btint_b[j - 1];
                }
                btint_a[0] = 0;
                btint_b[0] = 1;
            }
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
