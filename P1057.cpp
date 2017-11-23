#include<iostream>
#include<math.h>
using namespace std;
int main()
{
	int n,m;
	int sum=0;
	cin>>m>>n;
	for (int i=m;i<=n;i++)	sum+=pow(2,i-1);
	cout<<sum<<endl;
	return 0;
}