SYSTEMC_HOME=/home/lama/systemc-2.3.3
LIB_DIRS= $(SYSTEMC_HOME)/lib-linux64
INCLUDE_DIRS= -I. -I$(SYSTEMC_HOME)/include

HEADERS= cell.hpp const.hpp control.hpp kombi.hpp tb.hpp

SOURCES= cell.cpp main.cpp control.cpp kombi.cpp tb.cpp ../../Source\ Code/cpp/adder_subtractor.cpp ../../Source\ Code/cpp/fulladder.cpp ../../Source\ Code/cpp/multiplier.cpp ../../Source\ Code/cpp/shift_register.cpp

DEPENDENCIES= \
	Makefile \
	$(HEADERS) \
	$(SOURCES)

LIBS= -lsystemc -lstdc++ -lm

TESTS= main

all: $(TESTS)
	./$(TESTS)

$(TESTS): $(DEPENDENCIES)
	gcc -g -o $@ $(SOURCES) $(INCLUDE_DIRS) -L$(LIB_DIRS) -Wl,-rpath=$(SYSTEMC_HOME)/lib-linux64 $(LIBS)

clean:
	rm -f $(TESTS) *.vcd
