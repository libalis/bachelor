PROGRAM := sata
CC := g++
LDFLAGS := -lsystemc
BUILD_DIR := ./build
CPP_DIR := ./cpp
DAT_DIR := ./dat
HPP_DIR := ./hpp

all: $(BUILD_DIR)/$(PROGRAM)

clean:
	rm -rf $(BUILD_DIR)

check:
	@echo "********************************"
	@if diff -w $(DAT_DIR)/ref_output.dat $(DAT_DIR)/output.dat; then \
		echo -e "\tSIMULATION PASSED"; \
	else \
		echo -e "\tSIMULATION FAILED"; \
	fi
	@echo "********************************"

$(BUILD_DIR)/$(PROGRAM): $(patsubst $(CPP_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(wildcard $(CPP_DIR)/*.cpp))
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/%.o: $(CPP_DIR)/%.cpp $(wildcard $(HPP_DIR)/%.hpp)
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ -c $< $(LDFLAGS)

.PHONY: all clean check
