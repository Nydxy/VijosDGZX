#include <stdio.h>
 int main()
{
int a,b;
scanf("%d%d",&a,&b);
if (a<=b) printf("min=%d\n",a);
if (b<=a) printf("min=%d\n",b);
return 0;
}