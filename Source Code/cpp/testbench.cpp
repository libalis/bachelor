#include "../hpp/testbench.hpp"

using namespace std;

template <size_t T>
void TESTBENCH<T>::source(void) {
    #ifdef INPUT_OUTPUT
        string line;
        if(lock) {
            lock--;
        } else if(!getline(input_dat, line)) {
            eof = 1;
        } else {
            multiply = 0;
            btint<T> btint_a, btint_b, *btint_c = &btint_a;
            bool isNegative = 0;
            #ifdef DECIMAL_INPUT
                int decimal_a = 0, decimal_b = 0, *decimal_c = &decimal_a;
            #endif
            for(int i = 0; i < line.length(); i++) {
                if((line[i] == '-' && i + 1 < line.length() && !isdigit(line[i + 1])) || line[i] == '+' || line[i] == '*') {
                    switch(line[i]) {
                        case '-':
                            adder_subtractor_subtract.write(1);
                            break;
                        case '+':
                            adder_subtractor_subtract.write(0);
                            break;
                        case '*':
                            multiply = 1;
                            lock = T + 1;
                            break;
                        default:
                            break;
                    }
                    #ifdef DECIMAL_INPUT
                        *btint_c = btint<T>(isNegative ? -*decimal_c : *decimal_c);
                        isNegative = 0;
                        decimal_c = &decimal_b;
                    #endif
                    btint_c = &btint_b;
                } else if(line[i] == '-' && i + 1 < line.length() && isdigit(line[i + 1])) {
                    isNegative = 1;
                } else if(isdigit(line[i])) {
                    #ifndef DECIMAL_INPUT
                        *btint_c = btint_c->shift_left(1);
                        btint_c->set_value(0, isNegative ? -stoi(string(1, line[i])) : stoi(string(1, line[i])));
                        isNegative = 0;
                    #else
                        *decimal_c = *decimal_c * 10 + stoi(string(1, line[i]));
                    #endif
                }
            }
            #ifdef DECIMAL_INPUT
                *btint_c = btint<T>(isNegative ? -*decimal_c : *decimal_c);
            #endif
            if(multiply) {
                multiplier_a.write(btint_a);
                multiplier_b.write(btint_b);
            } else {
                adder_subtractor_a.write(btint_a);
                adder_subtractor_b.write(btint_b);
            }
        }
    #else
        if(lock) {
            lock--;
        } else if(multiply) {
            eof = 1;
        } else {
            multiply = 1;
            lock = T + 1;
            multiplier_a.write(btint<T>(6));
            multiplier_b.write(btint<T>(7));
        }
    #endif
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    if(!lock) {
        if(sc_time_stamp() == SC_ZERO_TIME) {
            cout << "@" << sc_time_stamp() << endl;
        } else if(eof) {
            cout << "@" << sc_time_stamp() << endl;
            sc_stop();
        } else if(multiply) {
            cout << "@" << sc_time_stamp() << "\t" << multiplier_a.read() << " * " << multiplier_b.read() << " = " << multiplier_product.read() << endl;
            cout << "\t(" << multiplier_a.read().to_int() << " * " << multiplier_b.read().to_int() << " = " << multiplier_product.read().to_int() << ")" << endl;
            #ifdef INPUT_OUTPUT
                output_dat << multiplier_a.read() << " * " << multiplier_b.read() << " = " << multiplier_product.read() << endl;
                output_dat << "(" << multiplier_a.read().to_int() << " * " << multiplier_b.read().to_int() << " = " << multiplier_product.read().to_int() << ")" << endl;
            #endif
        } else {
            cout << "@" << sc_time_stamp() << "\t" << adder_subtractor_a.read() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read() << " = " << adder_subtractor_sum.read() << endl;
            cout << "\t(" << adder_subtractor_a.read().to_int() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read().to_int() << " = " << adder_subtractor_sum.read().to_int() << ")" << endl;
            #ifdef INPUT_OUTPUT
                output_dat << adder_subtractor_a.read() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read() << " = " << adder_subtractor_sum.read() << endl;
                output_dat << "(" << adder_subtractor_a.read().to_int() << (adder_subtractor_subtract.read() ? " - " : " + ") << adder_subtractor_b.read().to_int() << " = " << adder_subtractor_sum.read().to_int() << ")" << endl;
            #endif
        }
    }
}
