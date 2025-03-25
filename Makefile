HAXE = ./env/haxe/haxe.exe
TARGET = haxe_lsp

all: help

help:
	@echo Available targets:
	@echo   all (default) - Display this help
	@echo   build         - Compile the source files and run the program
	@echo   clean         - Remove object files and the executable
	@echo   run           - Run the program

build:
	$(HAXE) --main Main.hx --cpp ./build/$(TARGET) && ./build/$(TARGET)

run:
	./build/$(TARGET)

clean:
	rm -rf ./build
	mkdir ./build

.PHONY: all help build clean run
