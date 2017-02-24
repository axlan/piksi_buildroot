TARGET=zmq_beacon
SOURCES=zmq_beacon.c
LIBS=-lczmq
CFLAGS=-std=gnu11

CROSS=

CC=$(CROSS)gcc

all: program
program: $(TARGET)

$(TARGET): $(SOURCES)
	$(CC) $(CFLAGS) -o $(TARGET) $(SOURCES) $(LIBS)

clean:
	rm -rf $(TARGET)
