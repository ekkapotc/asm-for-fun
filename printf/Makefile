TARGET := printf
SRC := $(TARGET).asm
OBJ := $(SRC:.asm=.o)

CC := gcc
ASM := nasm

ASMFLAGS := -f elf64 -g -F dwarf
LDFLAGS := -g 

$(TARGET): $(OBJ)
	$(CC) -o $@ $< $(LDFLAGS) 

$(OBJ): $(SRC)
	$(ASM) $(ASMFLAGS) $<

.PHONY: all clean run

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(OBJ)

run: $(TARGET)
	./$(TARGET)

