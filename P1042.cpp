#include <iostream>
using namespace std;
int n,k;
int a[10000],b[10000];
void Swap(int &a, int &b)
{
	int temp = a;
	a = b;
	b = temp;
}
void Qsort(int left, int right)
{
	int i, j;
	if (left<right)
	{
		i = left;
		j = right + 1;
		do
		{
			do i++; while (a[i]<a[left]);
			do j--; while (a[j]>a[left]);
			if (i<j) Swap(a[j], a[i]);
		} while (i<j);
		Swap(a[left], a[j]);
		Qsort(left, j - 1);
		Qsort(j + 1, right);
	}
}
void Qsort()
{
	Qsort(0, n - 1);
}
int main()
{
	cin >> n >> k;
	for (int i = 0; i < n; i++) cin >> a[i];
	Qsort();
	int m = 0;
	b[m] = a[0];
	for (int i = 1; i < n; i++)
		if (a[i] != a[i - 1])
		{
			m++;
			b[m] = a[i];
		}
	m++;
	if (k <= m) cout << b[k-1] << endl;
	else cout << "NO RESULT" << endl;
	return 0;
}