program sun;
 var
 a:array[1..1000] of integer;
 i,j:longint;
 b,n:integer;
  begin
 for i:=1 to 1000 do
 a[i]:=0;
 begin
 readln(n);
 for i:=1 to n do
 begin
 read(b);
 a[b]:=a[b]+1;
  end;
  for i:=1 to 1000 do
  if a[i]>=1 then inc(j);
  writeln(j);
  for i:=1 to 1000 do
  if a[i]>=1 then write(i,' ');
  end;
  end.

