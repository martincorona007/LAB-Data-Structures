#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <iostream>
#define MAX_LINES 1150
void copyright(FILE*,FILE*);
int main()  {

FILE* fileOriginal;
FILE* fileDestino;
FILE* backup;

    char* buffer;
    char partes[80];
    char nameDest[10],nameDest2[10];
    char nameOriginal[]="hola.txt";
    char texto[MAX_LINES];
    long longitud;
    long cantidad;
    int nPartes=4;


        fileOriginal=fopen(nameOriginal,"rb");
            if(fileOriginal==NULL){
                std::cout<<"File dosen't exits";
            }
        strcpy(nameDest2,nameOriginal);

/*
        fileDestino=fopen("copy.txt","wb");
            if(fileDestino==NULL){
                std::cout<<"file d dosen't exits";
            }
*/
        fseek(fileOriginal,0,SEEK_END);
        longitud=ftell(fileOriginal);
        fseek(fileOriginal,0,SEEK_SET);
/*
        fileDestino=fopen("copytt.txt","wb");
            if(fileDestino==NULL){
                std::cout<<"file d dosen't exits";
            }
*/
        buffer=(char*)malloc(longitud);
            if(buffer==NULL){
                std::cout<<"not reserve all memory";
            }
        for(int i=0;i<nPartes;i++){
            sprintf(partes,".00%i",i);//format to print

            strcat(partes,nameDest2);//contatenar
                fileDestino=fopen(partes,"wb");
                    if(fileDestino==NULL){

                     std::cout<<"file d dosen't exits";
                }
            fseek(fileOriginal,i*longitud/nPartes,SEEK_SET);
            cantidad=fread(buffer,1,longitud/nPartes,fileOriginal);
            fwrite(buffer,1,cantidad,fileDestino);
            if(cantidad!=longitud/nPartes){
                printf("error 4004 ");
                //strcpy(nameDest2,nameOriginal);
            }

        }
///////////////////////////////////////////////**/////////////////////////////////

                   for(int i=0;i<nPartes;i++){
              sprintf(partes,".00%i",i);
              strcat(partes,nameDest2);
              fileOriginal=fopen("hola.txt","rb");
              backup=fopen("Backup.txt","wb");
              if(fileOriginal==NULL){
                std::cout<<"error file d";
              }
              if(backup==NULL){
                std::cout<<"error file b";
              }
              while(feof(fileOriginal)==0){
                fgets(texto,1140,fileOriginal);
                fputs(texto,backup);
              }
          }


      /* for(int i=0;i<nPartes;i++){
            sprintf(partes,".00%i",i);
            strcat(partes,nameDest2);
            backup=fopen("bakcup.txt","wb");
            fileDestino=fopen(partes,"rb");


            if(fileDestino==NULL||backup==NULL){
                std::cout<<"files d and b don't exits";
            }
        char cad[MAX_LINES];
        while(!feof(fileDestino)){
            fgets(cad,MAX_LINES,fileDestino);
            if(!feof(fileDestino)) fputs(cad,backup);
        }
            //fprintf(backup,"BACKUP: ",fileDestino);
    }
*/


        fclose(fileOriginal);
        fclose(fileDestino);
        fclose(backup);




    return 0;
}

void copyright(FILE* f1,FILE* f2){

    char cad[MAX_LINES];
        while(!feof(f1)){
            fgets(cad,MAX_LINES,f1);
            if(!feof(f1)) fputs(cad,f2);
        }
}
