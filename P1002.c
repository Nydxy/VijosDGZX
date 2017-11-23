#include <stdio.h>
int main()
{
	int a,b;
	scanf("%d%d",&a,&b);
	printf("%d+%d=%d\n",a,b,a+b);
    printf("%6d\n",a);
	printf("+%5d\n",b);
	printf("-------\n");
	printf("%6d\n",a+b);
	return 0;
}