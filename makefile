CC = gcc
CFLAGS = -O3 -g
LDFLAGS = -O0 -g
MOCKA = -lcmocka
ISO = -std=c99
EXEC = batstat

all: $(EXEC) check

$(EXEC) : main.o batstat.o 
	$(CC) $(CFLAGS) -lm -o $@ main.o batstat.o


main.o : main.c
	 $(CC) $(CFLAGS) -o $@ -c $< 

batstat.o : batstat.c batstat.h
	 $(CC) $(CFLAGS) -o $@ -c $<

test_batstat.o : test_batstat.c 
	$(CC) $(CFLAGS) -o $@ -c $<

test_batstat : test_batstat.o 
	$(CC) $(ISO) $(LDFLAGS) -g -o $@ $< $(MOCKA)

check : test_batstat
	@ echo "Execution Test : "
	./test_batstat


clean : 
	rm -rf *.o all

PHONY : clean 
	
