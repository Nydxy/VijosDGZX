#include <iostream> 
using namespace std;

int main()
{
	int n, n2, count,i;
	int array[50];
	cin >> n;
	n2 = n;
	count = 0;
	for ( i = 2; i <= n; i++)
	{
		for (; n2%i == 0;)
		{
			n2 = n2 / i;
			array[count] = i;
			count++;
		}
	}
	cout << n << "=";
	for (i = 0; i < count-1; i++) cout << array[i] << "*";
	cout << array[count - 1] << endl;
	return 0;
}
