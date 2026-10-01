#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <stdlib.h>

int main() {
    pid_t pid;

    printf("Initial State:\n");
    printf("Process PID  : %d\n", getpid());
    printf("Parent PPID  : %d\n", getppid());
    printf("Process State: Running\n\n");

    pid = fork();

    if (pid < 0) {
        perror("fork failed");
        exit(1);
    }
    else if (pid == 0) {
        /* Child Process */
        printf("Child Process:\n");
        printf("Child PID    : %d\n", getpid());
        printf("Parent PPID  : %d\n", getppid());
        printf("Child State  : Running\n");
        sleep(1);
        printf("Child State  : Exiting...\n");
        exit(0);
    }
    else {
        /* Parent Process */
        printf("Parent Process:\n");
        printf("Parent PID   : %d\n", getpid());
        printf("Child PID    : %d\n", pid);
        printf("Parent State : Waiting for Child...\n");
        wait(NULL);
        printf("Parent State : Child finished, Parent exiting...\n");
    }

    return 0;
}
