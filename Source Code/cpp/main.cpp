#include <systemc.h>

#include "../hpp/main.hpp"

int sc_main(int argc, char *argv[]) {
    MAIN main("main");
    cout << "@" << sc_time_stamp() << endl;
    sc_start();
    return 0;
}
