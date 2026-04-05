#include <stdio.h>

extern int somma(int a, int b);


int main() {
    int a = 10;
    int b = 20;
    int c = somma(a, b);
    printf("%d\n", c);
    return 0;
}