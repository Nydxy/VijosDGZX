#include <stdio.h>
int main()
{   int i,j,sum,n,tag;

    scanf("%d",&n);
	printf("%d=",n);
	i=2;
	while (i<n) { if (n%i==0) {n/=i;printf("%d*",i);i=2;}
	else i++;}
	if ((i=n-1) || (i=n)) printf("%d\n",n);


return 0;
}