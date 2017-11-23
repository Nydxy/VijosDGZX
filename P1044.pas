var
n,i,t,k:longint;
a:array[1..200000] of longint;
procedure qsort(l,r:longint);{¿ìËÙÅÅĞò}
 var i,j,x,t:longint;
 begin
i:=l;;j:=r;x:=a[(l+r) div 2]; repeat
while a[i]<x do inc(i); while x<a[j] do dec(j); if i<=j then begin
t:=a[i];a[i]:=a[j];a[j]:=t; inc(i);dec(j); end; until i>j;
if l<j then qsort(l,j); if i<r then qsort(i,r); end; begin
readln(n);
for i:=1 to n do readln(a[i]); qsort(1,n); i:=1;
while i<=n do{Êä³ö} begin
write(a[i],' '); t:=0;k:=a[i];
while (i<=n)and(a[i]=k) do begin
inc(t);inc(i); end;
writeln(t); end;
end.