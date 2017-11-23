#include <iostream>
#include <string.h>
using namespace std;
long long n,m,p;
long long quick_mod(long long a, long long b)
{
	long long ans = 1;
	a %= p;
	while(b)
	{
		if(b & 1)
		{
			ans = ans * a % p;
			b--;
		}
		b >>= 1;
		a = a * a % p;
	}
	return ans;
}

long long C(long long n, long long m)
{
	if(m > n) return 0;
	long long ans = 1;
	for(int i=1; i<=m; i++)
	{
		long long a = (n + i - m) % p;
		long long b = i % p;
		ans = ans * (a * quick_mod(b, p-2) % p) % p;
	}
	return ans;
}

long long Lucas(long long n, long long m)
{
	if(m == 0) return 1;
	return C(n % p, m % p) * Lucas(n / p, m / p) % p;
}

int main()
{
	long long val=1;
	p =   10007;

	int a,b,k,n,m;
	cin >> a>> b>> k>> n>> m;
	for(int i=1;i<=n;i++)
	{
		val *=a;
		val %=10007;
	}
	for(int i=1;i<=m;i++)
	{
		val *=b;
		val %=10007;
	}
	val *= Lucas(k,m);
	val %= 10007;
	cout << val<<endl;
	return 0;
}
