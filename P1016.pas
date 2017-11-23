var a,b,n,i,s,j,k:longint;
t:boolean;
begin
readln(a,b);
s:=0;
for n:=a to b do
begin
t:=true;
for i:=2 to (n-1) do
if n mod i=0 then begin
t:=false;
break;
end;
if t then begin
s:=s+1;
write(n,' ');
if s mod 10=0 then writeln;
end;
end;
writeln;
writeln('Total=',s);
end.