include config.mk

all:
	@gcc -o hinf src/hinf.c
	@nim -o=configure c src/configure.nim

installib:
	@nimble install ncurses

clean:
	@rm hinf && rm configure