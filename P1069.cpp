#include<iostream>
using namespace std;
int main()
{
	int n, i, j, sum = 0, sign = -1;
	int a[10001];
	cin >> n;
	for (i = 1; i <= n; i++) a[i] = 1; //1：门锁着 -1：门开着
	for (i = 1; i <= n; i++)
	{
		for (j = 1; j <= n; j++)
		{
			if (j%i == 0) a[j] *= sign;
		}
	}
	for (i = 1; i <= n; i++) if (a[i] == -1) sum++;
	cout << sum << endl;
	return 0;
}
