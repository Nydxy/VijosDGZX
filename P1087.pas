var heap:array[1..24000] of int64;          //堆数组
    i,n,tot:longint;          //i为计数器，tot为堆的大小
    j,k:int64;          //j,k分别存储前一次与这次取出的最小值，用于判重

function getmin():longint;          //取出堆中的最小元素
var min,temp:int64; fa,son:longint;          //fa和son为用于调整的下标，temp用于交换，min存取最小值
begin
  min:=heap[1];          //堆根的元素就是最小的元素
  heap[1]:=heap[tot];          //把堆最后的元素调整到第一个
  tot:=tot-1;          //取出了一个元素，堆的大小减1
  fa:=1; son:=2*fa;          //预处理下标
  while son<=tot do
  begin
    if (son<tot) and (heap[son]>heap[son+1]) then son:=son+1;          //如果有两个孩子，取出两个孩子中较小的一个
    if heap[fa]>heap[son] then          //如果父亲比孩子大，则需要交换
    begin
      temp:=heap[fa];
      heap[fa]:=heap[son];
      heap[son]:=temp;          //交换
      fa:=son; son:=fa*2;          //继续判断当前元素是否符合
    end
    else son:=tot+1;          //如果符合就跳出循环
  end;
  getmin:=min;
end;

procedure put(key:int64);          //在堆中加入新的元素
var fa,son:longint; temp:int64;          //fa和son为用于调整的下标，temp用于交换
begin
  tot:=tot+1; heap[tot]:=key;          //在堆尾加入新的元素
  son:=tot; fa:=son div 2;          //预处理下标
  while fa>0 do
    if heap[fa]>heap[son] then          //如果父亲比孩子大，则需要交换
    begin
      temp:=heap[fa];
      heap[fa]:=heap[son];
      heap[son]:=temp;          //交换元素
      son:=fa; fa:=fa div 2;          //继续判断当前元素
    end
    else fa:=0;          //如果符合就跳出循环
end;

begin
   readln(n);          //读入n
  fillchar(heap,sizeof(heap),0);
  heap[1]:=1; tot:=1;          //预处理堆数组
  i:=0;j:=0; k:=0;     //重复元素如6照样存进去，取出来时判断前后两次是否一样，一样不做处理
  while i<n do
  begin
    j:=k;          //把前一次取出的最小值存下来
    k:=getmin();          //取出堆中最小的元素
    if k<>j then          //如果两次元素不同，则要加入新的元素，否则当前数的2、3、5、7倍数已经在堆中
    begin
      i:=i+1;          //取出了不同的数，计数器加1
      put(k*2); put(k*3);
      put(k*5); put(k*7);          //加入新的元素
    end;
  end;
  writeln(k);          //输出
  end.