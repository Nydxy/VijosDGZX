Var i,j,k,d:longint;
    a:Array [1..20000]of longint;
begin
  readln(k);
  for i:=1 to 20000 do
  begin
    j:=1;
    d:=0;
    while j*j<i do begin if i mod j=0 then inc(d); inc(j); end;
    if j*j=i then a[i]:=2*d+1
    else a[i]:=2*d;
    if a[i]=k then begin writeln(i); halt; end;
  end;
  writeln('NO SOLUTION');
end.