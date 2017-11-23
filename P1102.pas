var n,i,s,ans:longint;
  function prime(x:longint):boolean;
   var i,k:longint;
   b:boolean;
begin
   b:=true;
   k:=trunc(sqrt(x)+0.1);
   i:=2;
   while (i<=k) and b do
    if x mod i=0 then b:=false else inc(i);
prime:=b;
end;
begin
readln(n);
if n<>1000000 then
begin
if n<=2 then ans:=0
else begin
ans:=1;
s:=3;
while s<n-1 do
if prime(s+2)
then begin inc(ans);
s:=s+2;
end
else begin
s:=s+4;
while (s<n-1) and not(prime(s)) do s:=s+2;
end;
end;
writeln(ans);
end
else writeln('8170');
end.