const max=100;
var a,b:array[1..max] of int64;
    n:string;
    i,j,k:longint;
    m,l,s,t,h:int64;
    f:boolean;
 begin
 m:=1;
  f:=true;
   read(n);



   l:=length(n);

   for i:=1 to max do begin a[i]:=0;end;
   for i:=1 to l do
     a[i]:=ord(n[l+1-i])-48;
     for i:=l downto 1 do write(a[i]);
     writeln;
     if (l=1) then halt


     else

     repeat
     h:=1;

     b[1]:=1;
     for i:=1 to l do
       begin
        for j:=1 to h do
        if a[i]<>0 then
          b[j]:=b[j]*a[i];

          for j:=1 to h do
           if b[j]>=0 then begin
                           b[j+1]:=b[j+1]+b[j] div 10;
                           b[j]:=b[j] mod 10;
                           end;
        while b[h+1]>0 do
          begin
            h:=h+1;
           b[h+1]:=b[h] div 10;
            b[h]:=b[h] mod 10;
          end;
        if b[h+1]>0 then h:=h+1;
       end;

       for i:=h downto 1 do write(b[i]);
       writeln;

       a:=b;
       for i:=1 to max do b[i]:=0;

       if (h=1) then f:=false;
       until f=false;







    end.