TARGET := small
SRC := $(TARGET).asm
OBJ := $(SRC:.asm=.o)

LD := ld
ASM := nasm

ASMFLAGS := -f elf64

$(TARGET): $(OBJ)
	$(LD) -o $@ $<

$(OBJ): $(SRC)
	$(ASM) $(ASMFLAGS) $<

.PHONY: all clean run

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(OBJ)

run: $(TARGET)
	./$(TARGET)
