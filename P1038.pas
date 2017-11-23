program noip1998p3_dfs;
var
n:integer; procedure run(x:integer);
var
a:array [0..20] of integer;
num,i:integer;
first:boolean; begin
if x=0 then
begin
write(0);
exit;
end; num:=-1;
while x<>0 do
begin
inc(num);
a[num]:=x mod 2;
x:=x div 2;
end; first:=false;
for i:=num downto 0 do
if a[i]=1 then
begin
if not first then first:=true
else write('+');
if i=1 then write(2)
else
begin
write('2(');
run(i);
write(')');
end;
end;
end; begin
readln(n);
run(n);
writeln;
end.