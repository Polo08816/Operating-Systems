/* Hello World program */

#include<stdio.h>
#include<stdlib.h>

main()
{
    FILE *ifp, *ofp;
	
	printf("Hello World");	

	char *mode = "r";
	char outputFilename[] = "out.list";

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

	fclose(ifp);
	fclose(ofp);
}