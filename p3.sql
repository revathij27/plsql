declare
n number;
begin
n:=&n;
if (mod(n,2)=0) then
dbms_output.put_line( n || ' is even number');
else
dbms_output.put_line( n || ' is odd number');
end if;
end;
/