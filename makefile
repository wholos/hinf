include config.mk

all: c nim

c:
	@gcc -o hinf src/hinf.c

nim:
	@nim -o=configures c src/configure.nim

installib:
	@nimble install ncurses

clean:
	@rm hinf

configure: nim
	@./configures
	@rm configures