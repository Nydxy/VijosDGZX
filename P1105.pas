program shit(input,output);
  var a,b,i,j,s:longint;
      l,r:longint;
   begin
   s:=0;
    read(l,r);
    for i:=l to r do
    begin
     a:=i;
     repeat

      if ((a mod 10) / 2)=1 then s:=s+1;
      a:=a div 10;
      until a div 10=0;
      if a=2 then s:=s+1;
      end;
      writeLN(s);
      end.