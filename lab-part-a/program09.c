#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main()
{
    int pid, ch;
    pid = fork();
    if (pid == 0)
    {
        printf("Child process id=%d\n", pid);
        printf("Parent process id=%d\n", getppid());
        execl("/bin/ls", "ls", "-l", NULL);
        printf("This will not be displayed at all");
    }
    else
    {
        wait(NULL);
        while (1)
        {
            printf("\nTo exit press 1:\n");
            scanf("%d", &ch);
            if (ch == 1)
                exit(0);
            else
                continue;
        }
    }

    return 0;
}
