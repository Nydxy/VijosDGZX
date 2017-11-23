program ljz(input,output);
var a:char;
begin
read(a);
case a of
'A','a': writeln('1');
'B','b': writeln('2');
'C','c': writeln('3');
'D','d': writeln('4');
else writeln('5');
end;
end.