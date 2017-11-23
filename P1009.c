#include <stdio.h>

 int main()
{
int a;
scanf("%d",&a);
switch(a/10)
{case 6:printf("C\n");break;
case 7:
case 8:printf("B\n");break;
case 9:
case 10:printf("A\n");break;
case 5:
case 4:
case 3:
case 2:
case 1:
case 0: printf("D\n");break;
}

return 0;
}