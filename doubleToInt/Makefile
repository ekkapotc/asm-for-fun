TARGET := main
SRC := $(wildcard *.cpp)
OBJ := $(SRC:.cpp=.o)

CXX := g++
CXXFLAGS := -Wall -g -O0
LDFLAGS :=

.PHONY: all clean run

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^ $(LDFLAGS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $<

all: $(TARGET)

clean:
	rm -rf $(TARGET) $(OBJ)

run: $(TARGET)
	./$(TARGET)
