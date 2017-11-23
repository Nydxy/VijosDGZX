var a,b,c,t,m:array[1..32768] of longint;
n,i,j,k,x,y:longint;

begin
  read(n);

  for i:=1 to n do
    begin
    read(a[i],b[i],c[i]);
    t[i]:=a[i]+b[i]+c[i];
    m[i]:=i;
    end;

  for i:=1 to n do
    for j:=1 to n do
    if (t[j]<t[i])
    or ((t[j]=t[i])and(a[i]>a[j]))
    or ((t[j]=t[i])and(a[i]=a[j])and(m[i]<m[j])) then
      begin
      k:=m[i];
      m[i]:=m[j];
      m[j]:=k;
      k:=t[i];
      t[i]:=t[j];
      t[j]:=k;
      k:=a[i];
      a[i]:=a[j];
      a[j]:=k;
      k:=b[i];
      b[i]:=b[j];
      b[j]:=k;
      k:=c[i];
      c[i]:=c[j];
      c[j]:=k;
      end;



  for i:=1 to 5 do writeln(m[i],' ',t[i]);

end.