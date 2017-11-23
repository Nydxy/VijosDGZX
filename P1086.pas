const max=100;
var g:array[1..max,1..max] of longint;
    s:array[1..max] of boolean;
    i,j,k,n,min,gweight,endv:longint;
begin
  readln(n);
  for i:=1 to n do
    for j:=1 to n do read(g[i,j]);
    for i:=1 to n do s[i]:=false;
    s[1]:=true;
    gweight:=0;
    for i:= 1 to n-1 do
      begin
        min:=maxint;
        for j:=1 to n do
          if s[j] then
            for k:=1 to n do
              if(g[j,k]>0)and(not s[k]) and(g[j,k]<min) then
                begin min:=g[j,k];endv:=k;end;
        s[endv]:=true;
        gweight:=gweight+min;
        end;
    writeln(gweight);
    end.