#include<iostream>
#include<iomanip>
using namespace std;
int main()
{
	int n,i,j,pos;
	int a[100];
	int sum=0,max=0;
	cin>>n;
	for (i=1;i<=n;i++)	cin>>a[i];
	for (i=1;i<=4;i++)  a[n+i]=a[i];
	for (i=1;i<=n;i++)
	{
		sum=0;
		for (j=i;j<=i+3;j++) sum+=a[j];
		if (sum>max) {
			max=sum;
			pos=i;
		}
	}
	cout<<max<<endl<<pos<<endl;
	return 0;
}