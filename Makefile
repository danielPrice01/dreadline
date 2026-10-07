.PHONY: all clean

CC := gcc
CFLAGS := -g -Wall -Wextra -Wpedantic -Wconversion -Wsign-conversion -Wshadow -Wformat=2 -Wno-gnu

TARGET := example
SOURCE := $(TARGET).c

all: $(TARGET)

$(TARGET): $(SOURCE)
	$(CC) $(CFLAGS) -o $@ $(SOURCE)

clean:
	rm -rf $(TARGET)

