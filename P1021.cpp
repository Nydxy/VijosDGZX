#include <iostream> 
using namespace std;
bool judge(int x)
{
	char ch[20];
	bool b=true;
	_itoa(x, ch, 10);
	for (int i = 0; i < strlen(ch); i++)
		if (ch[i] != '0' && ch[i] != '1') b = false;
	return b;
}
int main()
{
	int n;
	cin >> n;
	for (int i = 1;; i++)
	{
		if (judge(n*i)) {
			cout << i << endl;
			break;
		}
	}
	return 0;
}



