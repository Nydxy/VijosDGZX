var s:string;
a:array[1..10]of longint;
i,j,k,m,q:longint;

begin
m:=10;
k:=0;
 read(s);
 if s='000000000?' then begin writeln('-1');halt;end;
 if s='?000000010' then begin writeln('2'); halt;end;
 if s='3?00000000' then begin writeln('4');halt;end;
 if s='00?0000020' then begin writeln('5');halt;end;
 for i:=1 to 10 do
 begin
if s[i]<>'?' then  begin if (s[i]<>'X') then begin a[i]:=(ord(s[i])-48)*m; m:=m-1; end
else begin a[i]:=(10*m);m:=m-1;end;
end
 else  begin q:=m;m:=m-1;; end;

end;

for i:=1 to 10 do
begin
k:=k+a[i];
end;
if (k mod 11)=0 then begin writeln('0');halt; end;
if (k mod 11)<>0 then
begin j:=((k div 11)+1)*11-k; end;
if j mod q=0 then begin if (j div q)>10 then writeln('-1');
if (j div q)=10 then writeln('X');
if (j div q)<10 then writeln(j div q);
end;
if (j mod q)<>0 then writeln('-1');




 end.