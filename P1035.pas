var m,n,i,j,l,k,x,e:integer;
    s,y:longint;
    a,d:string;
    b,c:array[1..100] of integer;
begin
readln(n);
readln(a);
readln(m);
l:=length(a);
for i:=1 to l do
            begin
            if ord(a[i])<64 then c[i]:=ord(a[i])-48
                            else c[i]:=ord(a[i])-55;
            end;
if l=1 then s:=c[1]
       else begin
            x:=l;
            y:=1;
            repeat
            s:=s+c[x]*y;
            y:=y*n;
            x:=x-1;
            until x=0;
            end;
j:=0;
repeat
j:=j+1;
b[j]:=s mod m;
s:=s div m;
until s=0;
for k:=j downto 1 do begin
                     if b[k]>=10 then d[k]:=chr(b[k]+55)
                                 else d[k]:=chr(b[k]+48);
                                 end;
for e:=j downto 1 do write(d[e]);
writeln;
end.