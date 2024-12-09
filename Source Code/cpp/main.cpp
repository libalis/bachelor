#include "../hpp/testbench.hpp"

int sc_main(int argc, char *argv[]) {
    TESTBENCH<TRITS> tb("tb");
    sc_start();
    return 0;
}
