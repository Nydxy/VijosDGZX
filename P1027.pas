var n,i,j,k,b,d:integer;
a:array[1..31,1..31] of integer;
begin
readln(n);
if n=1 then writeln(1)
else
begin
for i:=1 to n do
for j:=1 to n do
a[i,j]:=0;
a[1,1]:=1; a[n,n]:=n*n;
for i:=2 to n do
begin
if odd(i) then begin a[i,1]:=a[i-1,1]+1; k:=1; end
else begin a[i,1]:=(i*i+i) div 2; k:=-1; end;
b:=i; d:=1;
repeat
b:=b-1; d:=d+1;
a[b,d]:=a[b+1,d-1]+k;
until b=1;
end;
for i:=1 to n do
begin
for j:=1 to n do
begin
if a[i,j]=0 then
a[i,j]:=n*n+1-a[n+1-i,n+1-j];
write(a[i,j]:4);
end;
writeln;
end;
end;
end.