PROGRAM Maximum(input,output);
CONST maxn=40;
      maxm=250;
VAR n,k,i,j,r:byte;
    s:STRING[maxn];
    tmp,ans:STRING[maxm];
    f:ARRAY[1..maxn,boolean] OF STRING[maxm];
    a,b,c:ARRAY[1..maxn] OF byte;
FUNCTION Mul(s1,s2:STRING[maxm]):STRING[maxm];
VAR l1,l2,l,i,j:byte;
BEGIN
  fillchar(a,sizeof(a),0);
  fillchar(b,sizeof(b),0);
  fillchar(c,sizeof(c),0);
  l1:=length(s1); l2:=length(s2);
  FOR i:=1 TO l1 DO a[i]:=ord(s1[l1+1-i])-48;
  FOR i:=1 TO l2 DO b[i]:=ord(s2[l2+1-i])-48;
  FOR j:=1 TO l2 DO
    FOR i:=1 TO l1 DO BEGIN
      inc(c[i+j-1],a[i]*b[j]);
      IF c[i+j-1]>9 THEN BEGIN
        inc(c[i+j],c[i+j-1] DIV 10);
        c[i+j-1]:=c[i+j-1] MOD 10
      END;
    END;
  l:=l1+l2; WHILE (l>0) AND (c[l]=0) DO dec(l);
  IF l=0 THEN l:=1;
  Mul:='';
  FOR i:=l DOWNTO 1 DO
    Mul:=Mul+chr(c[i]+48)
END;
FUNCTION Greater(s1,s2:STRING[maxm]):boolean;
VAR l1,l2,k:byte;
BEGIN
  l1:=length(s1); l2:=length(s2);
  IF l1>l2 THEN EXIT(TRUE);
  IF l1<l2 THEN EXIT(FALSE);
  k:=1;
  WHILE s1[k]=s2[k] DO inc(k);
  IF s1[k]>s2[k] THEN EXIT(TRUE) ELSE EXIT(FALSE)
END;
BEGIN
  
  readln(n,k);
  readln(s);
  FOR i:=2 TO n DO BEGIN
    f[i,TRUE]:='0';
    FOR j:=1 TO i-1 DO BEGIN
      tmp:=Mul(copy(s,1,j),copy(s,j+1,i-j));
      IF Greater(tmp,f[i,TRUE]) THEN f[i,TRUE]:=tmp
    END;
  END;
  FOR r:=2 TO k DO
    FOR i:=r+1 TO n DO BEGIN
      f[i,odd(r)]:='0';
      FOR j:=r TO i-1 DO BEGIN
        tmp:=Mul(f[j,NOT odd(r)],copy(s,j+1,i-j));
        IF Greater(tmp,f[i,odd(r)]) THEN f[i,odd(r)]:=tmp
      END
    END;
  writeln(f[n,odd(k)]);

END.