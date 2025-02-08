TEST = main
HEADERS = ./hpp/cell.hpp ./hpp/const.hpp ./hpp/matrix_vector_control.hpp ./hpp/matrix_vector.hpp ./hpp/testbench.hpp
SOURCES = ./cpp/cell.cpp ./cpp/main.cpp ./cpp/matrix_vector_control.cpp ./cpp/matrix_vector.cpp ./cpp/testbench.cpp ../../Source\ Code/cpp/adder_subtractor.cpp ../../Source\ Code/cpp/fulladder.cpp ../../Source\ Code/cpp/multiplier.cpp ../../Source\ Code/cpp/shift_register.cpp
DEPENDENCIES = \
	Makefile \
	$(HEADERS) \
	$(SOURCES)
LIBRARIES = -lsystemc -lm

all: $(TEST)
	./$(TEST)

clean:
	rm -f $(TEST)

$(TEST): $(DEPENDENCIES)
	g++ -g -o $@ $(SOURCES) $(LIBRARIES)

.PHONY: all clean
