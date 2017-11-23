#include <stdio.h>
main()
 {
	 int x,a,b,c,d;
	 scanf("%d",&x);
	 a=x%10;
	 b=((x%100-x%10)/10);
	 c=((x%1000-x%100)/100);
	 d=((x-x%1000)/1000);
	 printf("%d%d%d%d\n",a,b,c,d);
	
 }