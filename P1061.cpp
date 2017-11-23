#include<iostream>
using namespace std;
int main()
{
	int n,i,j,pos,x;
	int a[100];
	cin>>n;
	for (i=1;i<=n;i++)	cin>>a[i];
	cin>>pos>>x;
	for (i=n;i>=pos;i--) a[i+1]=a[i];
	a[pos]=x;
	for (i=1;i<=n+1;i++) cout<<a[i]<<" ";
	cout<<endl;
	return 0;
}