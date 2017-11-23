var m,n,s,k:int64;
begin
readln(n);
m:=n div 7;
if odd(m) then k:=((m+1) div 2)*m
else k:=(m div 2)*(m+1);
s:=k*7;
writeln(s);
end.