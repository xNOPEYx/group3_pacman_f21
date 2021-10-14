CFLAGS = -I ./include
##LIB    = ./lib/fmod/libfmodex64.so
LFLAGS = -lrt -lX11 -lGLU -lGL -lm #-lXrandr

all: snake pakkuman

snake: snake.cpp log.cpp dfanucchi.cpp kwood.cpp anguyen2.cpp jsierradiaz.cpp
	g++ $(CFLAGS) snake.cpp log.cpp dfanucchi.cpp kwood.cpp anguyen2.cpp jsierradiaz.cpp libggfonts.a \
	/usr/lib/x86_64-linux-gnu/libopenal.so \
	/usr/lib/x86_64-linux-gnu/libalut.so \
	-Wall -Wextra $(LFLAGS) -o snake

pakkuman: pakkuman.cpp
	g++ pakkuman.cpp -Wall -Wextra -o paku-paku

clean:
	rm -f snake
	rm -f paku-paku
	rm -f *.o

