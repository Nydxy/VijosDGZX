program ex(input,output);
var ch:char;
a,b:real;
begin
readln(a,b);
readln(ch);
if ch='+' then writeln(a:12:4,ch,b:12:4,'=',a+b:12:4);
if ch='-' then writeln(a:12:4,ch,b:12:4,'=',a-b:12:4);
if ch='*' then writeln(a:12:4,ch,b:12:4,'=',a*b:12:4);
if ch='/' then
begin if b=0 then writeln('ERROR')
else writeln(a:12:4,ch,b:12:4,'=',a/b:12:4)
end;
end.