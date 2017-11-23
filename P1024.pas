var a:array [1..32768] of longint;
    i,j,n,k,min,max:longint;
begin
readln(n);
for i:=1 to n do read(a[i]);
min:=32767;
max:=-32768;
 for i:=1 to n do  begin
    if a[i]<min then begin
      min:=a[i];
      k:=i;
      end;
    if a[i]>max then begin
      max:=a[i];
      j:=i;
      end;
      end;
  writeln(max,' ',j,' ',min,' ',k);
   end.