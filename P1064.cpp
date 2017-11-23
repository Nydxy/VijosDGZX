#include<iostream>
using namespace std;
template<class T>
void InputArray(T* array,int n,int first=0)
{
	for (int i=first;i<n+first;i++) cin>>array[i];
}

int main()
{
	int n,i,j,temp,pos;
	int a[100];
	cin>>n;
	InputArray<int>(a,n,1);
	cin>>pos;
	temp=a[pos];
	for (i=pos;i<=n;i++) a[i]=a[i+1];
	a[n]=temp;
	for (i=1;i<=n;i++) cout<<a[i]<<" ";
	cout<<endl;
	return 0;
}