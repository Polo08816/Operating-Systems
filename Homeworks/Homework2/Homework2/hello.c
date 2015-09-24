/* Hello World program */

#include<stdio.h>
#include<stdlib.h>

main()
{

	char *mode = "r";
	char *outputFilename = "output.txt";
	char ch;

    FILE *ifp, *ofp;
	
	printf("Hello World");		

	ifp = fopen("input.txt", "r");

	if (ifp == NULL){
		fprintf(stderr, "Can't open input file in.list!\n");
		exit(1);
	}

	ofp = fopen(outputFilename, "w");

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

	fclose(ifp);
	fclose(ofp);
}