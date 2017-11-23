#include<iostream>
using namespace std;
int gcd(int m, int n)
{
	if (n == 0) return m;
	else return gcd(n, m%n);
}
int lcm(int a, int b)
{
	int temp_lcm;
	temp_lcm = a*b / gcd(a, b);
	return temp_lcm;
}
int main()
{
	double x0, y0;
	int p, count = 0;
	int q;
	cin >> x0 >> y0;
	for (p = x0;p<y0-2;p++)
	{
		for (q = p + 2; q <= y0; q++)
			if (gcd(p, q) == x0&&lcm(p, q) == y0)		count++;
	}
	cout << count * 2<<endl;
	return 0;
}