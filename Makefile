CC = gcc
CFLAGS = -Wall -Wextra -g

all: p1 p2 p3 p4 p5_prog5 p5_lsgrep

p1: Practical-01/prog1.c
	$(CC) $(CFLAGS) Practical-01/prog1.c -o Practical-01/prog1

p2: Practical-02/prog2.c
	$(CC) $(CFLAGS) Practical-02/prog2.c -o Practical-02/prog2

p3: Practical-03/prog3.c
	$(CC) $(CFLAGS) Practical-03/prog3.c -o Practical-03/prog3

p4: Practical-04/prog4.c
	$(CC) $(CFLAGS) Practical-04/prog4.c -o Practical-04/prog4

p5_prog5: Practical-05/prog5.c
	$(CC) $(CFLAGS) Practical-05/prog5.c -o Practical-05/prog5

p5_lsgrep: Practical-05/lsgrep.c
	$(CC) $(CFLAGS) Practical-05/lsgrep.c -o Practical-05/lsgrep

clean:
	rm -f Practical-01/prog1 Practical-02/prog2 Practical-03/prog3 Practical-04/prog4 Practical-05/prog5 Practical-05/lsgrep
