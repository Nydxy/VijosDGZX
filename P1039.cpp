#include <iostream>
using namespace std;

int main()
{
    int n, i, j;
    bool arr[100];
    cin >> n;
    i = 0;
    while(n > 0)
        {
            arr[i] = bool(n % 2);
            i++;
            n /= 2;
        }
    for(j=i-1;j>=0;j--) cout << arr[j];
    cout << endl;
    return 0;
}