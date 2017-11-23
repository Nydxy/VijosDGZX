/*
1977年Kadane给出了这个O(n)的完美算法。
设b[j]表示第j处，以a[j]结尾的子序列的最大和。
注意：b[j]并不是前j-1个数中最大的连续子序列之和，而只是包含a[j]的最大连续子序列的和。我们求出b[j]中的最大值，即为所求的最大连续子序列的和。
递推公式：b[j]=max{a[j],b[j-1]+a[j]}
*/
#include <iostream>
using namespace std;
int main()
{
	int *a, *b, sum,n;
	cin >> n;
	a = new int[n];
	b = new int[n];
	for (int i = 0; i < n; i++) cin >> a[i];
	b[0] = a[0];
	sum = b[0];
	for (int j = 1; j<n; j++)
	{
		if (b[j - 1] + a[j]>a[j])
			b[j] = b[j - 1] + a[j];
		else
			b[j] = a[j];
		sum = (sum>b[j]) ? sum : b[j];
	}
	cout << sum << endl;
	delete[]a;
	delete[]b;
	return 0;
}