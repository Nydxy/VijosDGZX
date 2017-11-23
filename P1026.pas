var s,n,i,t:longint;
a:array[1..4]of integer;
begin
readln(n);
s:=0;
while n<>6174 do
begin
s:=s+1;
for i:= 1 to 4 do
begin
a[i]:=n mod 10;
n:=n div 10;
end;
for i:=1 to 2 do
begin
if a[1]>a[2] then begin t:=a[1];a[1]:=a[2];a[2]:=t; end;
if a[3]>a[4] then begin t:=a[3];a[3]:=a[4];a[4]:=t; end;
if a[2]>a[3] then begin t:=a[2];a[2]:=a[3];a[3]:=t; end;
end;
n:=(a[4]-a[1])*999+(a[3]-a[2])*90;
end;
writeln(s);
end.