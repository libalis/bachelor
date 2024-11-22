#include "../hpp/tb.hpp"

void tb::source(void) {
    sc_int<16> tmp;

    inp.write(0);
    inp_vld.write(0);
    rst.write(1);
    wait();
    rst.write(0);
    wait();

    for(int i = 0; i < 64; i++) {
        if(i > 23 && i < 29)
            tmp = 256;
        else
            tmp = 0;
        inp_vld.write(1);
        inp.write(tmp);
        start_time[i] = sc_time_stamp();
        do {
            wait();
        } while (!inp_rdy.read());
        inp_vld.write(0);
    }

    wait(10000);
    printf("Hanging simulation stopped by TB source thread. Please check DUT module.\n");
    sc_stop();
}

void tb::sink(void) {
    sc_int<16> indata;

    sc_clock *clk_p = dynamic_cast<sc_clock*>(clk.get_interface());
    clock_period = clk_p->period();

    char output_file[256];
    snprintf(output_file, 256, "./dat/output.dat");
    outfp = fopen(output_file, "w");

    outp_rdy.write(0);

    double total_cycles = 0;

    for(int i = 0; i < 64; i++) {
        outp_rdy.write(1);
        do {
            wait();
        } while (!outp_vld.read());
        indata = outp.read();
        end_time[i] = sc_time_stamp();
        total_cycles += (end_time[i] - start_time[i]) / clock_period;
        outp_rdy.write(0);

        fprintf(outfp, "%d\n", (int)indata);
        cout << i << " :\t" << indata.to_int() << endl;
    }

    double total_throughput = (start_time[63] - start_time[0]) / clock_period;
    printf("Average latency is %g cycles.\n", (double)total_cycles / 64);
    printf("Average throughput is %g cycles per input.\n", (double)total_throughput / 63);

    fclose(outfp);
    sc_stop();
}
