CC = gcc
CFLAGS = -Wall -Wextra -g

all: p1 p2 p3 p4 p5_prog5 p5_lsgrep p6_server p6_client p6_signal

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

p6_server: Practical-06/prog6_fifo_server.c
	$(CC) $(CFLAGS) Practical-06/prog6_fifo_server.c -o Practical-06/prog6_fifo_server

p6_client: Practical-06/prog6_fifo_client.c
	$(CC) $(CFLAGS) Practical-06/prog6_fifo_client.c -o Practical-06/prog6_fifo_client

p6_signal: Practical-06/signal_handler.c
	$(CC) $(CFLAGS) Practical-06/signal_handler.c -o Practical-06/signal_handler

clean:
	rm -f Practical-01/prog1 Practical-02/prog2 Practical-03/prog3 Practical-04/prog4 Practical-05/prog5 Practical-05/lsgrep Practical-06/prog6_fifo_server Practical-06/prog6_fifo_client Practical-06/signal_handler
