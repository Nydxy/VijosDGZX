#include<iostream>
using namespace std;
int main()
{
	int n,i,pos;
	int a[100];
	cin>>n;
	for (i=1;i<=n;i++)	cin>>a[i];
	cin>>pos;
	for (i=pos;i<=n;i++) a[i]=a[i+1];
	for (i=1;i<=n-1;i++) cout<<a[i]<<" ";
	cout<<endl;
	return 0;
}