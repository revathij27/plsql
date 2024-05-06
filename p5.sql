declare
n number;
i number;
fact number;
begin
n:=&n;
i:=n;
fact:=1;
for i
in 1 .. n
loop
fact:=fact*i;
end loop;
dbms_output.put_line('Factorial of ' || n || ' is ' || fact);
end;
/ 
