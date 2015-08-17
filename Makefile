CFLAGS = -O2 -Wall -Wextra

robots:		robots.o
		$(CC) robots.c -o robots -lncurses

install:	robots
		install robots.6 /usr/share/man/man6/robots.6
		install robots /usr/games/robots
		touch /var/games/robots_hof
		touch /var/games/robots_tmp

clean:
		$(RM) robots robots.o

lint:
		lint -phbxac robots.c -lcurses -ltermcap > linterrs
