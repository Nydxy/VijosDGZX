#include <stdio.h>

 int main()
{
int i,n,sum,odd,even;
scanf("%d",&n);
sum=0;odd=0;even=0;
for (i=1;i<=n;i++)
sum+=i;
printf("%d ",sum);

for (i=1;i<=n;i+=2)
odd+=i;
printf("%d ",odd);
for (i=0;i<=n;i+=2)
even+=i;
printf("%d\n",even);

return 0;
}