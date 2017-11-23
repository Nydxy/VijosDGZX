#include<iostream>
using namespace std;
int main()
{
	int n,i,x,pos;
	bool flag=false;
	int a[100];
	cin>>n;
	for (i=1;i<=n;i++)	cin>>a[i];
	cin>>x;
	for (i=1;i<=n;i++)
	{
		if (a[i]==x)
		{
			pos=i;
			flag=true;
			break;
		}
	}
	if (flag)
	{
		for (i=pos;i<=n;i++) a[i]=a[i+1];
		for (i=1;i<=n-1;i++) cout<<a[i]<<" ";
	}
	else cout<<"no";
	cout<<endl;
	return 0;
}