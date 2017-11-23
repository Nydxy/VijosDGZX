#include <stdio.h>
 int main()
{
int i,n,k;
scanf("%d",&n);
k=1;
for (i=2;i<=(n-1);i++)
{if ((n%i)==0) k=0;}
if (k==0) printf("NO\n");
else printf("YES\n");
return 0;
}