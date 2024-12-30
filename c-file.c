#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(int arr ,int * p2);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int arr[10]={-2,22,14,-5,-6,9,-4,-3,-34,-11};
    int num=0;
    printf( " ARRAY IS : \n");
getch();

    for(int i=0;i<10;i++){
        printf("%d",arr[i]);
        printf(" ");
    }
    asmfunc(arr,&num); 
   
   getch();
    
    
    printf("the total number of negative numbers is :  %d \n ", num); 
    
  
    
    return 0;
}
