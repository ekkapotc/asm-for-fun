# List of programs
TARGET := spawn
SRC := $(TARGET).asm
OBJ := $(TARGET).o

# Tools and flags
ASM      := nasm
ASMFLAGS := -f elf64 -g -F dwarf
LD       := ld
LDFLAGS  :=

# Default target: build all
all: $(TARGETS)


$(OBJ): $(SRC)
	$(ASM) $(ASMFLAGS) $< -o $@

$(TARGET): $(OBJ)
	$(LD) -o $@ $< $(LDFLAGS)

# Clean up
.PHONY: all clean run

clean:
	rm -f $(TARGET) $(OBJ)

run: $(TARGET)
	./$(TARGET)

