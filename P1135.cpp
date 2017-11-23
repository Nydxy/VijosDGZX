// Copyright 2016 Nydxy.
#include <iostream>
using namespace std;
int main()
{
	int k,i,count=0;
	double x,y;
	cin>>k;
  	for (i=k+1;i<=2*k;i++)
  	{
  		x=i;
  		y=k*x/(x-k);
  		if (y==int(y)) //cout<<"1/"<<k<<"=1/"<<x<<"+1/"<<y<<endl;
  			count++;
	  }
	  cout<<count<<endl;
return 0;
}