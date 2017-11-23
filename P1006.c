#include <stdio.h>

 int main()
{
int a;
scanf("%d",&a);
if ((a%100==0) && (a%400==0)) printf("SHI\n");
else if ((a%100==0) && (a%400!=0)) printf("FOU\n");
else
switch (a%4)
{
case 0:printf("SHI\n");break;	
case 1:printf("FOU\n");break;
case 2:printf("FOU\n");break;
case 3:printf("FOU\n");break;
}
return 0;
}