ed:
	cc -std=c99 -Wall -pedantic -D_DEFAULT_SOURCE -D_BSD_SOURCE -D_XOPEN_SOURCE=700 -D_FILE_OFFSET_BITS=64 -o ed.o -c ed.c
	cc -s -o ed ed.o libutf.a libutil.a
install:
	cp ed /usr/local/bin/
	cp ed.1 /usr/local/share/man/man1/
clean:
	rm ed
	rm ed.o
