CC=g++
INC_DIR = headers
CFLAGS=-c -Wall -I$(INC_DIR)
LDFLAGS=
SRC=main.cpp
SOURCES=$(addprefix src/, $(SRC))
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=hello

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@

clear:
	rm -f src/*.o $(EXECUTABLE)
