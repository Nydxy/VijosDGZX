var heap:array[1..24000] of int64;          //������
    i,n,tot:longint;          //iΪ��������totΪ�ѵĴ�С
    j,k:int64;          //j,k�ֱ�洢ǰһ�������ȡ������Сֵ����������

function getmin():longint;          //ȡ�����е���СԪ��
var min,temp:int64; fa,son:longint;          //fa��sonΪ���ڵ������±꣬temp���ڽ�����min��ȡ��Сֵ
begin
  min:=heap[1];          //�Ѹ���Ԫ�ؾ�����С��Ԫ��
  heap[1]:=heap[tot];          //�Ѷ�����Ԫ�ص�������һ��
  tot:=tot-1;          //ȡ����һ��Ԫ�أ��ѵĴ�С��1
  fa:=1; son:=2*fa;          //Ԥ�����±�
  while son<=tot do
  begin
    if (son<tot) and (heap[son]>heap[son+1]) then son:=son+1;          //������������ӣ�ȡ�����������н�С��һ��
    if heap[fa]>heap[son] then          //������ױȺ��Ӵ�����Ҫ����
    begin
      temp:=heap[fa];
      heap[fa]:=heap[son];
      heap[son]:=temp;          //����
      fa:=son; son:=fa*2;          //�����жϵ�ǰԪ���Ƿ����
    end
    else son:=tot+1;          //������Ͼ�����ѭ��
  end;
  getmin:=min;
end;

procedure put(key:int64);          //�ڶ��м����µ�Ԫ��
var fa,son:longint; temp:int64;          //fa��sonΪ���ڵ������±꣬temp���ڽ���
begin
  tot:=tot+1; heap[tot]:=key;          //�ڶ�β�����µ�Ԫ��
  son:=tot; fa:=son div 2;          //Ԥ�����±�
  while fa>0 do
    if heap[fa]>heap[son] then          //������ױȺ��Ӵ�����Ҫ����
    begin
      temp:=heap[fa];
      heap[fa]:=heap[son];
      heap[son]:=temp;          //����Ԫ��
      son:=fa; fa:=fa div 2;          //�����жϵ�ǰԪ��
    end
    else fa:=0;          //������Ͼ�����ѭ��
end;

begin
   readln(n);          //����n
  fillchar(heap,sizeof(heap),0);
  heap[1]:=1; tot:=1;          //Ԥ���������
  i:=0;j:=0; k:=0;     //�ظ�Ԫ����6�������ȥ��ȡ����ʱ�ж�ǰ�������Ƿ�һ����һ����������
  while i<n do
  begin
    j:=k;          //��ǰһ��ȡ������Сֵ������
    k:=getmin();          //ȡ��������С��Ԫ��
    if k<>j then          //�������Ԫ�ز�ͬ����Ҫ�����µ�Ԫ�أ�����ǰ����2��3��5��7�����Ѿ��ڶ���
    begin
      i:=i+1;          //ȡ���˲�ͬ��������������1
      put(k*2); put(k*3);
      put(k*5); put(k*7);          //�����µ�Ԫ��
    end;
  end;
  writeln(k);          //���
  end.