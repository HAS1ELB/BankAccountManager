SRC = ./src/main.cbl
OUT = ./build/main

all: build

build:
	cobc -x -o $(OUT) $(SRC)

clean:
	rm -f $(OUT)
