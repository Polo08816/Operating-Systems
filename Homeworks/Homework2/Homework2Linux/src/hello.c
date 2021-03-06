/* Hello World program -Homework 2- Linux GCC*/

#include<stdio.h>
#include<stdlib.h>

int main()
{

	char *outputFilename = "output.txt";
	char ch;

	FILE *ifp, *ofp;

	printf("Hello World - Homework 2");

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
