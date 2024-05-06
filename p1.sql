declare
n number;
i number;
fact number;
begin
n:=&n;
i:=n;
fact:=1;
while(i>0)
loop
fact:=fact*i;
i:=i-1;
end loop;
dbms_output.put_line('Factorial of ' || n || ' is ' || fact);
end;
/ 
