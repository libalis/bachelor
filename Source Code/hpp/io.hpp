#include <iomanip>

#ifdef INPUT_OUTPUT
    #ifndef IO_HPP
        #define IO_HPP

        #ifndef INPUT_DAT
            #define INPUT_DAT ("./dat/input.dat")
        #endif

        #ifndef OUTPUT_DAT
            #define OUTPUT_DAT ("./dat/output.dat")
        #endif

        #include <fstream>

        #include "const.hpp"

        template <size_t T>
        class IO {
        private:
            ifstream input_dat;
            ofstream output_dat;

        public:
            IO(void) {
                input_dat.open(INPUT_DAT);
                output_dat.open(OUTPUT_DAT);
            }

            ~IO(void) {
                input_dat.close();
                output_dat.close();
            }

        private:
            enum matrix {
                A,
                B
            };

            inline void read_lines(int lines) {
                string line;
                for(int i = 0; i < lines; i++) {
                    getline(input_dat, line);
                }
            }

            inline void read_matrix(int x, int y, enum matrix matrix) {
                btint<T> zero = btint<T>().from_int(0);
                string line;
                int i = 0;
                while(i < x) {
                    getline(input_dat, line);
                    char *token = strtok(&line[0], " \n");
                    int j = 0;
                    while(j < y) {
                        #ifdef DECIMAL_INPUT
                            if(matrix == A) {
                                m_a<T>[i][j] = btint<T>().from_int(stoi(string(token)));
                            } else {
                                m_b<T>[i][j] = btint<T>().from_int(stoi(string(token)));
                            }
                        #else
                            if(matrix == A) {
                                m_a<T>[i][j] = zero;
                            } else {
                                m_b<T>[i][j] = zero;
                            }
                            bool isNegative = 0;
                            for(char value : string(token)) {
                                switch(value) {
                                    case '-':
                                        isNegative = 1;
                                        break;
                                    default:
                                        if(matrix == A) {
                                            m_a<T>[i][j] = m_a<T>[i][j].shift_left(1);
                                            m_a<T>[i][j] = m_a<T>[i][j].set_value(0, isNegative ? -stoi(string(1, value)) : stoi(string(1, value)));
                                        } else {
                                            m_b<T>[i][j] = m_b<T>[i][j].shift_left(1);
                                            m_b<T>[i][j] = m_b<T>[i][j].set_value(0, isNegative ? -stoi(string(1, value)) : stoi(string(1, value)));
                                        }
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
            }

            inline void read_op(void) {
                string line;
                getline(input_dat, line);
                char *token = strtok(&line[0], " \n");
                if(strcmp(token, "MATRIX_INVERSION") == 0 || strcmp(token, "0") == 0) {
                    op = MATRIX_INVERSION;
                } else if(strcmp(token, "MATRIX_MATRIX_MULTIPLICATION") == 0 || strcmp(token, "1") == 0) {
                    op = MATRIX_MATRIX_MULTIPLICATION;
                } else {
                    op = MATRIX_VECTOR_MULTIPLICATION;
                }
            }

            inline void read_vector(int y) {
                btint<T> zero = btint<T>().from_int(0);
                string line;
                int i = 0;
                while(i < y) {
                    getline(input_dat, line);
                    char *token = strtok(&line[0], " \n");
                    #ifdef DECIMAL_INPUT
                        v<T>[i] = btint<T>().from_int(stoi(string(token)));
                    #else
                        v<T>[i] = zero;
                        bool isNegative = 0;
                        for(char value : string(token)) {
                            switch(value) {
                                case '-':
                                    isNegative = 1;
                                    break;
                                default:
                                    v<T>[i] = v<T>[i].shift_left(1);
                                    v<T>[i] = v<T>[i].set_value(0, isNegative ? -stoi(string(1, value)) : stoi(string(1, value)));
                                    isNegative = 0;
                                    break;
                            }
                        }
                    #endif
                    i++;
                }
            }

        public:
            inline void read(void) {
                read_lines(1);
                read_matrix(X_DIMENSION, Y_DIMENSION, A);
                read_lines(2);
                read_matrix(Y_DIMENSION, X_DIMENSION, B);
                read_lines(2);
                read_vector(Y_DIMENSION);
                read_lines(2);
                read_op();
            }

        private:
            inline void write_matrix(int x, int y, btint<T> matrix_u[X_DIMENSION][X_DIMENSION], btint<T> matrix_d[X_DIMENSION][X_DIMENSION]) {
                output_dat << "Result:" << endl;
                if(op == MATRIX_INVERSION) {
                    for(int i = 0; i < x; i++) {
                        for(int j = 0; j < y; j++) {
                            if(matrix_d[i][j].to_int() == 0) {
                                output_dat << fixed << setprecision(3) << setw(7) << 0.0f;
                            } else {
                                output_dat << fixed << setprecision(3) << setw(7) << (float)matrix_u[i][j].to_int() / (float)matrix_d[i][j].to_int();
                            }
                            if(j != y - 1) {
                                output_dat << " ";
                            }
                        }
                        output_dat << endl;
                    }
                    output_dat << endl << "Result U:" << endl;
                    for(int i = 0; i < x; i++) {
                        for(int j = 0; j < y; j++) {
                            output_dat << fixed << setprecision(3) << setw(7) << (float)matrix_u[i][j].to_int();
                            if(j != y - 1) {
                                output_dat << " ";
                            }
                        }
                        output_dat << endl;
                    }
                    output_dat << endl << "Result D:" << endl;
                    for(int i = 0; i < x; i++) {
                        for(int j = 0; j < y; j++) {
                            output_dat << fixed << setprecision(3) << setw(7) << (float)matrix_d[i][j].to_int();
                            if(j != y - 1) {
                                output_dat << " ";
                            }
                        }
                        output_dat << endl;
                    }
                } else {
                    for(int i = 0; i < x; i++) {
                        for(int j = 0; j < y; j++) {
                            output_dat << setw(3) << matrix_u[i][j].to_int();
                            if(j != y - 1) {
                                output_dat << " ";
                            }
                        }
                        output_dat << endl;
                    }
                }
            }

        public:
            inline void write(btint<T> matrix_u[X_DIMENSION][X_DIMENSION], btint<T> matrix_d[X_DIMENSION][X_DIMENSION]) {
                if(op == MATRIX_INVERSION) {
                    write_matrix(MIN_DIMENSION, MIN_DIMENSION, matrix_u, matrix_d);
                } else if(op == MATRIX_MATRIX_MULTIPLICATION) {
                    write_matrix(X_DIMENSION, X_DIMENSION, matrix_u, matrix_d);
                } else {
                    write_matrix(X_DIMENSION, 1, matrix_u, matrix_d);
                }
            }
        };
        template class IO<TRITS>;
    #endif
#endif
