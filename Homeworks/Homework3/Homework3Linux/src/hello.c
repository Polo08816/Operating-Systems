/* Hello World program - Linux GCC*/

#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>
#include<unistd.h>

#define MAX_COUNT = 200
#define BUF_SIZE = 100

/*
 * How to create multiple child processes
 * http://stackoverflow.com/questions/10909011/how-to-use-fork-to-create-only-2-child-processes
 *
 * How to make the parent wait on the child process
 * http://stackoverflow.com/questions/19099663/how-to-correctly-use-fork-exec-wait
 */

int main()
{

	pid_t pid, pid_parent, pid_child;

//	char *outputFilename = "output.txt";
//	char ch;
//
//	FILE *ifp, *ofp;

	pid = getpid();
	printf("\nParent process PID: %d", pid);
	printf("\nClearing buffer\n");

	execlp("Homework3Linux", NULL);

	pid_child = fork();
	pid_parent = getppid();

	printf("\nHello World!  My PID is: %d\n", pid_child);
	printf("\nHello World!  My parent PID is: %d\n", pid_parent);



//	ifp = fopen("input.txt", "a");
//
//	if (ifp == NULL){
//		fprintf(stderr, "Can't open input file input.txt!\n");
//		exit(1);
//	}
//
//	ofp = fopen(outputFilename, "a");
//
//	if (ofp == NULL) {
//		fprintf(stderr, "Can't open output file %s!\n",
//        outputFilename);
//		exit(1);
//	}
//
//	while (1) {
//      ch = fgetc(ifp);
//
//      if (ch == EOF)
//         break;
//      else
//         putc(ch, ofp);
//	}
//
//	fprintf(ifp, "..appending text to INPUT file.");
//	fprintf(ofp, "..appending text to OUTPUT file.");
//
//	fclose(ifp);
//	fclose(ofp);

	return 0;
}
