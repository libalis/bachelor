SYSTEMC_HOME = /home/lama/systemc-2.3.3
LIB_DIRS = $(SYSTEMC_HOME)/lib-linux64
INCLUDE_DIRS = -I. -I$(SYSTEMC_HOME)/include
HEADERS = ./hpp/cell.hpp ./hpp/const.hpp ./hpp/matrix_vector_control.hpp ./hpp/matrix_vector.hpp ./hpp/testbench.hpp
SOURCES = ./cpp/cell.cpp ./cpp/main.cpp ./cpp/matrix_vector_control.cpp ./cpp/matrix_vector.cpp ./cpp/testbench.cpp ../../Source\ Code/cpp/adder_subtractor.cpp ../../Source\ Code/cpp/fulladder.cpp ../../Source\ Code/cpp/multiplier.cpp ../../Source\ Code/cpp/shift_register.cpp
DEPENDENCIES = \
	Makefile \
	$(HEADERS) \
	$(SOURCES)
LIBS = -lsystemc -lstdc++ -lm
TESTS = main
all: $(TESTS)
	./$(TESTS)
$(TESTS): $(DEPENDENCIES)
	gcc -g -o $@ $(SOURCES) $(INCLUDE_DIRS) -L$(LIB_DIRS) -Wl,-rpath=$(SYSTEMC_HOME)/lib-linux64 $(LIBS) -DTRITS=8
clean:
	rm -f $(TESTS) *.vcd
