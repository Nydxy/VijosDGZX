program fsdfsdfsdf;
type
shuzu=array[0..10000]of int64;
var
s:ansistring;
s1:string;
a,b:shuzu;
i:longint;
procedure cheng(var a:shuzu;b:shuzu);
var
i,j:longint;
begin
for i:=a[0] downto 1 do
begin
for j:=b[0] downto 2 do
inc(a[i+j-1],a[i]*b[j]);
a[i]:=a[i]*b[1];
end;
a[0]:=a[0]+b[0];
while (a[a[0]]=0)and(a[0]>0) do
a[0]:=a[0]-1;
for i:=1 to a[0]-1 do
begin
a[i+1]:=a[i+1]+(a[i] div 10000);
a[i]:=a[i] mod 10000;
end;
while a[a[0]]>10000 do
begin
a[a[0]+1]:=a[a[0]+1]+(a[a[0]] div 10000);
a[a[0]]:=a[a[0]] mod 10000;
a[0]:=a[0]+1;
end;
end;
begin
readln(s);
a[0]:=length(s)div 4;
for i:=1 to a[0] do
begin
s1:=copy(s,length(s)-3,4);
val(s1,a[i]);
delete(s,length(s)-3,4);
end;
if s<>'' then
begin
inc(a[0]);
val(s,a[a[0]]);
end;
readln(s);
b[0]:=length(s)div 4;
for i:=1 to b[0] do
begin
s1:=copy(s,length(s)-3,4);
val(s1,b[i]);
delete(s,length(s)-3,4);
end;
if s<>'' then
begin
inc(b[0]);
val(s,b[b[0]]);
end;
cheng(a,b);
write(a[a[0]]);
for i:=a[0]-1 downto 1 do
begin
if (a[i]>=1000) then write(a[i])
else
if a[i]>=100 then write('0',a[i])
else
if a[i]>=10 then write('00',a[i])
else  write('000',a[i]);
end;
WRITELN;
end.