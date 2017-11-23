#include <iostream>
#include <iomanip>
using namespace std;
const double PI=3.14159;
int main()
{
	double r,l,s;
	cin>>r;
	s=PI*r*r;
	l=2*PI*r;
	cout<<"l="<<setprecision(2)<<setiosflags(ios::fixed)<<l<<endl;
	cout<<"s="<<s<<endl;
return 0;
}