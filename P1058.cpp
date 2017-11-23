#include<iostream>
#include<math.h>
using namespace std;
int main()
{
	int n,x,i,pos;
	bool flag=false;
	int a[101];
	cin>>n;
	for (i=0;i<n;i++) cin>>a[i];
	cin>>x;
	for (i=0;i<n;i++)
		if (a[i]==x)
		{
			flag=true;
			pos=i+1;
			break;
		}
	if (flag) cout<<pos<<endl;
	else cout<<-1<<endl;
	return 0;
}