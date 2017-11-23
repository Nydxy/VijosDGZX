#include <stdio.h>
int main()
{   int i,j,sum,n,tag;

    scanf("%d",&n);
	
    for (i=2;i<=n;i++)
	{
		sum=0;
		if (i%2==0) for (j=1;j<=(i/2);j++)  {if (i%j==0) sum+=j;}
		if (i%2!=0) for (j=1;j<=((i+1)/2);j++)  {if (i%j==0) sum+=j;}
	 if (sum==i) printf("%d ",i);
	}
printf("\n");
return 0;
}