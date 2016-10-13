CC=clang++
CFLAGS=-std=c++14 -Wall -Wextra -Wpedantic -g -O0
SRC=src
BIN=bin
RM=rm -rf

# The Cleaner
clean:
	@$(RM) $(BIN)/*

ch01: clean
	$(CC) $(CFLAGS) -o $(BIN)/01_helloworld $(SRC)/ch01/01_helloworld/main.cpp
