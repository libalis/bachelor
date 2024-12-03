#include "../hpp/testbench.hpp"

int sc_main(int argc, char *argv[]) {
    TESTBENCH<TRITS> tb("tb");
    cout << "@" << sc_time_stamp() << endl;
    sc_start();
    return 0;
}
