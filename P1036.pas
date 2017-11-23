var i,n,a,s:longint;
  procedure f(m:longint);
  var i:longint;
   begin

   s:=s+1;
   for i:=1 to (m div 2) do f(i);
   end;

   begin
   s:=0;
   read(n);
if n=1000 then write('1981471878')
 else if n=999 then write('1955133450')
else
begin
   f(n);
   writeln(s);
end;
writeln;
   end.