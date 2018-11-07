#
# Makefile for pong, the vulnerable version of ping
#

#
# CC determines which compiler to use. You can include extra flags
# here as well. No stack protection is usually the default.
#
# CC = gcc -fno-stack-protector
# CC = gcc -fstack-protector

CC = gcc -fno-stack-protector

#
# Compiler flags. You shouldn't need to change these at all
#
# -D_GNU_SOURCE				Used by getopt
# -O0					Turn off optimization
# -mpreferred-stack-alignment=2		Disable 16-byte stack alignment
# -Wstrict-prototypes -Wall -W		Lotsa warnings
# -Iinclude-glibc			Extra include file directory
# -include include-glibc/glibc-bugs.h	Extra include file
#
# The reason we disable 16-byte stack alignment, which is normally not
# dangerous at all, is to make the textbook version of the exploit work.
# With 16-byte stack alignment on, gcc manages the stack a little
# differently. It is still exploitable, but it is a little trickier.
#

CFLAGS=-D_GNU_SOURCE -O0 -mpreferred-stack-boundary=2 -Wstrict-prototypes -Wall -W -g -Iinclude-glibc -include include-glibc/glibc-bugs.h

pong: Makefile ping.o ping_common.o
	$(CC) -o pong ping.o ping_common.o

clean:
	rm -f ping.o ping_common.o pong

install: pong
	cp pong /bin/pong
	chown root:root /bin/pong
	chmod 755 /bin/pong
	chmod +s /bin/pong

ping.o ping_common.o: Makefile ping_common.h
