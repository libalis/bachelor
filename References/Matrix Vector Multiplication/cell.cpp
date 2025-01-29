#include "cell.hpp"

void sys_cell::func() {
	b_out.write( b_in.read() );
	if (write_in.read()) {
		reg = b_in.read();
		c_out.write(0);
	} else {
		c_out.write( c_in.read() + reg * b_in.read() );
	}
}

