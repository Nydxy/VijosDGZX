#include<iostream>
using namespace std;
template<class T>
void InputArray(T* array,int n,int first=0)
{
	for (int i=first;i<n+first;i++) cin>>array[i];
}

int main()
{
	int n,i,x;
	int a[100];
	cin>>x;
	cin>>n;
	InputArray<int>(a,n,1);
	if (x>=a[n])
	{
		n++;
		a[n]=x;
	}
	else
	for (i=1;i<=n;i++)
	{
		if (a[i]>x)
		{
			n++;
			for (int j=n;j>=i;j--) a[j]=a[j-1];
			a[i]=x;
			break;
		}
	}

	for (i=1;i<=n;i++) cout<<a[i]<<" ";
	cout<<endl;
	return 0;
}