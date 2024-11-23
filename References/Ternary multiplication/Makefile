PROGRAM := mul
CC := g++
LDFLAGS := -lsystemc
BUILD_DIR := ./build
CPP_DIR := ./cpp
HPP_DIR := ./hpp

all: $(BUILD_DIR)/$(PROGRAM)
	./$(BUILD_DIR)/$(PROGRAM)

clean:
	rm -rf $(BUILD_DIR)

$(BUILD_DIR)/$(PROGRAM): $(patsubst $(CPP_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(wildcard $(CPP_DIR)/*.cpp))
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/%.o: $(CPP_DIR)/%.cpp $(wildcard $(HPP_DIR)/%.hpp)
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ -c $< $(LDFLAGS)

.PHONY: all clean
