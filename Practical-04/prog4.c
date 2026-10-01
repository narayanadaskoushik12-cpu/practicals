#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

#define NUM_CHILDREN 3

int main() {
    pid_t child_pid[NUM_CHILDREN];
    pid_t pid;
    int status;

    printf("Parent Process: PID = %d\n\n", getpid());

    /* Create multiple child processes */
    for (int i = 0; i < NUM_CHILDREN; i++) {
        pid = fork();
        if (pid < 0) {
            perror("fork failed");
            exit(1);
        }
        else if (pid == 0) {
            /* Child Process */
            printf("Child %d created with PID = %d (sleeping %d seconds)\n", i + 1, getpid(), (i + 1) * 2);
            sleep((i + 1) * 2);
            printf("Child PID = %d finished execution\n", getpid());
            exit(i + 1);
        }
        else {
            child_pid[i] = pid;
        }
    }

    printf("Created child PIDs: P1=%d, P2=%d, P3=%d\n", child_pid[0], child_pid[1], child_pid[2]);

    printf("\n--- Synchronizing using wait() ---\n");
    for (int i = 0; i < NUM_CHILDREN; i++) {
        pid_t wpid = wait(&status);
        if (WIFEXITED(status)) {
            printf("wait(): Collected child PID = %d with exit code = %d\n", wpid, WEXITSTATUS(status));
        }
    }

    printf("\nAll children collected cleanly.\n");
    return 0;
}
