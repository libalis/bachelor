#include "../hpp/testbench.hpp"

int sc_main(int argc, char *argv[]) {
    TESTBENCH<TRITS> testbench("testbench");
    sc_start();
    return 0;
}
