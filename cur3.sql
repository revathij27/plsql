declare
cursor cur1 is select empno,empname,salary from employee;
e_employee cur1%rowtype;
begin
dbms_output.put_line('Employee Details');
open cur1;
fetch cur1 into e_employee;
while cur1%found 
loop
	dbms_output.put_line('EMPNO ' || e_employee.empno);
	dbms_output.put_line('EMPNAME ' || e_employee.empname);
	dbms_output.put_line('SALARY ' || e_employee.salary);
	dbms_output.put_line('*********************************************');
	fetch cur1 into e_employee;
end loop;
close cur1;
end;
/
	