/* Hello World program - Linux GCC*/

#include<stdio.h>
#include<stdlib.h>
#include<sys/types.h>

#define MAX_COUNT = 200
#define BUF_SIZE = 100

int main()
{

	pid_t pid;

	char *outputFilename = "output.txt";
	char ch;

	FILE *ifp, *ofp;

	pid = getpid();
	printf("\nParent process PID: %d", pid);

	fork();
	pid = getpid();

	printf("\nHello World!  My PID is: %d", pid);

	ifp = fopen("input.txt", "a");

	if (ifp == NULL){
		fprintf(stderr, "Can't open input file input.txt!\n");
		exit(1);
	}

	ofp = fopen(outputFilename, "a");

	if (ofp == NULL) {
		fprintf(stderr, "Can't open output file %s!\n",
        outputFilename);
		exit(1);
	}
l
	while (1) {
      ch = fgetc(ifp);

      if (ch == EOF)
         break;
      else
         putc(ch, ofp);
	}

	fprintf(ifp, "..appending text to INPUT file.");
	fprintf(ofp, "..appending text to OUTPUT file.");

	fclose(ifp);
	fclose(ofp);

	return 0;
}