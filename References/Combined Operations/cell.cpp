#include "cell.hpp"

void sys_cell::func() {
    a_out.write(a_in.read());
    s_out.write(s_in.read());
    op_out.write(op_in.read());

    if (op_in.read() == 1) {
        if (s_mm.read()) {
            if (s_in.read()) {
                reg_u = c_in_u.read();
                reg_d = c_in_d.read() * a_in.read();
                c_out_u.write(c_in_u.read());
                c_out_d.write(c_in_d.read() * a_in.read());
            } else {
                if (c_in_u.read() == 0) {
                    c_out_u = -reg_u * a_in.read();
                    c_out_d = reg_d;
                } else if (a_in.read() == 0 || reg_u == 0) {
                    c_out_u = c_in_u.read();
                    c_out_d = c_in_d.read();
                } else {
                    c_out_u = c_in_u.read() * reg_d - reg_u * a_in.read() * c_in_d.read();
                    c_out_d = c_in_d.read() * reg_d;
                }
            }
        } else {
            c_out_u = c_in_u.read();
            c_out_d = c_in_d.read();
        }
    } else {
        if (s_mm.read()) {
            reg_u = a_in.read();
            c_out_u.write(0);
        } else {
            c_out_u.write(c_in_u.read() + reg_u * a_in.read());
        }
    }
}
