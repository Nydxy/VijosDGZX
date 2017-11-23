#include<iostream>
#include<iomanip>
using namespace std;
int main()
{
	int n,i;
	int a[101];
	double sum=0, AV;
	cin>>n;
	for (i=0;i<n;i++)
	{
		cin>>a[i];
		sum+=a[i];
	}
	AV=sum/n;
	cout<<fixed<<setprecision(1)<<"AV="<<AV<<endl;
	for (i=0;i<n;i++)
	{
		if (a[i]>=AV) cout<<i+1<<":"<<a[i]<<endl;
	}
	return 0;
}