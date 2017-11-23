var i,j,n,s:longint;
    a:array[1..30001] of longint;
begin
  readln(n);
  for i:=1 to n do
     begin
       read(j);
       a[j]:=a[j]+1;
       end;
  s:=0;
  for i:=1 to 30000 do if a[i]>s then s:=a[i];
  for i:=1 to 30000 do if a[i]=s then writeln(i,' ',s);
  end.