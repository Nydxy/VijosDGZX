program ex(input,output);
var a:array[1..10] of integer;
n,i,s:longint;
m:real;
begin
s:=0;
m:=0;
n:=0;
for i:=1 to 10 do
read(a[i]);
for i:=1 to 10 do
if i mod 2=0 then
begin
write(a[i],' ');
s:=s+a[i];
end;
writeln;
writeln(s);
for i:=1 to 10 do
if i mod 2<>0 then
begin
write(a[i],' ');
m:=m+a[i];
end;
writeln;
writeln(m/5:0:2);
end.