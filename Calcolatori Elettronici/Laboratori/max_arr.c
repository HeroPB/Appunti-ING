#include <stdio.h>

extern int max_array(int *arr, int n);

/*
int max(int *arr, int n) {
    if(n == 0) return -1;
    int max = arr[0];
    for(int i = 1; i < n; i++) {
        if(arr[i] > max) {
            max = arr[i];
        }
    }
    return max;
}
*/
int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int n = sizeof(arr) / sizeof(arr[0]);
    int max = max_array(arr, n);
    printf("%d\n", max);
    return 0;
}