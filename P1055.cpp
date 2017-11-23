#include<iostream>
#include<iomanip>
using namespace std;
int main()
{
	int n;
	double a[100];
	double sum=0,average;
	cin>>n;
	for (int i=0;i<n;i++)
	{
		cin>>a[i];
		sum+=a[i];
	}
	average=sum/n;
	for (int i=0;i<n;i++) cout<<i+1<<":"<<fixed<<setprecision(1)<<a[i]<<endl;
	cout<<setprecision(2)<<average<<endl;
	return 0;
}