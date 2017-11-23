#include <iostream.h>

void main()
  { int c[30001];
    long n,m,i,k,a,b,x,y,z;

    cin >> n >> m;

    for(i=1; i<=n; i++) c[i]=-1;

    for(i=1; i<=m; i++)
      { cin >> a >> b;
	x=a;  while(c[x]>0) x=c[x];
	y=b;  while(c[y]>0) y=c[y];
	if(x!=y)
	  { if(c[x]>c[y])
	      { c[x]+=c[y]; c[y]=x; z=x; }
	    else
	      { c[y]+=c[x]; c[x]=y; z=y; }
	    x=a; while(c[x]>0) { y=c[x]; c[x]=z; x=y; }
	    x=b; while(c[x]>0) { y=c[x]; c[x]=z; x=y; }
	  }
      }

    x=c[1];
    for(i=2; i<=n; i++)
      if(x>c[i]) x=c[i];

    cout << -x << endl;
/*
    k=0;
    for(i=1; i<=n; i++)
      if(c[i]<0) k++;
    cout << k << endl;
*/
  }