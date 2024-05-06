declare
accno varchar2(5);
bal number;
begin
accno:=&accno;
select balance into bal from Account where ano=accno;
if((bal-2000)>500) then
bal:=bal-2000;
update Account set balance=bal where ano=accno;
dbms_output.put_line('Amount is debited Successfully');
else
dbms_output.put_line('Transaction not possible');
end if;
end;
/
