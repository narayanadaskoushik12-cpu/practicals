# Operating Systems & Systems Programming (OSSP) Practicals

This repository contains all official lab practical implementations for Operating Systems and Systems Programming (OSSP).

## Repository Structure

```text
.
├── Practical-01/
│   └── prog1.c        # User Command Execution via fork(), execvp(), and wait()
├── Practical-02/
│   └── prog2.c        # File Copy using open(), read(), write(), and close() system calls
├── Practical-03/
│   └── prog3.c        # Process PID, PPID, and State Tracking via fork()
├── Practical-04/
│   └── prog4.c        # Multiple Child Process Synchronization using wait() and waitpid()
├── Practical-05/
│   ├── prog5.c        # Producer-Consumer IPC using Anonymous Pipe with throughput benchmarking
│   └── lsgrep.c       # Pipeline implementation equivalent to: ls -l | grep ".c"
├── Makefile           # Automated build script for all practicals
└── README.md          # Comprehensive documentation
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
# Input: date (or any Linux command)
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
