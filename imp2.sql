declare
num int;
temp int;
rev int;
begin
num:=&num;
rev:=0;
while num!=0
loop
temp:=mod(num,10);
rev:=(rev*10)+temp;
num:=floor(num/10);
end loop;
dbms_output.put_line('Reverse is '|| rev);
end;
/