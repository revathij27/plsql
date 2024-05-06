declare
n1 number;
n2 number;
s number;
begin
n1:=&n1;
n2:=&n2;
s:=n1+n2;
dbms_output.put_line('Sum of ' || n1 || ' and ' || n2 || ' is: '|| s);
end;
/