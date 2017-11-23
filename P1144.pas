const
  maxn=50;
var
  a_max,a_min,m,n,i:longint;
  t_max,t_min,o_max,o_min,sum,data:array[0..maxn] of longint;
procedure dp;
var
  c,i,j,k,max,min:longint;

begin
  sum:=data;
  for i:=2 to n do sum[i]:=sum[i]+sum[i-1];
  for i:=1 to n do
  begin
    c:=((sum[i] mod 10)+10) mod 10;
    o_max[i]:=c;
    o_min[i]:=c;
end;
for i:=2 to m do
  begin
    t_max:=o_max;
    t_min:=o_min;
    for j:=i to n do
    begin
      max:=-maxlongint;
      min:=maxlongint;								
      for k:=i-1 to j-1 do
      begin
        C:=((sum[j]- sum[k])mod 10 +10) mod 10;
        if t_max[k]*C >max then max:=t_max[k]*C;
        if t_min[k]*C <min then min:=t_min[k]*C;
      end;
      o_max[j]:=max;
      o_min[j]:=min;
    end;
  end;
  if o_max[n]>a_max then a_max:=o_max[n];
  if o_min[n]<a_min then a_min:=o_min[n];
end;
procedure doit;
var
  i,j,t:longint;
begin
  for i:=1 to n do
  begin
    t:=data[1];
    for j:=1 to n-1 do data[j]:=data[j+1];
    data[n]:=t;
    dp;
  end;
end;
begin
  read(n,m);
  for i:=1 to n do read(data[i]);
  a_max:=-maxlongint;
  a_min:=maxlongint;
  doit;
  writeln(a_min);
  writeln(a_max);
end.