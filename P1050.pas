program chorus;
const
fin='chorus.in';
fout='chorus.out';
maxn=200;
var
opt1,opt2,a:array[0..maxn] of longint;
n,ans:longint;
procedure init;
var
i:longint;
begin
readln(n);
for i:=1 to n do
read(a[i]);
end;
procedure main;
var
i,j:longint;
begin
a[0]:=-maxlongint;
for i:=1 to n do
for j:=i-1 downto 0 do
if (a[j]<a[i]) and (opt1[j]+1>opt1[i]) then
opt1[i]:=opt1[j]+1;
a[n+1]:=-maxlongint;
for i:=n downto 1 do
for j:=i+1 to n+1 do
if (a[j]<a[i]) and (opt2[j]+1>opt2[i]) then
opt2[i]:=opt2[j]+1;
ans:=0;
for i:=1 to n do
if opt1[i]+opt2[i]>ans then
ans:=opt1[i]+opt2[i];
end;
procedure print;
begin
writeln(n-ans+1);
end;
begin
init;
main;
print;
end.