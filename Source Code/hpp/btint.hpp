#ifndef BTINT_HPP
    #define BTINT_HPP

    #define TRITS (4)

    #include <systemc.h>

    template <size_t T>
    struct btint {
        bool btint_a[T];
        bool btint_b[T];

        btint() {
            for (int i = 0; i < T; ++i) {
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
    };

    template <size_t T>
    std::ostream &operator<<(std::ostream &os, const btint<T> &value) {
        for(int i = T - 1; i >= 0; i--) {
            os << value.btint_a[i] + value.btint_b[i] - 1;
        }
        return os;
    }

    template <size_t T>
    void sc_trace(sc_trace_file *&file, const btint<T> &value, std::string &name) {
        for(int i = 0; i < T; i++) {
            sc_trace(file, value.btint_a[i], name + ".btint_a[" + std::to_string(i) + "]");
            sc_trace(file, value.btint_b[i], name + ".btint_b[" + std::to_string(i) + "]");
        }
    }
#endif
