#include "../hpp/reg_prod.hpp"
void reg_prod::get_prod() {
    reg_prod_a = reg_prod_a << 1;
    reg_prod_a[0] = prod_a.read()?1:0;
    reg_prod_b = reg_prod_b << 1;
    reg_prod_b[0] = prod_b.read()?1:0;
    count++;
    if(count == 8) {
        out_prod_a.write(reg_prod_a);
        out_prod_b.write(reg_prod_b);
        count = 0;
    }
}
