/*
1977��Kadane���������O(n)�������㷨��
��b[j]��ʾ��j������a[j]��β�������е����͡�
ע�⣺b[j]������ǰj-1��������������������֮�ͣ���ֻ�ǰ���a[j]��������������еĺ͡��������b[j]�е����ֵ����Ϊ�����������������еĺ͡�
���ƹ�ʽ��b[j]=max{a[j],b[j-1]+a[j]}
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