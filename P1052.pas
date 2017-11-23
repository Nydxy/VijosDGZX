var s:array[1..17]of longint;
    i,j,n,count,top,num:longint;
procedure push;
begin
  inc(top);
  s[top]:=num;
  inc(num);
end;
procedure pop;
begin
  s[top]:=0;
  dec(top);
end;
procedure done;
var i,k:longint;
begin
  if (top=0)and(num=n+1) then inc(count)
      else
      for i:=1 to 2 do
        begin
          if (i=1)and(num<n+1) then begin push;done;dec(top);dec(num);end;
          if (i=2)and(top>0) then begin k:=s[top];pop;done;inc(top);s[top]:=k;end;

        end;
end;
begin
  readln(n);
  top:=0;
  num:=1;
  done;
  writeln(count);
end.