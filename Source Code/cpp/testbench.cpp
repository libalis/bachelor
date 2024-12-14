#include "../hpp/testbench.hpp"

using namespace std;

template <size_t T>
void TESTBENCH<T>::source(void) {
    string line;
    if(lock) {
        lock--;
    } else if(!getline(input_dat, line)) {
        eof = 1;
    } else {
        #ifndef DECIMAL_INPUT
            btint<T> a, b, *c = &a;
        #else
            int a = 0, b = 0, *c = &a;
            bool isNegative[2] = {0, 0}, *isNegativePointer = &isNegative[0];
        #endif
        for(int i = 0; i < line.length(); i++) {
            switch(line[i]) {
                case '-':
                    if(i + 1 < line.length() && isdigit(line[i + 1])) {
                        #ifndef DECIMAL_INPUT
                            *c = c->shift_left(1);
                            c->btint_a[0] = 0;
                            c->btint_b[0] = 0;
                            i++;
                        #else
                            *isNegativePointer = 1;
                        #endif
                    } else {
                        multiply = 0;
                        adder_subtractor_subtract.write(1);
                        c = &b;
                        #ifdef DECIMAL_INPUT
                            isNegativePointer = &isNegative[1];
                        #endif
                    }
                    break;
                case '+':
                    multiply = 0;
                    adder_subtractor_subtract.write(0);
                    c = &b;
                    #ifdef DECIMAL_INPUT
                        isNegativePointer = &isNegative[1];
                    #endif
                    break;
                case '*':
                    multiply = 1;
                    lock = T + 1;
                    c = &b;
                    #ifdef DECIMAL_INPUT
                        isNegativePointer = &isNegative[1];
                    #endif
                    break;
                #ifndef DECIMAL_INPUT
                    case '0':
                        *c = c->shift_left(1);
                        c->btint_a[0] = 0;
                        c->btint_b[0] = 1;
                        break;
                    case '1':
                        *c = c->shift_left(1);
                        c->btint_a[0] = 1;
                        c->btint_b[0] = 1;
                        break;
                #endif
                default:
                    #ifdef DECIMAL_INPUT
                        if(isdigit(line[i])) {
                            *c = *c * 10 + stoi(string(1, line[i]));
                        }
                    #endif
                    break;
            }
        }
        #ifndef DECIMAL_INPUT
            if(multiply) {
                multiplier_a.write(a);
                multiplier_b.write(b);
            } else {
                adder_subtractor_a.write(a);
                adder_subtractor_b.write(b);
            }
        #else
            if(multiply) {
                multiplier_a.write(btint<T>(isNegative[0] ? -a : a));
                multiplier_b.write(btint<T>(isNegative[1] ? -b : b));
            } else {
                adder_subtractor_a.write(btint<T>(isNegative[0] ? -a : a));
                adder_subtractor_b.write(btint<T>(isNegative[1] ? -b : b));
            }
        #endif
    }
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    if(lock) {
        return;
    } else if(sc_time_stamp() == SC_ZERO_TIME) {
        cout << "@" << sc_time_stamp() << endl;
    } else if(eof) {
        cout << "@" << sc_time_stamp() << endl;
        sc_stop();
    } else if(multiply){
        cout << "@" << sc_time_stamp() << "\t" << multiplier_a.read() << " * " << multiplier_b.read() << " = " << multiplier_product.read() << endl;
        output_dat << multiplier_a.read() << " * " << multiplier_b.read() << " = " << multiplier_product.read() << endl;
        cout << "\t(" << multiplier_a.read().to_int() << " * " << multiplier_b.read().to_int() << " = " << multiplier_product.read().to_int() << ")" << endl;
        output_dat << "(" << multiplier_a.read().to_int() << " * " << multiplier_b.read().to_int() << " = " << multiplier_product.read().to_int() << ")" << endl;
    } else {
        cout << "@" << sc_time_stamp() << "\t" << adder_subtractor_a.read() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read() << " = " << adder_subtractor_sum.read() << endl;
        output_dat << adder_subtractor_a.read() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read() << " = " << adder_subtractor_sum.read() << endl;
        cout << "\t(" << adder_subtractor_a.read().to_int() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read().to_int() << " = " << adder_subtractor_sum.read().to_int() << ")" << endl;
        output_dat << "(" << adder_subtractor_a.read().to_int() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read().to_int() << " = " << adder_subtractor_sum.read().to_int() << ")" << endl;
    }
}
