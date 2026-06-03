#include <stdio.h>
#include <sys/syscall.h>

int main()
{
    syscall(1, 1, "A", 1);
    return 0;
}
