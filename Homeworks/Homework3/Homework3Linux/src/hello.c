/* Hello World program Homework #3- Linux GCC*/

#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>
#include<sys/wait.h>

/*
 * How to create multiple child processes
 * http://stackoverflow.com/questions/10909011/how-to-use-fork-to-create-only-2-child-processes
 * http://www.linuxquestions.org/questions/programming-9/create-n-child-processes-fork-629832/
 *
 * How to make the parent wait on the child process
 * http://stackoverflow.com/questions/19099663/how-to-correctly-use-fork-exec-wait
 */

int main()
{


	pid_t pid_parent;
	int i;

	pid_parent = getpid();
	printf("\nParent process PID: %d\n", pid_parent);

	for (i = 0; i < 4; i++){
		//fork child process
		pid_t pid = fork();

		if (pid < 0){ // error
			printf(stderr, "Fork failed");
			exit(1);
		} else if (pid == 0){ //child
			printf("\nHello World!  I'm the CHILD!  My PID is: %d\n", getpid());
			exit(0);
		} else {

		}

		wait(NULL);

	}


	printf("\nHello World!  I'm the PARENT!  My PID is: %d\n", getpid());

	exit(EXIT_SUCCESS);
}
