#include <err.h>
#include <stdbool.h>
#include <stdlib.h>
#include <stdio.h>





int main(int argc, char *argv[]) {
 

//ouvrir le fichier CSV 

 FILE* fp = fopen("Dataset1.csv", "r");

  if (!fp){
        printf("Can't open file\n");
    } ;

fclose(fp);

}

