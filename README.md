# Operating Systems & Systems Programming (OSSP) Practicals

This repository contains all official lab practical implementations for Operating Systems and Systems Programming (OSSP).

## Repository Structure

```text
.
├── Practical-01/
│   └── prog1.c                # User Command Execution via fork(), execvp(), and wait()
├── Practical-02/
│   └── prog2.c                # File Copy using open(), read(), write(), and close() system calls
├── Practical-03/
│   └── prog3.c                # Process PID, PPID, and State Tracking via fork()
├── Practical-04/
│   └── prog4.c                # Multiple Child Process Synchronization using wait() and waitpid()
├── Practical-05/
│   ├── prog5.c                # Producer-Consumer IPC using Anonymous Pipe with throughput benchmarking
│   └── lsgrep.c               # Pipeline implementation equivalent to: ls -l | grep ".c"
├── Practical-06/
│   ├── prog6_fifo_server.c    # Client-Server Application Server using Named Pipes (FIFOs)
│   ├── prog6_fifo_client.c    # Client-Server Application Client using Named Pipes (FIFOs)
│   └── signal_handler.c       # POSIX Signal Handling using sigaction() (SIGINT, SIGTERM, SIGUSR1)
├── Practical-07/
│   ├── prog7_linuxaddr.c      # Linux Process Address Space Inspection (Text, Data, BSS, Heap, Stack)
│   └── memory_demo.c          # Memory Mappings Inspection program for /proc/<PID>/maps & pmap
├── Practical-08/
│   ├── prog8_dynamicmemory.c # Dynamic Memory Allocation (malloc, calloc, realloc, free) & Valgrind
│   └── cow_demo.c             # Copy-on-Write (COW) demonstration after fork()
├── Makefile                   # Automated build script for all practicals
└── README.md                  # Comprehensive documentation
```

---

## How to Build & Run Practicals

### Build All Practicals:
```bash
make
```

### Run Individual Practicals:

#### Practical 1: Command Execution
```bash
./Practical-01/prog1
```

#### Practical 2: System Call File Copy
```bash
./Practical-02/prog2 sample.txt copy.txt
```

#### Practical 3: Process PID & State Tracking
```bash
./Practical-03/prog3
```

#### Practical 4: Multi-child Synchronization
```bash
./Practical-04/prog4
```

#### Practical 5: Producer-Consumer Pipe & Pipeline Redirection
```bash
./Practical-05/prog5
./Practical-05/lsgrep
```

#### Practical 6: Named Pipes (FIFOs) & POSIX Signals
```bash
./Practical-06/prog6_fifo_server
./Practical-06/prog6_fifo_client
./Practical-06/signal_handler
```

#### Practical 7: Linux Process Address Space Analysis
```bash
./Practical-07/prog7_linuxaddr
./Practical-07/memory_demo
```

#### Practical 8: Dynamic Memory & Copy-on-Write (COW)
```bash
./Practical-08/prog8_dynamicmemory
valgrind --leak-check=full ./Practical-08/prog8_dynamicmemory

./Practical-08/cow_demo
```
