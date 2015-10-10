/* Hello World program Homework #3- Linux GCC*/

#include<stdio.h>
#include<stdlib.h>

int main()
{


	pid_t pid_parent, pid;
	int i;

	pid_parent = getpid();
	printf("\nParent process PID: %d\n", pid_parent);

	for (i = 0; i < 4; i++){
		//fork child process
		pid = fork();

		if (pid < 0){ // error
			printf(stderr, "Fork failed");
			exit(1);
		} else if (pid == 0){ //child
			printf("\nHello World!  I'm the CHILD!  My PID is: %d\n", getpid());
			execlp("/home/user/git/Operating-Systems/Homeworks/Homework2/Homework2Linux/Debug/Homework2Linux", "Homework2Linux", NULL);
		} else {
			wait(NULL);
		}

	}

	printf("\n\nHello World!  I'm the PARENT!  My PID is: %d\n", getpid());

	return(0);
}
