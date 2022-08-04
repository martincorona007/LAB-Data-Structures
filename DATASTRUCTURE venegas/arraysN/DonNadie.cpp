
#include <iostream>
#include <cstdlib>
#include <stdio.h>
#include <ctime>
using namespace std;
int N,R,C,B,suma=0;
//int printd(int[][],int,int);
int print(int[],int);
//void print(int[][],int); ask


int main() {
srand((unsigned)time(NULL));
    int op=0,sum=0;
    int option=0;
        cout<<"\t\t\t\tMENU";
        cout<<"\n\t\t1. Crete Just Arrays";
        cout<<"\n\t\t2. Operations Arrays";
        cout<<"\n\t\t3. Operations Aleatory Array\n";
        cout << "opction: ";
         cin>>op;
    if(op==1) {

        cout << "\t\t\t\tJustArrays";
        cout << "\n\t\t\tMENU";
        cout << "\n\t\t1. Array unidimensinal";
        cout << "\n\t\t2. Array two-dimensinal";
        cout << "\n\t\t3. Array Three-dimensinal\n";
        cout << "opction: ";
        cin >> option;
        if (option == 1) {

            //system("cls");

            cout << "\t\t Array unidimensinal\n";
            cout << "Write the size: ";
            cin >> N;
            int V[N];
            for (int i = 0; i < N; ++i) {
                printf("Write the value: [%i] ", i);
                scanf("%i", &V[i]);

            }
            print(V, N);

        } else if (option == 2) {

            cout << "\t\t Array two-dimensional\n";
            cout << "Write the size ROW: ";
            cin >> R;
            cout << "Write the size COLUMN: ";
            cin >> C;

            int VV[R][C];

            for (int i = 0; i < R; i++) {
                for (int j = 0; j < C; j++) {

                    printf("Write the value for ROW: [%i] COLUMN [%i] ", i, j);
                    scanf("%i", &VV[i][j]);


                }
            }
            //print
            for (int ii = 0; ii < R; ++ii) {
                printf("\n");
                for (int jj = 0; jj < C; ++jj) {
                    printf("[%i]", VV[ii][jj]);
                }
            }


        } else if (option == 3) {
            cout << "\t\t Array Three-dimensional\n";
            cout << "Write the size ROW: ";
            cin >> R;
            cout << "Write the size COLUMN: ";
            cin >> C;
            cout << "Write the size BACKGROUND: ";
            cin >> B;
            int VVV[R][C][B];
            for (int i = 0; i < R; ++i) {
                for (int j = 0; j < C; ++j) {
                    for (int k = 0; k < B; ++k) {
                        printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] ", i, j, k);
                        scanf("%i", &VVV[i][j][k]);

                    }
                }
            }
            for (int ii = 0; ii < R; ++ii) {
                printf("\n");
                for (int jj = 0; jj < C; ++jj) {
                    for (int kk = 0; kk < B; ++kk) {
                        printf("[%i]", VVV[ii][jj][kk]);
                    }
                }
            }

        } else {
            printf("ERROR 404");
        }
/*HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH*/
    }else if(op==2){

        cout << "\t\t\t\tOperations Arrays";
        cout << "\n\t\t\tMENU";
        cout << "\n\t\t1. Array unidimensinal";
        cout << "\n\t\t2. Array two-dimensinal";
        cout << "\n\t\t3. Array Three-dimensinal\n";
        cout << "opction: ";
        cin >> option;
        if (option == 1) {

            //system("cls");

            cout << "\t\t Array unidimensinal\n";
            cout << "Write the size: ";
            cin >> N;
            int V[N];
            for (int i = 0; i < N; ++i) {
                printf("Write the value: [%i] ", i);
                scanf("%i", &V[i]);
                sum+=V[i];
            }
            print(V, N);
            printf("sum: %i",sum);
        } else if (option == 2) {
                    int ops;
                         cout << "\n\t\t2. Array two-dimensinal";
                        printf("\n\t\t1. Each element ");
                        printf("\n\t\t2. Matrix plus Matrix");
                        cout << "\nopction: ";
                        cin>>ops;
                    if(ops==1){
                        cout << "\n\t\t Array two-dimensional";
                        cout << "\n\t\t Each element \n";
                        cout << "Write the size ROW: ";
                        cin >> R;
                        cout << "Write the size COLUMN: ";
                        cin >> C;

                        int VV[R][C];

                        for (int i = 0; i < R; i++) {
                            for (int j = 0; j < C; j++) {

                                printf("Write the value for ROW: [%i] COLUMN [%i] ", i, j);
                                scanf("%i", &VV[i][j]);

                                sum+=VV[i][j];
                            }
                        }
                        //print
                        for (int ii = 0; ii < R; ++ii) {
                            printf("\n");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("[%i]", VV[ii][jj]);
                            }
                        }
                        printf("sum: %i",sum);

                    }else if(ops==2){
                        cout << "\n\t\t Array two-dimensional\n";
                        cout << "\n\t\t Matrix plus Matrixl\n";
                        cout << "Write the size ROW: ";
                        cin >> R;
                        cout << "Write the size COLUMN: ";
                        cin >> C;

                        int VV[R][C];
                        int VV2[R][C];
                        int res[R][C];
                        cout << "\t\t Matrix 1\n";
                        for (int i = 0; i < R; i++) {
                            for (int j = 0; j < C; j++) {

                                printf("Write the value for ROW: [%i] COLUMN [%i] ", i, j);
                                scanf("%i", &VV[i][j]);

                            }
                        }
                        cout << "\t\t Matrix 2\n";
                        for (int i = 0; i < R; i++) {
                            for (int j = 0; j < C; j++) {

                                printf("Write the value for ROW: [%i] COLUMN [%i] ", i, j);
                                scanf("%i", &VV2[i][j]);


                            }
                        }

                        //print
                        printf("\nMatrix 1           Matrix 2          Result\n");
                        for (int ii = 0; ii < R; ++ii) {
                            printf(" ");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("[%i]", VV[ii][jj]);

                            };
                            printf("         ");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("[%i]", VV2[ii][jj]);
                            };
                            printf("         ");
                            for (int jj = 0; jj < C; ++jj) {
                                res[ii][jj]=VV[ii][jj]+VV2[ii][jj];
                                printf("[%i]", res[ii][jj]);
                            };
                            printf("\n");
                        }



                    }


        } else if (option == 3) {

                        int opss;
                        cout << "\n\t\t3. Array Three-dimensinal";
                        printf("\n\t\t1. Each element ");
                        printf("\n\t\t2. Matrix plus Matrix");
                        cout << "\nopction: ";
                        cin>>opss;
                    if(opss==1){
                        cout << "\t\t Array Three-dimensional";
                        printf("\n\t\t1. Each element\n");
                        cout << "Write the size ROW: ";
                        cin >> R;
                        cout << "Write the size COLUMN: ";
                        cin >> C;
                        cout << "Write the size BACKGROUND: ";
                        cin >> B;
                        int VVV[R][C][B];
                        int VVV2[R][C][B];

                        cout << "\t\t Matrix 1\n";
                        for (int i = 0; i < R; ++i) {
                            for (int j = 0; j < C; ++j) {
                                for (int k = 0; k < B; ++k) {
                                    printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] ", i, j, k);
                                    scanf("%i", &VVV[i][j][k]);
                                sum+=VVV[i][j][k];
                                }
                            }
                        }
                        //print
                        printf("\nMatrix \n");
                        for (int ii = 0; ii < R; ++ii) {
                            printf(" ");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("    ");
                                for (int kk = 0; kk < B; ++kk) {
                                    printf("+[%i]+", VVV[ii][jj][kk]);
                                }

                            };



                            printf("\n");
                        }
                        printf("Sum %i",sum);

                    }else if(opss==2){
                        cout << "\t\t Array Three-dimensional";
                        printf("\n\t\t2. Matrix plus Matrix\n");
                        cout << "Write the size ROW: ";
                        cin >> R;
                        cout << "Write the size COLUMN: ";
                        cin >> C;
                        cout << "Write the size BACKGROUND: ";
                        cin >> B;
                        int VVV[R][C][B];
                        int VVV2[R][C][B];
                        int res[R][C][B];
                        cout << "\t\t Matrix 1\n";
                        for (int i = 0; i < R; ++i) {
                            for (int j = 0; j < C; ++j) {
                                for (int k = 0; k < B; ++k) {
                                    printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] ", i, j, k);
                                    scanf("%i", &VVV[i][j][k]);

                                }
                            }
                        }
                        cout << "\t\t Matrix 2\n";
                        for (int i = 0; i < R; ++i) {
                            for (int j = 0; j < C; ++j) {
                                for (int k = 0; k < B; ++k) {
                                    printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] ", i, j, k);
                                    scanf("%i", &VVV2[i][j][k]);

                                }
                            }
                        }
                        //print
                        printf("\nMatrix 1           Matrix 2          Result\n");
                        for (int ii = 0; ii < R; ++ii) {
                            printf(" ");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("         ");
                                for (int kk = 0; kk < B; ++kk) {
                                    printf("+[%i]+", VVV[ii][jj][kk]);
                                }

                            };
                            printf("         ");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("         ");
                                for (int kk = 0; kk <B ; ++kk) {
                                    printf("-[%i]-", VVV2[ii][jj][kk]);
                                }
                            };
                            printf("         ");
                            for (int jj = 0; jj < C; ++jj) {
                                printf("         ");
                                for (int kk = 0; kk <B ; ++kk) {
                                    res[ii][jj][kk]=VVV[ii][jj][kk]+VVV2[ii][jj][kk];
                                    printf("=[%i]=", res[ii][jj][kk]);
                                }
                            };

                            printf("\n");
                        }
                    } else{
                        printf("ERRROR 404");
                    }

        } else {
            printf("ERROR 404");
        }

    } else if(op==3){
        /*HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH*/
        cout << "\t\t\t\tOperations Aletory Arrays";
        cout << "\n\t\t\tMENU";
        cout << "\n\t\t1. Array unidimensinal";
        cout << "\n\t\t2. Array two-dimensinal";
        cout << "\n\t\t3. Array Three-dimensinal\n";
        cout << "opction: ";
        cin >> option;
        if (option == 1) {

            //system("cls");

            cout << "\t\t Array unidimensinal\n";
            cout << "Write the size: ";
            cin >> N;
            int V[N],*ptr=&V[0];
            for (int i = 0; i < N; ++i) {

                //scanf("%i", &V[i]);
                int data=rand()%100+1;
                printf("Write the value: [%i] \n", data);
                V[i]=data;
                //sum+=V[i];
                sum+=*(ptr+i);
            }
            print(V, N);
            printf("\nsum: %i",sum);
        } else if (option == 2) {
            int ops;
            cout << "\n\t\t Array two-dimensinal";
            printf("\n\t\t1. Each element ");
            printf("\n\t\t2. Matrix plus Matrix");
            cout << "\nopction: ";
            cin>>ops;
            if(ops==1){
                cout << "\n\t\t Array two-dimensional";
                cout << "\n\t\t Each element \n";
                cout << "Write the size ROW: ";
                cin >> R;
                cout << "Write the size COLUMN: ";
                cin >> C;
                int time=R+C;
                int VV[R][C],*ptr2=&VV[0][0],k;
                /*for(k=0;k<=time;k++){
                    int data=rand()%100+1;
                    printf("Write the value for ROW: [%i] COLUMN [%i] Value: [%i]\n", k, k,data);
                    VV[k][k]=data;
                    sum+=*(ptr2+k);
                }*/
                for (int i = 0; i < R; i++) {
                    for (int j = 0; j < C; j++) {

                        int data=rand()%100+1;
                        printf("Write the value for ROW: [%i] COLUMN [%i] Value: [%i]\n", i, j,data);
                        VV[i][j]=data;
                        /*if(i==1&&j==R-1){
                            VV[i][j]=VV[i-1][j]-VV[i-1][j+1];
                            printf("\nVV[%i]",VV[i][j]);
                        }*/
                        //scanf("%i", &VV[i][j]);

                        //sum=*(ptr2+i)+*(ptr2+j);
                        sum+=VV[i][j];
                    }
                }
                    int a=2,b=0;
                    for(int iii=0;iii<R;iii++){
                        for(int jjj=0;jjj<C;jjj++){

                            if(iii==a&&jjj==b){
                                VV[iii][jjj]=VV[iii-1][jjj]-VV[iii-1][jjj+1];
                                VV[iii][jjj]=VV[iii][jjj]*-1;
                                printf("\n<%iVV[%i]%i>",iii,VV[iii][jjj],jjj);
                                b++;
                                if(b==R-1){
                                    b=0;
                                    a++;
                                }
                            }

                        }

                    }

                //print
                for (int ii = 0; ii < R; ++ii) {
                    printf("\n");
                    for (int jj = 0; jj < C; ++jj) {
                        printf(" (%i<[%i]<%i) ",ii,VV[ii][jj],jj);
                    }
                }
                printf("\nsum: %i",sum);

            }else if(ops==2){
                cout << "\n\t\t Array two-dimensional\n";
                cout << "\n\t\t Matrix plus Matrixl\n";
                cout << "Write the size ROW: ";
                cin >> R;
                cout << "Write the size COLUMN: ";
                cin >> C;

                int VV[R][C];
                int VV2[R][C];
                int res[R][C];
                cout << "\t\t Matrix 1\n";
                for (int i = 0; i < R; i++) {
                    for (int j = 0; j < C; j++) {
                        int data=rand()%100+1;
                        printf("Write the value for ROW: [%i] COLUMN [%i] \n", i, j);
                        VV[i][j]=data;
                        //scanf("%i", &VV[i][j]);

                    }
                }
                cout << "\t\t Matrix 2\n";
                for (int i = 0; i < R; i++) {
                    for (int j = 0; j < C; j++) {
                        int data=rand()%100+1;
                        printf("Write the value for ROW: [%i] COLUMN [%i] \n", i, j);
                        VV2[i][j]=data;
                        //scanf("%i", &VV2[i][j]);


                    }
                }

                //print
                printf("\nMatrix 1           Matrix 2          Result\n");
                for (int ii = 0; ii < R; ++ii) {
                    printf(" ");
                    for (int jj = 0; jj < C; ++jj) {
                        printf("[%i]", VV[ii][jj]);

                    };
                    printf("         ");
                    for (int jj = 0; jj < C; ++jj) {
                        printf("[%i]", VV2[ii][jj]);
                    };
                    printf("         ");
                    for (int jj = 0; jj < C; ++jj) {
                        res[ii][jj]=VV[ii][jj]+VV2[ii][jj];
                        printf("[%i]", res[ii][jj]);
                    };
                    printf("\n");
                }



            }


        } else if (option == 3) {

            int opss;
            cout << "\n\t\t3. Array Three-dimensinal";
            printf("\n\t\t1. Each element ");
            printf("\n\t\t2. Matrix plus Matrix");
            cout << "\nopction: ";
            cin>>opss;
            if(opss==1){
                cout << "\t\t Array Three-dimensional";
                printf("\n\t\t1. Each element\n");
                cout << "Write the size ROW: ";
                cin >> R;
                cout << "Write the size COLUMN: ";
                cin >> C;
                cout << "Write the size BACKGROUND: ";
                cin >> B;
                int VVV[R][C][B];
                int VVV2[R][C][B];

                cout << "\t\t Matrix 1\n";
                for (int i = 0; i < R; ++i) {
                    for (int j = 0; j < C; ++j) {
                        for (int k = 0; k < B; ++k) {
                            int data=rand()%100+1;
                            printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] \n", i, j, k);
                            //scanf("%i", &VVV[i][j][k]);
                            VVV[i][j][k]=data;
                            sum+=VVV[i][j][k];
                        }
                    }
                }
                //print
                printf("\nMatrix \n");
                for (int ii = 0; ii < R; ++ii) {
                    printf(" ");
                    for (int jj = 0; jj < C; ++jj) {
                        printf("    ");
                        for (int kk = 0; kk < B; ++kk) {
                            printf("+[%i]+", VVV[ii][jj][kk]);
                        }

                    };



                    printf("\n");
                }
                printf("Sum %i",sum);

            }else if(opss==2){
                cout << "\t\t Array Three-dimensional";
                printf("\n\t\t2. Matrix plus Matrix\n");
                cout << "Write the size ROW: ";
                cin >> R;
                cout << "Write the size COLUMN: ";
                cin >> C;
                cout << "Write the size BACKGROUND: ";
                cin >> B;
                int VVV[R][C][B];
                int VVV2[R][C][B];
                int res[R][C][B];
                cout << "\t\t Matrix 1\n";
                for (int i = 0; i < R; ++i) {
                    for (int j = 0; j < C; ++j) {
                        for (int k = 0; k < B; ++k) {
                           int data=rand()%100+1;
                            printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] \n", i, j, k);
                            //scanf("%i", &VVV[i][j][k]);
                            VVV[i][j][k]=data;
                        }
                    }
                }
                cout << "\t\t Matrix 2\n";
                for (int i = 0; i < R; ++i) {
                    for (int j = 0; j < C; ++j) {
                        for (int k = 0; k < B; ++k) {
                            int data=rand()%100+1;
                            printf("Write the value for ROW: [%i] COLUMN [%i] BACKGROUND [%i] \n", i, j, k);
                            //scanf("%i", &VVV2[i][j][k]);
                            VVV2[i][j][k]=data;
                        }
                    }
                }
                //print
                printf("\nMatrix 1           Matrix 2          Result\n");
                for (int ii = 0; ii < R; ++ii) {
                    printf(" ");
                    for (int jj = 0; jj < C; ++jj) {
                        printf("         ");
                        for (int kk = 0; kk < B; ++kk) {
                            printf("+[%i]+", VVV[ii][jj][kk]);
                        }

                    };
                    printf("         ");
                    for (int jj = 0; jj < C; ++jj) {
                        printf("         ");
                        for (int kk = 0; kk <B ; ++kk) {
                            printf("-[%i]-", VVV2[ii][jj][kk]);
                        }
                    };
                    printf("         ");
                    for (int jj = 0; jj < C; ++jj) {
                        printf("         ");
                        for (int kk = 0; kk <B ; ++kk) {
                            res[ii][jj][kk]=VVV[ii][jj][kk]+VVV2[ii][jj][kk];
                            printf("=[%i]=", res[ii][jj][kk]);
                        }
                    };

                    printf("\n");
                }
            } else{
                printf("ERRROR 404");
            }

        } else {
            printf("ERROR 404");
        }
    } else{
        printf("ERROR 404");
    }






    /*int u;
    cout<<"Size of the array ";
    scanf("%i",&u);
    int k[u];
    int kk;
    for(int i=0;i<u;i++){
        cin>>kk;
        k[i]=kk;
       // do{
            printf("[%i]",k[i]);
        //}while (k[i]==u);
    }
    */




    return 0;
}
int print(int v[],int n){
    for (int i = 0; i < n; ++i) {
        printf("[%i]",v[i]);
    }
}

