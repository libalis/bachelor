#include "../hpp/testbench.hpp"

template <size_t T>
void TESTBENCH<T>::source(void) {
    #ifdef INPUT_OUTPUT
        string line;
        int i = 0;
        while(i < X_DIMENSION) {
            getline(input_dat, line);
            char *token = strtok(&line[0], " \n");
            int j = 0;
            while(j < Y_DIMENSION) {
                #ifdef DECIMAL_INPUT
                    m<T>[i][j] = m<T>[i][j].from_int(stoi(string(token)));
                #else
                    m<T>[i][j] = m<T>[i][j].from_int(0);
                    bool isNegative;
                    for(char value : string(token)) {
                        switch(value) {
                            case '-':
                                isNegative = 1;
                                break;
                            default:
                                m<T>[i][j] = m<T>[i][j].shift_left(1);
                                m<T>[i][j] = m<T>[i][j].set_value(0, isNegative ? -stoi(string(1, value)) : stoi(string(1, value)));
                                isNegative = 0;
                                break;
                        }
                    }
                #endif
                token = strtok(NULL, " \n");
                j++;
            }
            i++;
        }
        getline(input_dat, line);
        getline(input_dat, line);
        char *token = strtok(&line[0], " \n");
        int j = 0;
        while(j < Y_DIMENSION) {
            #ifdef DECIMAL_INPUT
                v<T>[j] = v<T>[j].from_int(stoi(string(token)));
            #else
                v<T>[j] = v<T>[j].from_int(0);
                bool isNegative;
                for(char value : string(token)) {
                    switch(value) {
                        case '-':
                            isNegative = 1;
                            break;
                        default:
                            v<T>[j] = v<T>[j].shift_left(1);
                            v<T>[j] = v<T>[j].set_value(0, isNegative ? -stoi(string(1, value)) : stoi(string(1, value)));
                            isNegative = 0;
                            break;
                    }
                }
            #endif
            token = strtok(NULL, " \n");
            j++;
        }
    #endif
    testbench_valid.write(0);
    testbench_reset.write(1);
    wait();
    testbench_reset.write(0);
    wait();
    printf("Matrix:\n");
    for(int i = 0; i < X_DIMENSION; i++) {
        for(int j = 0; j < Y_DIMENSION; j++) {
            testbench_matrix[i][j].write(m<T>[i][j]);
            printf("%3d ", m<T>[i][j].to_int());
        }
        printf("\n");
    }
    printf("Vektor:\n");
    for(int i = 0; i < Y_DIMENSION; i++) {
        testbench_vector[i].write(v<T>[i]);
        printf("%3d ", v<T>[i].to_int());
        printf("\n");
    }
    testbench_valid.write(1);
}

template <size_t T>
void TESTBENCH<T>::sink(void) {
    btint<T> indata[X_DIMENSION];
    do {
        wait();
    } while(!testbench_done);
    wait();
    printf("Result:\n");
    for(int i = 0; i < X_DIMENSION; i++) {
        indata[i] = testbench_result[i].read();
        printf("%3d ", indata[i].to_int());
        printf("\n");
        #ifdef INPUT_OUTPUT
            output_dat << indata[i].to_int() << endl;
        #endif
    }
    sc_stop();
}
