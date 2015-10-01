/* Hello World program */

#include<stdio.h>
#include<stdlib.h>

int main()
{

//	char *outputFilename = "output.txt";
	char ch;

//    FILE *ifp, *ofp;
	FILE *ifp;

	printf("Hello World");

	ifp = fopen("input.txt", "a");

	if (ifp == NULL){
		fprintf(stderr, "Can't open input file input.txt!\n");
		exit(1);
	}

//	ofp = fopen(outputFilename, "a");
//
//	if (ofp == NULL) {
//		fprintf(stderr, "Can't open output file %s!\n",
//        outputFilename);
//		exit(1);
//	}

	while (1) {
      ch = fgetc(ifp);

      if (ch == EOF)
         break;
      else
         putc(ch, ifp);
	}

	fclose(ifp);
	//fclose(ofp);

	return 0;
}
