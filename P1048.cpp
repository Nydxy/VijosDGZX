#include <stdio.h>  
int m,n,a[20][20],ans=2147438647;  
void search(int i,int j,int sum)  
{  
    sum+=a[i][j];  
    if (i<m)  
        search(i+1,j,sum);  
    if (j<n)  
        search(i,j+1,sum);  
    if (i==m&&j==n&&sum<ans&&sum>0)  
        ans=sum;  
}  
int main()  
{  
    int i,j;  
    scanf("%d%d",&m,&n);  
    for (i=1; i<=m; i++)  
        for (j=1; j<=n; j++)  
            scanf("%d",&a[i][j]);  
    search(1,1,0);  
    if (ans==2147438647)  
        ans=-1;  
    printf("%d\n",ans);  
    return 0;  
}  
