CC = clang
CFLAGS = -Wall -Iinclude
LDFLAGS = -lm
TARGET = bin/main
SOURCEDIR = ./source
INCLUDEDIR = ./include
OBJFILES := $(shell find $(SOURCEDIR) -name '*.c')
HEADERS := $(shell find $(INCLUDEDIR) -name '*.h')

all: $(TARGET)


$(TARGET) : $(OBJFILES) $(HEADERS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

clean:
	rm -f $(OBJFILES) $(TARGET) *~