const
  dx:array[1..8] of integer=(2,1,-1,-2,-2,-1,1,2);
  dy:array[1..8] of integer=(1,2,2,1,-1,-2,-2,-1);
var
  f:array[0..20,0..20] of longint;
  g:array[-2..22,-2..22] of boolean;
  i,j,n,m,x,y:integer;
begin
  readln(n,m,x,y);
  fillchar(g,sizeof(g),true);
  g[x,y]:=false;
  for i:=1 to 8 do g[x+dx[i],y+dy[i]]:=false;
  if g[0,0] then f[0,0]:=1;
  for j:=1 to m do
    if g[0,j] then f[0,j]:=f[0,j-1];
  for i:=1 to n do
    if g[i,0] then f[i,0]:=f[i-1,0];
  for i:=1 to n do
    for j:=1 to m do
      if g[i,j] then f[i,j]:=f[i-1,j]+f[i,j-1];
  writeln(f[n,m]);
end.