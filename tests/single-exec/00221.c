#include <stdlib.h>

int main(int argc, char* argv[]){
    const int N = 10; 
    int* arr[N];
    
    for (int i = 0; i < N; i++){
        arr[i] = malloc(sizeof(int));
        *(arr[i]) = 0;  
    }

    **(arr+9) = 9999; 
    
    int ans = 0; 
    for (int i = 0; i < N; i++){
        ans += **(arr+i);
    }

    return ans - 9999; 
}