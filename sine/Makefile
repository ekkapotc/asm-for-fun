TARGET := main
SRC := $(TARGET).cpp
OBJ := $(TARGET).o

CXX := g++
CXXFLAGS := -Wall -g -O0
LDFLAGS :=

.PHOBY: all clean run

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)

$(OBJ): $(SRC)
	$(CXX) $(CXXFLAGS) -c $^

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(OBJ)

run: $(TARGET)
	./$(TARGET)
