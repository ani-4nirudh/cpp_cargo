BUILD_DIR := build
TARGET := main

.PHONY: build run clean

build:
	cmake -S . -B $(BUILD_DIR) -DCMAKE_BUILD_TYPE=Debug
	cmake --build $(BUILD_DIR) --parallel

run:
	./$(BUILD_DIR)/$(TARGET)

clean:
	cmake --build $(BUILD_DIR) --target clean
