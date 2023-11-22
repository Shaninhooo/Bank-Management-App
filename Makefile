# Define the compiler to use
CC = g++

# Define the compiler flags
CFLAGS = -std=c++20 -Wall -Wextra

# Define the target folder
BIN = bin/main
SRC = src
LIB = lib
LIBCPP = libcpp

# Run functions clean, build and run in that order.
all: clean $(BIN) run

# Rule for cleaning the project
clean:
	@echo "--<=== Clearing terminal ===>--"
	clear
	@echo "--<=== Removing binary folder ===>---"
	rm -rf bin
	@echo

# Rule for building the project
$(BIN): $(wildcard *.cpp *.h)
	@echo "--<=== Creating binary folder ===>--"
	mkdir -p bin
	@echo

# g++   -Wall -Wextra -std=c++11 {ALL CPP FILES}   -o /bin/main.out
#	$(CC) $(CFLAGS)                $(wildcard *.cpp) -o $(BIN).out
	@echo "--<=== Compiling project ===>--"
	$(CC) $(CFLAGS) $(wildcard $(SRC)/*.cpp) -o $(BIN).out
	@echo


# Rule for running the program
run:
	@echo "--<=== Running program ===>--"
	./$(BIN).out
	@echo





















commit:
# Ask for commit message and commit project
	@echo
	@echo "--<=== Staging Files ===>---"
	git add -A
	@echo

	@echo "Enter commit message:"
	@read commitMessage; \
	echo; \
	echo "--<=== Commiting Project ===>---"; \
	echo git commit -m "$$commitMessage"; \
	git commit -m "$$commitMessage"; \

	@echo
	@echo "--<=== Pushing to Remote ===>---"
	git push origin main

	@echo "--<=== Project Pushed ===>---"
	@echo