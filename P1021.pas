var a,n,s:int64;
function c(n:int64):boolean;
var m:integer;
begin
c:=true;
while (n<>0) and c do
begin
m:=n mod 10;
if (m<>1) and (m<>0) then c:=false;
n:=n div 10;
end;
end;
begin
a:=1;
readln(n);
repeat
s:=n*a;
a:=a+1;
until c(s);
writeln(a-1);
end.