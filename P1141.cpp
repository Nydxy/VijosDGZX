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
			if (i == x)	count++; //碰到重复因子
			else//碰到新因子
			{
				if (x!=n) cout << x << " " << count << endl; //输出上一个因子。注意第一个x不能输出
				x = i;
				count = 1;
			}
		}
	}
	cout << x << " " << count << endl;//循环不能输出最后一个因子，手动补上
	return 0;
}
