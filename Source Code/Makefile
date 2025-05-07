PROGRAM := bachelor
CC := g++
CFLAGS := -g -DINPUT_OUTPUT -DDECIMAL_INPUT -DINPUT_DAT=\"./dat/decimal_input.dat\"
LDFLAGS := -lsystemc
BUILD_DIR := ./build
CPP_DIR := ./cpp
DAT_DIR := ./dat
HPP_DIR := ./hpp

all: $(BUILD_DIR)/$(PROGRAM)
	$(BUILD_DIR)/$(PROGRAM)
	@make check

clean:
	rm -rf $(BUILD_DIR)

check:
	@echo "********************************"
	@if diff -w $(DAT_DIR)/output.dat $(DAT_DIR)/reference_output.dat; then \
	    echo -e "\033[32m\tSIMULATION PASSED\033[0m"; \
	else \
	    echo -e "\033[31m\tSIMULATION FAILED\033[0m"; \
	fi
	@echo "********************************"

config:
	sh/config.sh

$(BUILD_DIR)/$(PROGRAM): $(patsubst $(CPP_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(wildcard $(CPP_DIR)/*.cpp))
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/%.o: $(CPP_DIR)/%.cpp $(wildcard $(HPP_DIR)/%.hpp)
	mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -o $@ -c $< $(LDFLAGS)

.PHONY: all clean check config
