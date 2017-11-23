#include <stdio.h>
int main()
{   int i,x,y,z;
	
	for (i=100;i<=999;i++)
	{x=i%10;
	y=(i%100-i%10)/10;
	z=(i-i%100)/100;
	if (x*x*x+y*y*y+z*z*z==i) printf("%d\n",i);}
return 0;
}