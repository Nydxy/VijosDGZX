#include <stdio.h>
int main()
{   int i,j,tag,x,y,min;

    scanf("%d%d",&x,&y);
	if (x<=y) min=x;
	if (x>=y) min=y;
	for (i=1;i<=min;i++) 
	{ if ((x%i==0) && (y%i==0))  tag=i;}
	printf("%d",(x*y/tag));



printf("\n");
return 0;
}