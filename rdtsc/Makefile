TARGET := rdtsc
SRC := $(TARGET).cpp
OBJ := $(SRC:.cpp=.o)

CXX := g++
CXXFLAGS := -Wall -g -c
LDFLAGS :=

$(TARGET): $(OBJ)
	$(CXX) -o $@ $< $(LDFLAGS)

$(OBJ): $(SRC)
	$(CXX) $(CXXFLAGS) $<

.PHONY: all clean run

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(OBJ)

run: $(TARGET)
	./$(TARGET)
