const max=10000;
var a:array[1..max] of longint;
    n,h,i,j:longint;
begin
  read(n);
  for i:=1 to n do a[i]:=0;
  a[1]:=1;
  h:=1;
  for i:=2 to n do
    begin
      for j:=1 to h do a[j]:=a[j]*i;
      for j:=1 to h do
        if a[j]>=10 then begin
          a[j+1]:=a[j+1]+a[j] div 10;
          a[j]:=a[j] mod 10;
          end;
      while a[h+1]>0 do
        begin
          h:=h+1;
          a[h+1]:=a[h] div 10;
          a[h]:=a[h] mod 10;
          end;
      if a[h+1]>0 then h:=h+1;
      end;
  for i:=h downto 1 do writeln(a[i]);
  end.