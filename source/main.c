#include <stdio.h>

int main()
{
#ifdef _OS_Linux_
    printf("build config var.\n");
#endif
    printf("hello world!\n");
    return 0;
}