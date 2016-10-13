CC=clang++
CFLAGS=-std=c++14 -Wall -Wextra -Wpedantic -g -O3
PTHREAD=-pthread
SRC=src
BIN=bin
CP=cp -rf
RM=rm -rf

# The Cleaner
clean:
	@$(RM) $(BIN)/*

ch00: clean
	$(CC) $(CFLAGS) -o $(BIN)/HelloWorld $(SRC)/ch00/HelloWorld/main.cpp
