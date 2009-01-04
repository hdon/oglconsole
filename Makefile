CFLAGS:=$(CFLAGS) -ggdb3 -gstabs+ -Wall
LDFLAGS:=$(LDFLAGS)

all : oglconsole-sdl.o #oglconsole-glut.o

oglconsole-sdl.o : oglconsole.c oglconsole.h ConsoleFont.c
	$(CC) $(CFLAGS) -DOGLCONSOLE_USE_SDL $(shell sdl-config --cflags) -c $< -o $@

oglconsole-glut.o : oglconsole.c oglconsole.h ConsoleFont.c
	$(CC) $(CFLAGS) -DOGLCONSOLE_USE_GLUT -c $< -o $@

clean ::
	-rm -f oglconsole.o
