#include <iostream> 
using namespace std;

int main()
{
	int count;
	long long x;
	long long n,j,i;
	cin >> n;
	j = n;
	x = n; 
	count = 0;
	for (i = 2; i <= n; i++)
	{
		for (; j%i == 0;)
		{
			j =j / i;
			if (i == x)	count++; //�����ظ�����
			else//����������
			{
				if (x!=n) cout << x << " " << count << endl; //�����һ�����ӡ�ע���һ��x�������
				x = i;
				count = 1;
			}
		}
	}
	cout << x << " " << count << endl;//ѭ������������һ�����ӣ��ֶ�����
	return 0;
}
