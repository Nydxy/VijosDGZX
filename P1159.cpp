#include<iostream>
using namespace std;
int f(int x,int y)
{
	return x*10+y;
}

int main()
{
	int i,j;
	for (i=1;i<=9;i++)
		for (j=0;j<=9;j++)
		{
			if (f(j,i)-f(i,j)==36) cout<<i<<j<<endl;
		}
	
	return 0;
}