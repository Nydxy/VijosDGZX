var st1,st2,post:string;
   procedure solve(pre,mid:string);
     var i:integer;
     begin
       if (pre='') or (mid='') then exit;
       i:=pos(pre[1],mid);
       solve(copy(pre,2,i-1),copy(mid,1,i-1));
       solve(copy(pre,i+1,length(pre)-i),copy(mid,i+1,length(mid)-i));
       post:=post+pre[1];
       end;
       begin
       readln(st1);readln(st2);
       solve(st1,st2);
       writeln(post);
       end.