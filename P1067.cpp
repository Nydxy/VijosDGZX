#include<iostream>
using namespace std;
int main()
{
	int n,i,j;
	int a[100];
	cin>>n;
	for (i=1;i<=n;i++)	cin>>a[i];

	for (i=1;i<=n;i++)
	{
		if (a[i]*a[i]%7==1)
		{
			for (j=i;j<=n;j++) a[j]=a[j+1];
			n--;
			i--;
		}
	}
	for (i=1;i<=n;i++) cout<<a[i]<<" ";
	cout<<endl;
	return 0;
}