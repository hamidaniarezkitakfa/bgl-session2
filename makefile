CC = gcc
CFLAGS = -O3 -g
LDFLAGS = -O0 -g
MOCKA = -lcmocka
ISO = -std=c99
EXEC = batstat

all: $(EXEC)

$(EXEC) : main.o batstat.o 
	$(CC) $(CFLAGS) -lm -o $@ main.o batstat.o


main.o : main.c
	 $(CC) $(CFLAGS) -o $@ -c $< 

batstat.o : batstat.c 
	 $(CC) $(CFLAGS) -o $@ -c $<


clean : 
	rm -rf *.o all

PHONY : clean 
	
