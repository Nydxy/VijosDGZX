const max=10000;
var s1,s2:ansistring;
a,b,c,d:array[1..max] of longint;
l1,l2,l,j,i,y,t:longint;f,x:boolean;
begin

  readln(s1);
  readln(s2);
  l1:=length(s1);
  l2:=length(s2);
  for i:=1 to max do begin
    a[i]:=0;
    b[i]:=0;
    c[i]:=0;
    end;


   if (s1[1]='-')and (s2[1]<>'-') then begin
    delete(s1,1,1);
     l1:=l1-1;                                          {-a-b=-(a+b)}
   for i:=1 to l1 do  a[i]:=ord(s1[l1+1-i])-48;
    for j:=1 to l2 do  b[j]:=ord(s2[l2+1-j])-48;
  if l1>l2 then l:=l1 else l:=l2;
  for i:=1 to l do c[i]:=a[i]+b[i];
  for i:=1 to l do
    if c[i]>=10 then
      begin
        c[i]:=c[i]-10;
        c[i+1]:=c[i+1]+1;
       end;
  if c[l+1]>0 then l:=l+1;
  write('-');
  for i:=l downto 1 do writeln(c[i]);
  halt;end;





  if (s1[1]<>'-')and (s2[1]='-') then begin
    delete(s2,1,1);
    l2:=l2-1;                                          {a-(-b)=a+b}
    for i:=1 to l1 do a[i]:=ord(s1[l1+1-i])-48;
    for i:=1 to l2 do b[i]:=ord(s2[l2+1-i])-48;
    if l1>l2 then l:=l1 else l:=l2;
    for i:=1 to l do c[i]:=a[i]+b[i];
    for i:=1 to l do
    if c[i]>=10 then
      begin
        c[i]:=c[i]-10;
        c[i+1]:=c[i+1]+1;
       end;
    if c[l+1]>0 then l:=l+1;
    for i:=l downto 1 do writeln(c[i]);
    halt;end;



  if (s1[1]='-')and (s2[1]='-') then begin           {-a-(-b)=b-a}
    delete(s1,1,1);l1:=l1-1;
    delete(s2,1,1);l2:=l2-1;
    for i:=1 to l1 do a[i]:=ord(s1[l1+1-i])-48;
    for i:=1 to l2 do b[i]:=ord(s2[l2+1-i])-48;
    if l1>l2 then l:=l1 else l:=l2;
  x:=true;
  if (l1<l2)or((l1=l2) and (s1<s2)) then begin d:=a;a:=b;b:=d;x:=false; end;
  for i:=1 to l do begin
    if a[i]<b[i] then begin
      a[i+1]:=a[i+1]-1;
      a[i]:=a[i]+10;
      end;
    c[i]:=a[i]-b[i];
    end;
   f:=true;
   t:=l+1;
   repeat
    if c[t]<>0 then f:=false else
    t:=t-1;
    until (f=false) or (t=1);
   l:=t;
   if x=true then write('-',c[l])
     else write(c[l]);
   for i:=l-1 downto 1 do writeln(c[i]);
   halt;
  end;


 for i:=1 to l1 do a[i]:=ord(s1[l1+1-i])-48;         {a-b}
  for i:=1 to l2 do b[i]:=ord(s2[l2+1-i])-48;
  if l1>l2 then l:=l1 else l:=l2;
  x:=true;
  if (l1<l2)or((l1=l2) and (s1<s2)) then begin d:=a;a:=b;b:=d;x:=false; end;
  for i:=1 to l do begin
    if a[i]<b[i] then begin
      a[i+1]:=a[i+1]-1;
      a[i]:=a[i]+10;
      end;
    c[i]:=a[i]-b[i];
    end;
 f:=true;
  t:=l+1;
  repeat
    if c[t]<>0 then f:=false else
    t:=t-1;
    until (f=false) or (t=1);
  l:=t;
  if x=false then write('-',c[l])
    else write(c[l]);
  for i:=l-1 downto 1 do writeln(c[i]);
  end.