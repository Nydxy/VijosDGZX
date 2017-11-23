var a,b:array[1..10000] of integer;
m,n,i,z,x,h,k,p,q:longint;f:boolean;
begin
readln(m,n);
if m mod n =0 then writeln(m div n)
else begin
z:=m div n;
write(z,'.');
i:=1;f:=false;
b[i]:=m mod n;
a[i]:=b[i]*10 div n;
while (b[i]<>0) and (f=false) and(i<=100)do
begin
if i>1 then
for x:=1 to i-1 do
if b[x]=b[i] then
begin
f:=true;
h:=x;
k:=i;
end;
if not f then
begin
a[i]:=b[i]*10 div n;
i:=i+1;
b[i]:=b[i-1]*10-a[i-1]*n;
end;
end;
if f then
begin
for p:=1 to h-1 do write(a[p]);
write('(');
for p:=h to k-1 do write(a[p]);
write(')');
end
else if b[i]=0 then for q:=1 to i-1 do write(a[q])
else for q:=1 to i-1 do write(a[q]);
end;
writeln;
end.