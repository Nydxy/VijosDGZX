#include <stdio.h>

 int main()
{
int a,b,c;
scanf("%d%d",&a,&b);
if ((a==0) && (b!=0)) printf("%d\n",b);
if ((a==0) && (b==0)) printf("%d\n",b);
if ((a!=0) && (b==0)) printf("%d\n",a*10);
if ((a!=0) && (b>=1) && (b<=9)) printf("%d\n",(a*10+b));
if ((a!=0) && (b>=10) && (b<=99)) printf("%d\n",(a*100+b));
if ((a!=0) && (b>=100) && (b<=999)) printf("%d\n",(a*1000+b));
return 0;
}