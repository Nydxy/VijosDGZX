#include <iostream>
#include<stack>
#include <cmath>
using namespace std;

#define MaxExpLength 100
char ops[7] = { '+', '-', '*', '/', '(', ')', '=' };  //运算符集合
													  //比较运算符优先级的矩阵
char cmp[7][7] = { { '>', '>', '<', '<', '<', '>', '>' },
{ '>', '>', '<', '<', '<', '>', '>' },
{ '>', '>', '>', '>', '<', '>', '>' },
{ '>', '>', '>', '>', '<', '>', '>' },
{ '<', '<', '<', '<', '<', '=', ' ' },
{ '>', '>', '>', '>', ' ', '>', '>' },
{ '<', '<', '<', '<', '<', ' ', '=' } };
//判断字符ch是否为运算符，是返回true，不是返回false。
bool IsOperator(char ch)
{
	for (int i = 0; i < 7; i++)
		if (ch == ops[i])
			return true;
	return false;
}
//比较运算符ch1和ch2的优先级
char Compare(char ch1, char ch2)
{
	int i, m, n;
	char priority;
	for (i = 0; i < 7; i++) { //找到相比较的两个运算符在比较矩阵里的相对位置
		if (ch1 == ops[i])
			m = i;
		if (ch2 == ops[i])
			n = i;
	}
	priority = cmp[m][n];
	return priority;
}
//计算z = x <op> y；若<op>为“/”且y为0，则返回false，否则返回true。
bool Compute(double x, char op, double y, double &z)
{
	switch (op) {
	case '+':	z = x + y;
		break;
	case '-':	z = x - y;
		break;
	case '*':	z = x * y;
		break;
	case '/':	if (fabs(y) > 1e-7) {
		z = x / y;
		break;
	}
				else
					cout << "除数为0，出错！" << endl;
		return false;
	}
	return true;
}
//计算算术表达式的值，若表达式中有除运算且除数为0，则返回false，否则返回true。optr和opnd分别为运算符栈和运算数栈
bool ExpEvaluation(char *str, double &result)
{
	double a, b, v;
	char ch, op;
	int temp, i = 0;
	stack <char> optr;     //创建运算符栈optr
	stack <double> opnd;   //创建运算数栈opnd
	optr.push('=');
	ch = str[i++];
	while (ch != '=' || optr.top() != '=') {
		while (ch == ' ')   //跳过空格
			ch = str[i++];
		if (IsOperator(ch)) {  //是7种运算符之一
			switch (Compare(optr.top(), ch)) {
			case '<':         //栈顶运算符优先级低
				optr.push(ch);
				ch = str[i++];
				break;
			case '=':         //脱括号并接收下一字符
				optr.pop();
				ch = str[i++];
				break;
			case '>':         //栈顶运算符优先级高，退栈并将运算结果入栈
				op = optr.top();
				optr.pop();
				b = opnd.top();
				opnd.pop();
				a = opnd.top();
				opnd.pop();
				if (Compute(a, op, b, v)) { //计算v = a <op> b
					opnd.push(v);
					break;
				}
				else {
					result = 0;
					return false;
				}
			}
		}
		else {    //是数字
			temp = ch - '0';    //将字符转换为十进制数
			ch = str[i++];
			while (!IsOperator(ch) && ch != ' ') {
				temp = temp * 10 + ch - '0'; //将逐个读入运算数的各位转化为十进制数
				ch = str[i++];
			}
			opnd.push(temp);    //数值入栈
		}
	}
	result = opnd.top();
	return true;
}
int main()
{
	int i = 0;
	double result;
	char *str, ch;
	//输入算术表达式
	str = new char[MaxExpLength];
	for (i = 0;; i++)
	{
		cin >> ch;
		if (ch == '@') ch = '=';
		str[i] = ch;
		if (ch == '=') break;
	}
	if (ExpEvaluation(str, result))  //求表达式的值
		printf("%.2f\n", result);
	else
		cout << "ERROR" << endl;     //除数为0，报错
	return 0;
}