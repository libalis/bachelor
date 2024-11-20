PROGRAM := sata
CC := g++
LDFLAGS := -lsystemc
BUILD_DIR := ./build
C_DIR := ./cpp
H_DIR := ./hpp

all: $(BUILD_DIR)/$(PROGRAM)

clean:
	rm -rf $(BUILD_DIR)

$(BUILD_DIR)/$(PROGRAM): $(patsubst $(C_DIR)/%.cpp, $(BUILD_DIR)/%.o, $(wildcard $(C_DIR)/*.cpp))
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ $^ $(LDFLAGS)

$(BUILD_DIR)/%.o: $(C_DIR)/%.cpp $(H_DIR)/%.hpp
	mkdir -p $(BUILD_DIR)
	$(CC) -o $@ -c $< $(LDFLAGS)

.PHONY: all clean
