#P=main
OBJECTS=
# Add -Woverride-init when using -Wextra and default arguments via macros
CFLAGS=-g -pedantic -gdwarf-2 -g3 -Wall -O0
CPPFLAGS=-I ~/.local/include
LDFLAGS=-L ~/.local/lib -Wl,-rpath=/home/tyler/.local/lib
LDLIBS=
CC=gcc

$(P): $(OBJECTS)

clean: 
	-rm *.o

run: $(P)
	./$(P) $(PARGS)
