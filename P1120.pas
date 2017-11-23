program ex1;
type a=record
  fr:integer;
   en:integer;
   we:real;
   end;
   b=record
 x,y:integer;
 end;
   var n,i,j,k,m1,m2,n2:longint;   count:real;
  e:array[1..500000]of a;
  fa:array[1..1000]of integer;
  p:array[1..1000]of b;

procedure sort(l,r: longint);
  var
 i1,j1: longint;x,y:real;m:a;
  begin
   i1:=l;
    j1:=r;
     x:=e[(l+r) div 2].we;
 repeat
 while e[i1].we<x do
inc(i1);
   while x<e[j1].we do
dec(j1);
if not(i1>j1) then
begin
m:=e[j1];
 e[j1]:=e[i1];
 e[i1]:=m;
inc(i1);
j1:=j1-1;
 end;
 until i1>j1;
 if l<j1 then
  sort(l,j1);
  if i1<r then
  sort(i1,r);
 end;
function fi(xx:integer):integer;
var ii,jj,ff,nn:integer;
begin
ii:=xx;
while fa[ii]<>ii do ii:=fa[ii];
ff:=ii;
ii:=xx;
while ii<>ff do begin
nn:=fa[ii];
fa[ii]:=ff;
ii:=nn;
end;
fi:=ff;
end;







begin
readln(n);
for i:=1 to n do readln(p[i].x,p[i].y);
k:=1;
for i:=1 to n-1 do
for j:=i+1 to n do begin
e[k].fr:=i;
e[k].en:=j;
e[k].we:=sqrt((p[i].x-p[j].x)*(p[i].x-p[j].x)+(p[i].y-p[j].y)*(p[i].y-p[j].y));
k:=k+1;
end;
k:=k-1;
sort(1,k);



for i:=1 to n do fa[i]:=i;
i:=1;
j:=1;

while i<=n-1 do
begin
m1:=fi(e[j].fr);
m2:=fi(e[j].en);

if m1<>m2 then begin
count:=count+e[j].we;
i:=i+1;
fa[m1]:=m2;
end;
j:=j+1;
end;
count:=count*100;
round(count);
count:=count/100;
writeln(count:0:2);

end.